// =============================================================================
//                           COPYRIGHT NOTICE
// Copyright 2000-2007 (c) Lattice Semiconductor Corporation
// ALL RIGHTS RESERVED
// This confidential and proprietary software may be used only as authorised by
// a licensing agreement from Lattice Semiconductor Corporation.
// The entire notice above must be reproduced on all authorized copies and
// copies may only be made to the extent permitted by a licensing agreement from
// Lattice Semiconductor Corporation.
//
// Lattice Semiconductor Corporation        TEL : 1-800-Lattice (USA and Canada)
// 5555 NE Moore Court                      408-826-6000 (other locations)
// Hillsboro, OR 97124                      web  : http://www.latticesemi.com/
// U.S.A                                    email: techsupport@latticesemi.com
// =============================================================================
//                FILE DETAILS
// Project          : FIR
// File             : fir_tb.v
// Title            : top level testbench for the FIR.
// Description      : 
// =============================================================================
//                REVISION HISTORY
// Version          : 1.0
// Author(s)        : 
// Mod. Date        : June 05, 2007
// Changes Made     : Initial Creation
// -----------------------------------------------------------------------------

//====================timescale define
`ifdef TIMING_SIM
   `timescale 1ns/1ps
`else
   `timescale 1ns/100ps
`endif


module rcosfilter_m_tb;
// =============================================================================
// parameters define
// =============================================================================
`include "params.v"

localparam TAPWIDTH     = clog2(NUM_TAP-1);
localparam IFWIDTH      = clog2(IFACTOR);
localparam DFWIDTH      = clog2(DFACTOR);
localparam CHWIDTH      = NUM_CHAN>1 ? clog2(NUM_CHAN-1):1;
localparam NUM_VARY     = (VAR_INTERP==1 || VAR_DECIM==1 || VAR_COEFF==1) ? 3 : 1;
localparam VWIDTH       = (NUM_VARY==1) ? 1 : clog2(NUM_VARY - 1);
localparam TIWIDTH      = clog2(TOTAL_INPUT)+1;
localparam TOWIDTH      = clog2(TOTAL_OUTPUT)+1;
localparam HC           = 10; //half clock period
localparam RUNONETIME   = (TOTAL_INPUT*NUM_CHAN*IFACTOR*(NUM_TAP+3));
localparam WAITONETIME  = (NUM_TAP+5)*NUM_CHAN*IFACTOR;
localparam SYMMETRIC    = (CSTRUCTURE == "Symmetric") ? 1 : 0;
localparam FULL_PARAL   = (NUM_CHAN==1) && 
                          (((SYMMETRIC==0) && (NUM_TAP==NUM_M)) || ((SYMMETRIC==1) && ((NUM_TAP+1)/2)==NUM_M));
localparam POLYPHASE    = ((FULL_PARAL==1) || (HALFBAND==1)) ? 0 : 
                           (((IFACTOR==1 && DFACTOR>1) || (IFACTOR>1 && DFACTOR==1)) 
                           && (VAR_INTERP== 0) && (VAR_DECIM == 0));
localparam POLYSYM      = (SYMMETRIC==1) && (POLYPHASE==1) && (IFACTOR>1 && DFACTOR==1) && (HALFBAND==0);
localparam C_WIDTH      =  CWIDTH;
localparam IFACTOR0     = (VAR_INTERP==0) ? IFACTOR : NUM_TAP/8>256 ? 256:NUM_TAP/8;
localparam IFACTOR1     = (VAR_INTERP==0) ? IFACTOR : ((IFACTOR0<1) ? 1 : (IFACTOR0-1));
localparam IFACTOR2     = (VAR_INTERP==0) ? IFACTOR : ((IFACTOR0<2) ? 1 : (IFACTOR0-2));
localparam DFACTOR0     = (VAR_DECIM ==0) ? DFACTOR : NUM_TAP/8>256 ? 256:NUM_TAP/8;
localparam DFACTOR1     = (VAR_DECIM ==0) ? DFACTOR : ((DFACTOR0<1) ? 1 : (DFACTOR0-1));
localparam DFACTOR2     = (VAR_DECIM ==0) ? DFACTOR : ((DFACTOR0<2) ? 1 : (DFACTOR0-2));
localparam NUM_TAPS     = (HALFBAND==1) ? ((NUM_TAP+5)/4) : ((SYMMETRIC==1) ? ((NUM_TAP+1)/2) : NUM_TAP);
localparam TOTAL_COEFFS =  TOTAL_COEFF;
// =============================================================================
// internal signal define
// =============================================================================
reg                  rstn;
reg                  clk;
reg                  ce;
reg                  sr;
reg  [IFWIDTH-1:0]   ifactor;
reg  [DFWIDTH-1:0]   dfactor;
reg                  factorset;
reg                  coeffset;
reg                  coeffwe;
reg  [C_WIDTH-1:0]   coeffin;

