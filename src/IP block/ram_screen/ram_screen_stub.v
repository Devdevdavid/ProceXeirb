// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Mar  6 22:12:16 2019
// Host        : DESKTOP-6RO2CF2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/MEGAsync/SEE09-2/S8/Proco 8bit/repo/ProceXeirb/src/IP
//               block/ram_screen/ram_screen_stub.v}
// Design      : ram_screen
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module ram_screen(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[18:0],dina[3:0],douta[3:0]" */;
  input clka;
  input [0:0]wea;
  input [18:0]addra;
  input [3:0]dina;
  output [3:0]douta;
endmodule