reg                  ibstart;
reg                  inpvalid;
reg  [DINWIDTH-1:0]  din;

wire                 rfi;
wire [DOUTWIDTH-1:0] dout;
wire                 obstart;
wire                 outvalid;


// =============================================================================
// Core top level instantiations
// =============================================================================
rcosfilter_m_top u1_rcosfilter_m_top(
               .rstn(rstn),
               .clk(clk),
               .inpvalid(inpvalid),
               .din(din),
               
               .rfi(rfi),
               .outvalid(outvalid),
               .dout(dout));

function [31:0] clog2;
   input [31:0] value;
   for (clog2=0; value>0; clog2=clog2+1) value = value>>1;
endfunction             
//memory definition
reg  [ DINWIDTH-1:0]     mem_din  [NUM_CHAN-1:0][2*TOTAL_INPUT:0];
reg  [DOUTWIDTH-1:0]     mem_dout [NUM_CHAN-1:0][TOTAL_OUTPUT:0];
reg  [  C_WIDTH-1:0]     mem_coeff[NUM_VARY-1:0][TOTAL_COEFFS-1:0];
//permute mem
reg  [ DINWIDTH-1:0]     mem_itemp[NUM_CHAN*TOTAL_INPUT -1:0];
reg  [DOUTWIDTH-1:0]     mem_otemp[NUM_CHAN*TOTAL_OUTPUT-1:0];
reg  [  C_WIDTH-1:0]     mem_ctemp[TOTAL_COEFFS-1:0];

//internal signals definition
reg  [DFWIDTH-1:0]       dfactin;
reg  [IFWIDTH-1:0]       ifactin;
reg  [CHWIDTH-1:0]       chancnt;
reg  [CHWIDTH-1:0]       chanoutcnt;
wire [CHWIDTH-1:0]       chaninw;
wire [CHWIDTH-1:0]       chanoutw;
reg  [TIWIDTH-1:0]       din_cnt [NUM_CHAN-1:0];
reg  [TOWIDTH-1:0]       dout_cnt[NUM_CHAN-1:0];
wire [DOUTWIDTH-1:0]     ref_dout;
reg  [VWIDTH-1:0]        term;
reg  [31:0]              error_cnt;
reg  [31:0]              doutv_cnt;
reg  [31:0]              vari_cnt;
reg  [31:0]              doutv_all;
reg                      comp_error;
reg                      complete;
reg  [31:0]              vari_rst1;
reg  [31:0]              vari_rst2;

reg                      rfi_en;
reg                      run_en;

always @(posedge clk or negedge rstn)
begin
   if (rstn == 1'b0) 
      chancnt <= {CHWIDTH{1'b0}};
   else if (NUM_CHAN==1) 
      chancnt <= {CHWIDTH{1'b0}};
   else if (ce) begin
      if (sr == 1'b1) 
         chancnt <= {CHWIDTH{1'b0}};
      else if (rfi_en && run_en && rfi) begin
         if (chancnt == (NUM_CHAN-1)) 
            chancnt <= {CHWIDTH{1'b0}};
         else
            chancnt <= chancnt + 1;
      end
   end
end
always @(posedge clk or negedge rstn)
begin
   if (rstn == 1'b0) 
      chanoutcnt <= {CHWIDTH{1'b0}};
   else if (NUM_CHAN==1) 
      chanoutcnt <= {CHWIDTH{1'b0}};
   else if (ce) begin
      if (sr == 1'b1) 
         chanoutcnt <= {CHWIDTH{1'b0}};
      else if (outvalid) begin
         if (chanoutcnt == (NUM_CHAN-1)) 
            chanoutcnt <= {CHWIDTH{1'b0}};
         else
            chanoutcnt <= chanoutcnt + 1;
      end
   end
end
reg obst_error;
always @(posedge clk or negedge rstn)
begin
   if (rstn == 1'b0) 
      obst_error <= 1'b0;
   else if (NUM_CHAN==1) 
      obst_error <= 1'b0;
   else if (ce) begin
      if(outvalid) begin
         if(chanoutcnt==0) begin
            if(obstart==1'b1) 
               obst_error <= obst_error;
            else
               obst_error <= 1'b1;
         end else if(obstart==1'b1) 
            obst_error <= 1'b1;
      end else if(obstart==1'b1) 
         obst_error <= 1'b1;
   end
end

assign chaninw  = (NUM_CHAN==1) ? 0 : chancnt;
assign chanoutw = (NUM_CHAN==1) ? 0 : chanoutcnt;
assign ref_dout =  mem_dout[chanoutw][dout_cnt[chanoutw]];
always @(posedge clk or negedge rstn)
begin
   if (rstn == 1'b0)
      doutv_cnt <= {31{1'b0}};
   else if (ce == 1'b1) begin
      if(outvalid == 1'b1)
         doutv_cnt <= doutv_cnt + 1;
   end
end
always @(posedge clk or negedge rstn)
begin
   if (rstn == 1'b0)
      vari_cnt <= {31{1'b0}};
   else if (ce == 1'b1) begin
      if(sr == 1'b1)
         vari_cnt <= {31{1'b0}};
      else if((dout_cnt[NUM_CHAN-1]==vari_rst1-2) || (dout_cnt[NUM_CHAN-1]==vari_rst2-2))
         vari_cnt <= {31{1'b0}};
      else if(outvalid == 1'b1)
         vari_cnt <= vari_cnt + 1;
   end
end

//-----clock generator
initial begin
   clk = 1'b0;
   forever #HC clk = ~clk;
end
//stimulus
initial begin
   input_init;
   get_data;
   async_reset(2);
   sync_reset(2);
   if((VAR_INTERP==1) || (VAR_DECIM==1))begin
      set_factor;
   end
   if(VAR_COEFF==1) begin
      input_coeff(0,TOTAL_COEFFS);
      set_coeff;
   end
   fork
      begin
         input_data(0,TOTAL_INPUT);
         delay(WAITONETIME+20);
      end
      if(VAR_COEFF==1) begin
         update_coeff;
      end
      if((VAR_INTERP == 1) || (VAR_DECIM == 1)) begin
         update_factor;
      end
   join
   complete = 1'b1;
end
reg cep;
initial begin
   delay(10);
   while ((complete == 0) && (din_cnt[0] < TOTAL_INPUT-10)) begin
      # 3;
      if((inpvalid==1'b0) && (outvalid==1'b0))
      ce = 1'b1;
      delay(10);
      randx(3);
      # 3;
      ce = 1'b1;
      delay(10);
      randx(3);
   end
end
//monitor
reg varicomp_en;
reg compare_en;
always @(posedge clk or negedge rstn)
begin
   if (rstn == 1'b0)
      varicomp_en <= 1'b1;
   else if(ce) begin
      if(sr)
         varicomp_en <= 1'b1;
      else if (VAR_COEFF == 0)
         varicomp_en <= 1'b1;
      else if (coeffset)
         varicomp_en <= 1'b0;
      else if (vari_cnt == ifactin*NUM_CHAN*4+4)
         varicomp_en <= 1'b1;
   end
end
always @(posedge clk or negedge rstn)
begin
   if (rstn == 1'b0)
      compare_en <= 1'b0;
   else if(ce) begin
      if(sr)
         compare_en <= 1'b0;
      else if (complete==0) begin
         if(dout_cnt[NUM_CHAN-1] >= TOTAL_OUTPUT-IFACTOR-1)
            compare_en <= 1'b0;
         else if(dout_cnt[NUM_CHAN-1] == (((NUM_TAP+PADZERO)*IFACTOR + DFACTOR0 - 1)/DFACTOR0)) begin
            compare_en <= 1'b1;
         end
      end else begin
         compare_en <= 1'b0;
      end
   end
end
always @(posedge clk or negedge rstn)
begin
   if (rstn == 1'b0) begin
      comp_error <= 1'b0;
      error_cnt  <= {32{1'b0}};
   end else if(ce) begin
      if(outvalid==1'b1) begin
         if((compare_en==1'b1) && (varicomp_en==1'b1)) begin
            if(dout !== ref_dout) begin
               $display("ERROR! Actual data = %h   Expect data = %h   At time %d", dout, ref_dout, $time);
               error_cnt  <= error_cnt + 1;
               comp_error <= 1'b1;
            end else begin
               comp_error <= 1'b0;
            end
         end
         dout_cnt[chanoutw] = dout_cnt[chanoutw] + 1;
      end else begin
         comp_error <= 1'b0;
      end
   end
end
//---input initial task
task input_init;
   reg [31:0] temp;
   begin
      rstn     = 1'b0;
      ce       = 1'b1;
      sr       = 1'b0;
      clk      = 1'b0;
      inpvalid = 1'b0;
      factorset= 1'b0;
      coeffset = 1'b0;
      coeffwe  = 1'b0;
      din      = 0;
      ifactor  = 1;
      dfactor  = 1;
      coeffin  = 0;
      complete = 1'b0;
      term     = 0;
      error_cnt= 0;
      rfi_en   = 0;
      run_en   = 0;
      doutv_all= 0;
      cnt_reset;
      mem_zero;
      temp = (TOTAL_INPUT/3);
      if((HALFBAND==1) && (DFACTOR==2)) begin
         vari_rst1 = (temp-1)/DFACTOR + 1 - 1;
         vari_rst2 = (temp-1)/DFACTOR + 1 + vari_rst1;
      end else if(VAR_INTERP==1) begin
         vari_rst1 = temp*IFACTOR0;
         vari_rst2 = temp*IFACTOR1 + vari_rst1;
      end else if(VAR_DECIM==1) begin
         vari_rst1 = (temp-1)/DFACTOR0 + 1;
         vari_rst2 = (temp-1)/DFACTOR1 + 1 + vari_rst1;
      end else if(DFACTOR>1)begin
         vari_rst1 = (temp-1)/DFACTOR + 1;
         vari_rst2 = (temp-1)/DFACTOR + 1 + vari_rst1;
      end else if(IFACTOR>1)begin
         vari_rst1 = temp*IFACTOR;
         vari_rst2 = temp*IFACTOR + vari_rst1;
      end else begin
         vari_rst1 = temp;
         vari_rst2 = temp + vari_rst1;
      end
   end
endtask
reg checked;
initial begin
   checked = 0;
   wait(complete == 1) begin
      check_result;
      checked = 1;
   end
   delay(5);
   $stop;
end
initial begin
   repeat(RUNONETIME*NUM_VARY+500)
      @(posedge clk);
   # 3;
   if(checked == 0) begin
      check_result;
      $stop;
   end
end
task check_result;
   begin
      if(doutv_cnt == 0) begin
         $display("");
         $display("<><><><><><><><><><><><");
         $display("   No valid data output!");
         $display("<><><><><><><><><><><><");
         $display("");
      end else if(error_cnt == 0 && obst_error==0) begin
         if(doutv_cnt < doutv_all) begin
            $display("");
            $display("<><><><><><><>><><><><><><><><><");
            $display("  output data is insufficient!");
            $display("<><><><><><><>><><><><><><><><><");
            $display("");
         end else begin
            $display("");
            $display("=======================");
            $display("   Simulation passed!");
            $display("=======================");
            $display("");
         end
      end else begin
         $display("");
         $display("<><><><><><><><><><><><");
         $display("   Simulation failed!");
         $display("<><><><><><><><><><><><");
         $display("");
      end
   end
endtask
task cnt_reset;
   integer i;
   begin
      for(i=0;i<NUM_CHAN;i=i+1) begin
         din_cnt [i] = 0;
         dout_cnt[i] = 0;
      end
   end
endtask
task mem_zero;
   integer i,j,k;
   begin
      for(j=0;j<NUM_CHAN;j=j+1) begin
         for(k=0;k<=2*TOTAL_INPUT;k=k+1)
            mem_din[j][k] = 0;
         for(k=0;k<=TOTAL_OUTPUT;k=k+1)
            mem_dout[j][k] = 0;
      end
      for(j=0;j<NUM_VARY;j=j+1) begin
         for(k=0;k<TOTAL_COEFFS;k=k+1)
            mem_coeff[i][k] = 0;
      end
      for(i=0;i<NUM_CHAN*TOTAL_OUTPUT;i=i+1)
         mem_otemp[i] = 0;
   end
endtask
//get input data and output data
task get_data;
   integer i,j,k;
   begin
      $readmemh("stimulus.txt",mem_itemp);
      din_permute(0,TOTAL_INPUT);
      $readmemh("golden.txt",mem_otemp);
      dout_permute(0,TOTAL_OUTPUT);
      if(VAR_COEFF == 1) begin
         $readmemb("coeff0.mem",mem_ctemp);
         coeff_permute(0,TOTAL_COEFFS);
         $readmemb("coeff1.mem",mem_ctemp);
         coeff_permute(1,TOTAL_COEFFS);
         $readmemb("coeff2.mem",mem_ctemp);
         coeff_permute(2,TOTAL_COEFFS);
      end
   end
endtask
always @(posedge clk or negedge rstn)
begin
   if (rstn == 1'b0) begin
      dfactin <= DFACTOR;
      ifactin <= IFACTOR;
   end else if ((VAR_DECIM == 0) && (VAR_INTERP == 0)) begin
      dfactin <= DFACTOR;
      ifactin <= IFACTOR;
   end else if (ce == 1'b1) begin
      if (sr == 1'b1) begin
         dfactin <= DFACTOR;
         ifactin <= IFACTOR;
      end else if (factorset == 1'b1) begin
         dfactin <= dfactor;
         ifactin <= ifactor;
      end
   end
end

always @(posedge clk or negedge rstn)
begin
   if(rstn == 1'b0) begin
      din      <= {DINWIDTH{1'b0}};
      inpvalid <= 1'b0;
      ibstart  <= 1'b0;
   end else if(ce) begin
      if (sr == 1'b1) begin
         din <= {DINWIDTH{1'b0}};
         inpvalid <= 1'b0;
         if(NUM_CHAN ==1) 
            ibstart  <= 1'bz;
         else
            ibstart  <= 1'b0;
      end else if (rfi == 1'b1 && rfi_en && run_en)begin
         din      <= mem_din[chaninw][din_cnt[chaninw]];
         inpvalid <= 1'b1;
         if(NUM_CHAN ==1) 
            ibstart  <= 1'bz;
         else
            ibstart  <= (chaninw==0) ? 1'b1 : 1'b0;
         din_cnt[chaninw] <= din_cnt[chaninw] + 1;
      end else begin
         din <= {DINWIDTH{1'b0}};
         inpvalid <= 1'b0;
         if(NUM_CHAN ==1) 
            ibstart  <= 1'bz;
         else
            ibstart  <= 1'b0;
      end
   end
end
initial
begin
   while(complete == 1'b0) begin
      wait(rfi == 1'b1 && run_en == 1'b1) begin
         rfi_en = 1'b1;
         @ (posedge clk);
         # 1;
         rfi_en = 1'b0;
      end
   end
end
//input valid data task
task input_data;
   input [VWIDTH-1:0] vnum;
   input [31:0]       data_num;
   begin
      @ (posedge clk);
      # 1;
      term = vnum;
      run_en = 1'b1;
      doutv_all = (TOTAL_OUTPUT-IFACTOR-1)*NUM_CHAN;
      while(run_en == 1'b1) begin
         wait(rfi) begin
            if(dout_cnt[NUM_CHAN-1] >= TOTAL_OUTPUT-IFACTOR-1) begin
               run_en     = 1'b0;
            end
            @ (posedge clk);
         end
      end
   end
endtask 
task input_coeff;
   input [VWIDTH-1:0] vnum;
   input [31:0]       coeff_num;
   integer i;
   begin
      coeff_num = TOTAL_COEFFS;
      # 1;
      coeffwe  = 1'b1;
      for(i=0;i<coeff_num;i=i+1) begin
         wait(ce);
         coeffin = mem_coeff[vnum][i];
         @ (posedge clk);
         # 1;
      end
      coeffwe  = 1'b0;
      coeffin  = 0;
   end
endtask
task set_coeff;
   begin
      # 1;
      coeffset = 1'b1;
      @ (posedge clk);
      # 1;
      coeffset = 1'b0;
   end
endtask
task update_coeff;
   integer t3;
   integer c_oft;
   begin
      delay(2);
      t3 = (TOTAL_INPUT/3);
      c_oft = min2(t3-3,TOTAL_COEFFS);
      wait(din_cnt[NUM_CHAN-1]==t3-c_oft);
      input_coeff(1,TOTAL_COEFFS);
      wait(din_cnt[NUM_CHAN-1]==t3);
      wait(rfi);
      set_coeff;
      wait(din_cnt[NUM_CHAN-1]==2*t3-c_oft);
      input_coeff(2,TOTAL_COEFFS);
      wait(din_cnt[NUM_CHAN-1]==2*t3);
      wait(rfi);
      set_coeff;
   end
endtask
function [31:0] min2;
   input [31:0] in1,in2;
   min2 = (in1 < in2) ? in1 : in2;
endfunction
task set_factor;
   begin
      factorset= 1'b1;
      ifactor  = IFACTOR0;
      dfactor  = DFACTOR0;
      @(posedge clk);
      # 1;
      factorset= 1'b0;
      ifactor  = 1;
      dfactor  = 1;
   end
endtask
task update_factor;
   integer t3;
   begin
      delay(2);
      t3 = (TOTAL_INPUT/3);
      wait(din_cnt[NUM_CHAN-1]==t3);
      # 1;
      wait(rfi);
      factorset= 1'b1;
      ifactor  = IFACTOR1;
      dfactor  = DFACTOR1;
      @(posedge clk);
      # 1;
      factorset= 1'b0;
      ifactor  = 1;
      dfactor  = 1;
      wait(din_cnt[NUM_CHAN-1]==2*t3);
      # 1;
      wait(rfi);
      factorset= 1'b1;
      ifactor  = IFACTOR2;
      dfactor  = DFACTOR2;
      @(posedge clk);
      # 1;
      factorset= 1'b0;
      ifactor  = 1;
      dfactor  = 1;
   end
endtask
//data input permute task
task din_permute;
   input [VWIDTH-1:0] vnum;
   input [31:0]       tinput;
   integer i,j;
   begin
      for(i=0;i<NUM_CHAN;i=i+1)
         for(j=0;j<tinput;j=j+1)
            mem_din[i][j] = mem_itemp[i*tinput + j];
   end
endtask
//data input permute task
task dout_permute;
   input [VWIDTH-1:0] vnum;
   input [31:0]       toutput;
   integer i,j;
   begin
      for(i=0;i<NUM_CHAN;i=i+1)
         for(j=0;j<toutput;j=j+1)
            mem_dout[i][j] = mem_otemp[i*toutput + j];
   end
endtask
//data input permute task
task coeff_permute;
   input [VWIDTH-1:0] vnum;
   input [31:0]       tcoeff;
   integer i;
   begin
      for(i=0;i<tcoeff;i=i+1)
         mem_coeff[vnum][i] = mem_ctemp[i];
   end
endtask
//---async reset task
task async_reset;
   input [15:0] dc;
   begin
      # 1 rstn = 1'b0;
      repeat (dc) @ (posedge clk);
      #HC rstn = 1'b1;
   end
endtask
//---sync reset task
task sync_reset;
   input [15:0] dc;
   begin
      # 1 sr = 1'b1;
      repeat (dc) @ (posedge clk);
      # 1 sr = 1'b0;
   end
endtask
//---delay task
task delay;
   input [15:0] dc;
   begin
      repeat (dc) @ (posedge clk);
   end
endtask
//---random delay task
task randx;
   input [15:0] dc;
   begin
//      repeat({$random} % dc) @ (posedge clk);
   end
endtask

GSR GSR_INST(.GSR(rstn));
PUR PUR_INST(.PUR(1'b1));
endmodule
