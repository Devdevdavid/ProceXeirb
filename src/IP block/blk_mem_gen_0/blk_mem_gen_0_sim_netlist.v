// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu May 23 18:28:56 2019
// Host        : DESKTOP-6RO2CF2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {D:/MEGAsync/SEE09-2/S8/Proco 8bit/repo/ProceXeirb/src/IP
//               block/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v}
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [24:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [24:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [24:0]dina;
  wire [24:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [24:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [24:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "6" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.634299 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8192" *) 
  (* C_READ_DEPTH_B = "8192" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "25" *) 
  (* C_READ_WIDTH_B = "25" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "8192" *) 
  (* C_WRITE_DEPTH_B = "8192" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "25" *) 
  (* C_WRITE_WIDTH_B = "25" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[24:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[24:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module blk_mem_gen_0_bindec
   (ena_array,
    addra,
    ena);
  output [1:0]ena_array;
  input [0:0]addra;
  input ena;

  wire [0:0]addra;
  wire ena;
  wire [1:0]ena_array;

  LUT2 #(
    .INIT(4'h8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra),
        .I1(ena),
        .O(ena_array[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(ena),
        .I1(addra),
        .O(ena_array[0]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (douta,
    addra,
    ena,
    clka,
    dina,
    wea);
  output [24:0]douta;
  input [12:0]addra;
  input ena;
  input clka;
  input [24:0]dina;
  input [0:0]wea;

  wire [12:0]addra;
  wire clka;
  wire [24:0]dina;
  wire [24:0]douta;
  wire [49:0]douta_array;
  wire ena;
  wire [1:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[12]),
        .ena(ena),
        .ena_array(ena_array));
  blk_mem_gen_0_blk_mem_gen_mux \has_mux_a.A 
       (.addra(addra[12]),
        .clka(clka),
        .douta(douta),
        .douta_array(douta_array),
        .ena(ena));
  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[8:0]),
        .douta_array(douta_array[8:0]),
        .ena_array(ena_array[0]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[8:0]),
        .douta_array(douta_array[33:25]),
        .ena_array(ena_array[1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[17:9]),
        .douta_array(douta_array[17:9]),
        .ena_array(ena_array[0]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[17:9]),
        .douta_array(douta_array[42:34]),
        .ena_array(ena_array[1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[24:18]),
        .douta_array(douta_array[24:18]),
        .ena_array(ena_array[0]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[24:18]),
        .douta_array(douta_array[49:43]),
        .ena_array(ena_array[1]),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_0_blk_mem_gen_mux
   (douta,
    douta_array,
    addra,
    ena,
    clka);
  output [24:0]douta;
  input [49:0]douta_array;
  input [0:0]addra;
  input ena;
  input clka;

  wire [0:0]addra;
  wire clka;
  wire [24:0]douta;
  wire [49:0]douta_array;
  wire ena;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ;
  wire sel_pipe;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[0]_INST_0 
       (.I0(douta_array[25]),
        .I1(sel_pipe),
        .I2(douta_array[0]),
        .O(douta[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[10]_INST_0 
       (.I0(douta_array[35]),
        .I1(sel_pipe),
        .I2(douta_array[10]),
        .O(douta[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[11]_INST_0 
       (.I0(douta_array[36]),
        .I1(sel_pipe),
        .I2(douta_array[11]),
        .O(douta[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[12]_INST_0 
       (.I0(douta_array[37]),
        .I1(sel_pipe),
        .I2(douta_array[12]),
        .O(douta[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[13]_INST_0 
       (.I0(douta_array[38]),
        .I1(sel_pipe),
        .I2(douta_array[13]),
        .O(douta[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[14]_INST_0 
       (.I0(douta_array[39]),
        .I1(sel_pipe),
        .I2(douta_array[14]),
        .O(douta[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[15]_INST_0 
       (.I0(douta_array[40]),
        .I1(sel_pipe),
        .I2(douta_array[15]),
        .O(douta[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[16]_INST_0 
       (.I0(douta_array[41]),
        .I1(sel_pipe),
        .I2(douta_array[16]),
        .O(douta[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[17]_INST_0 
       (.I0(douta_array[42]),
        .I1(sel_pipe),
        .I2(douta_array[17]),
        .O(douta[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[18]_INST_0 
       (.I0(douta_array[43]),
        .I1(sel_pipe),
        .I2(douta_array[18]),
        .O(douta[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[19]_INST_0 
       (.I0(douta_array[44]),
        .I1(sel_pipe),
        .I2(douta_array[19]),
        .O(douta[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[1]_INST_0 
       (.I0(douta_array[26]),
        .I1(sel_pipe),
        .I2(douta_array[1]),
        .O(douta[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[20]_INST_0 
       (.I0(douta_array[45]),
        .I1(sel_pipe),
        .I2(douta_array[20]),
        .O(douta[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[21]_INST_0 
       (.I0(douta_array[46]),
        .I1(sel_pipe),
        .I2(douta_array[21]),
        .O(douta[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[22]_INST_0 
       (.I0(douta_array[47]),
        .I1(sel_pipe),
        .I2(douta_array[22]),
        .O(douta[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[23]_INST_0 
       (.I0(douta_array[48]),
        .I1(sel_pipe),
        .I2(douta_array[23]),
        .O(douta[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[24]_INST_0 
       (.I0(douta_array[49]),
        .I1(sel_pipe),
        .I2(douta_array[24]),
        .O(douta[24]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[2]_INST_0 
       (.I0(douta_array[27]),
        .I1(sel_pipe),
        .I2(douta_array[2]),
        .O(douta[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[3]_INST_0 
       (.I0(douta_array[28]),
        .I1(sel_pipe),
        .I2(douta_array[3]),
        .O(douta[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[4]_INST_0 
       (.I0(douta_array[29]),
        .I1(sel_pipe),
        .I2(douta_array[4]),
        .O(douta[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[5]_INST_0 
       (.I0(douta_array[30]),
        .I1(sel_pipe),
        .I2(douta_array[5]),
        .O(douta[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[6]_INST_0 
       (.I0(douta_array[31]),
        .I1(sel_pipe),
        .I2(douta_array[6]),
        .O(douta[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[7]_INST_0 
       (.I0(douta_array[32]),
        .I1(sel_pipe),
        .I2(douta_array[7]),
        .O(douta[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[8]_INST_0 
       (.I0(douta_array[33]),
        .I1(sel_pipe),
        .I2(douta_array[8]),
        .O(douta[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[9]_INST_0 
       (.I0(douta_array[34]),
        .I1(sel_pipe),
        .I2(douta_array[9]),
        .O(douta[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 
       (.I0(addra),
        .I1(ena),
        .I2(sel_pipe),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ),
        .Q(sel_pipe),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [8:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [8:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [8:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [8:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [8:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [8:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [8:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [8:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [6:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [6:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [6:0]dina;
  wire [6:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [6:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [6:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [6:0]dina;
  wire [6:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [8:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [8:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFDFFFFFFFDFFFFFBEFFFFDFFF7FFFDFFFFFB7DF7DF7FFFFFFFFFFB7B7B4E9),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE),
    .INITP_02(256'hAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_00(256'h0019151D1F1B15150011151C171B1515007C00007C00FFFF010100011B010068),
    .INIT_01(256'h000C050C0C000C040C0C000C030C0C000C020C050A0B0B1B0C000C0A0C0C1E1D),
    .INIT_02(256'h08066106081606085B06081709075507091707094F070909050804070306020C),
    .INIT_03(256'h111F831B0E11000E07090D0608091908180709060819071806730806B1161716),
    .INIT_04(256'h1113A71B0F1423142214141214141321B10812120613070F0D0F0F0E200E0E1B),
    .INIT_05(256'h180709060819071806C309070116178D1200120F1A0F1A0E200F1A0F1A0D2013),
    .INIT_06(256'h010913130712060F0E0F0F0D200D0D1B101FD31B0D10000E07090D0608091908),
    .INIT_07(256'h1300130F1A0F1A0D200F1A0F1A0E20121012F71B0F1423142214141214141321),
    .INIT_08(256'h2A35343325322C3100302A2F2E2D2C2B2A292328232723262524002A0B000BDD),
    .INIT_09(256'h00492E482A472346234523442543004241403F3E003D3C3B3A392C3825372336),
    .INIT_0A(256'h235A235958572C562A5523542353235225510050414F234E234D234C234B254A),
    .INIT_0B(256'h236A23692568006700662A652E6425632C6225612C603A5F235E235D235C235B),
    .INIT_0C(256'h767B347A2A7923782577767541742373237223712370256F006E2E6D2A6C236B),
    .INIT_0D(256'h768B768A2C8923883A874186238523842383238225810080347F2A7E237D257C),
    .INIT_0E(256'h769C2E9B239A3F992C98349723968D953C943493009241917690208F238E8D8C),
    .INIT_0F(256'h76AC2CAB23AA3AA920A823A78DA676A53AA42CA323A23AA125A08D9F209E239D),
    .INIT_10(256'h8DBC23BB76BA76B920B820B723B641B576B43AB32CB223B13AB020AF76AE76AD),
    .INIT_11(256'h8DCC76CB3ACA2CC923C83AC700C641C576C43CC32EC23CC134C000BF76BE76BD),
    .INIT_12(256'h2CDC23DB34DA76D98DD823D720D620D576D476D376D22CD123D03ACF20CE23CD),
    .INIT_13(256'h23EC3AEB20EA76E976E876E72CE623E53AE42CE323E234E176E08DDF23DE20DD),
    .INIT_14(256'h8DFC20FB23FA76F900F83CF734F62CF523F43AF33CF234F12CF023EF00EE20ED),
    .INIT_15(256'h3A0C230B3A0A200923083A07200623053A043A0323022001200023FF3AFE25FD),
    .INIT_16(256'h231C3A1B3A1A23192018201723163A153C142E132C1220113C10340F2E0E230D),
    .INIT_17(256'h232C3A2B202A23293A2841272526002523242E23412225210020231F2E1E201D),
    .INIT_18(256'h3C3C8D3B3C3A20392038413723362A352E34253376323A3123302E2F002E202D),
    .INIT_19(256'h204C3C4B344A3C4934482047414623452A442E438D423C418D403C3F203E8D3D),
    .INIT_1A(256'h3A5C005B3C5A8D593A583A57765623553A5425538D5220512350764F764E234D),
    .INIT_1B(256'h346C2E6B236A00693C68416776663A65766423633A623A613A603A5F2C5E235D),
    .INIT_1C(256'h257C767B207A417923782A772E76257576743C732E723C712E70256F2C6E3C6D),
    .INIT_1D(256'h3A8C2C8B238A3A8900883C878D863A853A84768323823A8176802A7F3C7E3F7D),
    .INIT_1E(256'h3A9C2C9B239A3A9920982097769623952C9420932092769123902C8F3A8E3A8D),
    .INIT_1F(256'h41AC3AAB2CAA23A92CA83CA72EA634A523A423A323A223A123A03A9F3A9E3A9D),
    .INIT_20(256'h41BC3ABB2CBA23B92CB820B776B658B523B476B320B276B158B023AF76AE58AD),
    .INIT_21(256'h23CC23CB3ACA25C98DC820C723C676C52EC423C300C22AC13FC03CBF34BE58BD),
    .INIT_22(256'h23DC23DB23DA23D93AD83AD723D623D523D423D323D23AD13FD023CF23CE23CD),
    .INIT_23(256'h23EC2CEB3CEA2EE93CE82EE73CE62EE53CE434E33CE234E12EE023DF20DE23DD),
    .INIT_24(256'h23FC23FB23FA23F923F83AF72AF658F576F441F323F22EF158F041EF3AEE2CED),
    .INIT_25(256'h000C000B2E0A58093C0823078D0600053A04230323022301230023FF3AFE3FFD),
    .INIT_26(256'h2C1C231B3A1A3A19231823172316231523143A1300122E1158103C0F230E8D0D),
    .INIT_27(256'h232C762B3A2A232976283C2723262325232423238D223C212E20001F3A1E3A1D),
    .INIT_28(256'h763C763B233A20393C3834373C36343500343C33233223312330232F8D2E3A2D),
    .INIT_29(256'h234C3A4B204A23493A482C47234676450044204323423A415840413F203E233D),
    .INIT_2A(256'h3C5C2E5B3C5A2E593C582E573C5634553C5434532E5223512E503C4F3A4E204D),
    .INIT_2B(256'h766C006B206A23693A6823672C66006523642E633C6223612360235F235E8D5D),
    .INIT_2C(256'h3A7C417B3C7A3F797678007741763C753F7476730072207123703A6F2C6E236D),
    .INIT_2D(256'h208C238B768A3A8920882087208658858D843C832E82208123803A7F207E237D),
    .INIT_2E(256'h2C9C239B3A9A3C993F98009776963A9520942093209258918D90208F238E768D),
    .INIT_2F(256'h20AC23AB3AAA3FA92AA820A723A63AA58DA425A376A223A120A0009F3C9E349D),
    .INIT_30(256'h3CBC3FBB3CBA2EB93CB83FB700B676B52EB423B300B22AB13FB020AF23AE3AAD),
    .INIT_31(256'h23CC3ACB23CA2CC93CC82EC73AC620C520C420C358C28DC13CC02EBF3CBE2EBD),
    .INIT_32(256'h23DC3ADB3CDA34D93FD834D73CD634D53FD434D320D223D13AD03FCF2ACE20CD),
    .INIT_33(256'h76EC20EB23EA76E925E841E73AE62CE523E43AE33CE22EE120E023DF3ADE20DD),
    .INIT_34(256'h23FC8DFB58FA2AF92CF841F73CF600F525F441F33AF22CF123F03AEF20EE23ED),
    .INIT_35(256'h3A0C760B230A3A093A0823078D0676052C042A0358022E0123003FFF76FE34FD),
    .INIT_36(256'h231C201B201A23193A1820177616761576142C1323123A112C10230F340E760D),
    .INIT_37(256'h2E2C3C2B232A2C292C282327762658252A242C2341223C2100202E1F231E2C1D),
    .INIT_38(256'h763C233B3A3A23392C383C372E36253541343A332C3223313A303C2F2E2E3C2D),
    .INIT_39(256'h764C344B234A2C4920487647764676452C4423433A422C412340343F763E3A3D),
    .INIT_3A(256'h765C765B765A2C5923583A5758562A552E547653345223512C50584F2A4E2E4D),
    .INIT_3B(256'h3C6C3A6B006A3C693A682067256623652A642C6325622C6100603C5F205E205D),
    .INIT_3C(256'h257C237B2A7A347900782077587623752A7476732072257123702A6F2C6E006D),
    .INIT_3D(256'h258C008B3F8A3C89238823872386258500842C83258223813C808D7F007E2C7D),
    .INIT_3E(256'h589C239B2A9A76992C9825973496419500942393209225912390238F238E238D),
    .INIT_3F(256'h2EAC20AB25AA23A92AA82CA725A62CA525A42CA325A23FA12AA0239F8D9E209D),
    .INIT_40(256'h23BC23BB23BA23B925B800B73FB63CB523B423B323B225B100B02AAF76AE3CAD),
    .INIT_41(256'h23CC25CB00CA00C98DC83CC723C62AC52EC400C38DC23CC123C02ABF2EBE25BD),
    .INIT_42(256'h2ADC2EDB3ADA58D93CD823D723D625D500D42ED320D200D125D023CF23CE23CD),
    .INIT_43(256'h23EC23EB23EA25E900E83AE758E63CE523E423E325E200E120E02ADF00DE00DD),
    .INIT_44(256'h23FC58FB8DFA3FF93FF83CF720F600F52AF48DF33FF28DF13FF08DEF41EE23ED),
    .INIT_45(256'h2A0C2E0B250A2C0900082A07760600052A048D033A022301230023FF23FE23FD),
    .INIT_46(256'h341C2C1B2A1A23192318231725163A1523142313231223112310230F580E000D),
    .INIT_47(256'h2A2C232B232A23292528002734262A25202434233C2220212C20251F231E2A1D),
    .INIT_48(256'h763C2E3B233A3A393A38233723362335233423332332583100302A2F8D2E2C2D),
    .INIT_49(256'h584C2C4B764A2E4923483A477646234500440043414276412040233F583E2C3D),
    .INIT_4A(256'h205C345B235A005900583C573F5620557654765376522C5123503A4F204E234D),
    .INIT_4B(256'h766C766B8D6A236976687667206658658D643A63236223613A60345F3C5E235D),
    .INIT_4C(256'h767C767B207A0079417876773C762E7541743C73207234713C70236F206E006D),
    .INIT_4D(256'h2C8C348B238A8D8920882387418676853A842C8323823A817680767F8D7E237D),
    .INIT_4E(256'h8D9C769B769A2C9923983A97419623953F9400933C9223913A902E8F238E3F8D),
    .INIT_4F(256'h23AC3AAB00AA76A976A88DA723A676A576A420A334A23CA123A0209F209E239D),
    .INIT_50(256'h23BC20BB20BA23B93AB841B725B620B523B43AB376B223B100B041AF25AE20AD),
    .INIT_51(256'h23CC58CB8DCA00C925C841C723C63AC52AC434C325C23FC120C023BF2EBE2CBD),
    .INIT_52(256'h20DC23DB3ADA2ED923D83CD72ED634D576D42CD320D22AD134D025CF3FCE2ECD),
    .INIT_53(256'h2AEC3CEB00EA2EE92AE823E73AE600E53CE434E32CE223E13AE03ADF23DE3ADD),
    .INIT_54(256'h20FC23FB3AFA2EF923F82AF734F625F53FF42CF323F200F120F023EF3AEE41ED),
    .INIT_55(256'h3C0C3C0B2E0A2509760858072E06340541040003580223013C003FFF3CFE34FD),
    .INIT_56(256'h411C581B3A1A3A193A182C1723163A153C143413201223113A10760F230E3F0D),
    .INIT_57(256'h232C582B8D2A342923283A2723263A257624232320222E213C20001F581E581D),
    .INIT_58(256'h8D3C3C3B8D3A3C3920383C372E3625352C347633233220312E303C2F002E2E2D),
    .INIT_59(256'h254C764B204A414923482A472E46254576443C432E4220414140233F2A3E2E3D),
    .INIT_5A(256'h3C5C345B005A3C59415876573A56765523543A532E52235176502A4F3C4E3F4D),
    .INIT_5B(256'h2E6C006B206A23693A6841678D6623652C6425638D6223613A60765F235E205D),
    .INIT_5C(256'h3A7C237B2E7A207923783A772E7623757674237320722E713C70006F3A6E236D),
    .INIT_5D(256'h3A8C2E8B238A76893C882E873F862A8500843C833F823F813C802E7F347E237D),
    .INIT_5E(256'h2E9C3A9B239A2399239823972396769523942E93209223913A90768F238E588D),
    .INIT_5F(256'h20AC23AB3FAA20A923A83AA741A641A500A423A32CA22CA123A0209F009E239D),
    .INIT_60(256'h58BC23BB76BA3CB92EB83CB734B641B541B400B323B22CB12EB023AF58AE8DAD),
    .INIT_61(256'h3ACC2CCB23CA2CC93CC82EC73CC62EC558C441C33AC22CC123C02CBF20BE76BD),
    .INIT_62(256'h23DC23DB23DA23D923D83AD72ED623D52AD458D376D241D123D02ECF58CE41CD),
    .INIT_63(256'h3AEC41EB41EA41E958E83AE723E676E523E43AE32EE223E100E02ADF3FDE20DD),
    .INIT_64(256'h20FC23FB3AFA2EF923F841F741F600F523F42CF334F223F123F023EF23EE23ED),
    .INIT_65(256'h3C0C2E0B200A230976082C07230620058D043C033C022301580020FF2AFE3FFD),
    .INIT_66(256'h2E1C231B001A201923183A172A163F15201423133A1276112310200F580E8D0D),
    .INIT_67(256'h412C2A2B002A3A2923283A270026232523242323232223215820001F3C1E341D),
    .INIT_68(256'h763C3C3B2E3A3C39343800372336233523342333233258312E30232F582E3F2D),
    .INIT_69(256'h234C234B234A8D493C482E473C462E453C4423432342234123408D3F3A3E233D),
    .INIT_6A(256'h345C2E5B3C5A3A59205823573A562E55235423532C52005123502E4F3C4E234D),
    .INIT_6B(256'h236C3A6B416A41697668236720668D652564206323623A617660235F205E3C5D),
    .INIT_6C(256'h207C237B3A7A2E792378007723762375237423732372587100703A6F3A6E2C6D),
    .INIT_6D(256'h588C8D8B3C8A2E8941884187588641858D84588300822A813F80417F2A7E007D),
    .INIT_6E(256'h8D9C259B589A4199209823973A9641952A940093209223913A90768F238E208D),
    .INIT_6F(256'h23AC58AB41AA23A976A83AA723A63AA52EA43CA376A23AA13AA02E9F239E209D),
    .INIT_70(256'h20BC23BB76BA3CB93FB83CB72EB62EB53CB476B33AB23AB12EB023AF20AE2EAD),
    .INIT_71(256'h3ACC20CB20CA20C958C88DC73CC62EC53CC42EC33AC220C120C020BF58BE8DBD),
    .INIT_72(256'h34DC2CDB23DA3AD900D82AD73FD620D523D43AD32ED223D123D02CCF3CCE2ECD),
    .INIT_73(256'h23EC20EB20EA23E93AE841E741E62AE534E43CE32EE220E123E03ADF00DE3CDD),
    .INIT_74(256'h20FC23FB58FA2CF976F82CF723F63AF52EF423F32EF23CF176F03AEF3AEE2EED),
    .INIT_75(256'h3A0C2C0B230A76093C082E077606230523043A038D02230134003AFF2AFE8DFD),
    .INIT_76(256'h761C761B2C1A23193A182017231658152C1476132C1223113A10760F230E410D),
    .INIT_77(256'h232C412B3A2A23293A2825278D2600253C243F233A2223212320761F201E761D),
    .INIT_78(256'h233C763B3C3A23392C382C372336763525348D3300323C313F302E2F232E582D),
    .INIT_79(256'h414C3A4B2C4A23493A483C472E463C452E44254341423A412C40233F3A3E203D),
    .INIT_7A(256'h345C235B8D5A2C5923582057205623553A542E53235223512C503C4F2E4E254D),
    .INIT_7B(256'h206C236B3A6A41694168346723663C650064206323623A612E60235F3F5E765D),
    .INIT_7C(256'h257C207B207A58793C7823772376257500742E73237225718D70006F3C6E3F6D),
    .INIT_7D(256'h258C008B3A8A3C893F883C873C862E8525842C83588258818D80417F257E237D),
    .INIT_7E(256'h349C8D9B589A25992598239723962395239425930092209158903C8F238E238D),
    .INIT_7F(256'h8DAC00AB2AAA3AA934A88DA72CA625A53FA42AA320A220A13CA03A9F2A9E3A9D),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta_array[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [8:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [8:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFF294A5292A448924F5FFF55555555577AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_01(256'hFF7FFEFBEDF7DBEFB7DF6FBEDF7DBEFB7DF6FBEDF7DBEFB7DF6FFFFFFFFFFFFF),
    .INITP_02(256'h1BFBFF7B9F7BFDBFFFFFFFFFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'h00000FFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFFFEFFFFFD6BEFABD080000002),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000),
    .INITP_05(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000),
    .INITP_07(256'h000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'h000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000),
    .INITP_0B(256'h00000000000000000000000000000000000001A0000000000000180000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h25BC2CBB25BA2CB920B825B723B62AB52CB400B33CB23AB125B03FAF2AAE23AD),
    .INIT_01(256'h34CC41CB00CA23C920C82CC725C62AC576C43CC32EC220C125C023BF2ABE2CBD),
    .INIT_02(256'h3CDC20DB8DDA3FD900D82AD73FD600D53CD420D32CD225D123D02ACF34CE00CD),
    .INIT_03(256'hED2322000C1D001C00E800E72EE620E52CE425E300E22AE13AE034DF8DDE00DD),
    .INIT_04(256'hFD24FC23FB24FA24F923F824F723F624F523F423F324F223F123F023EF24EE23),
    .INIT_05(256'hEAEA00EAE900E9FE00001D00EA00E900220004240324022401230024FF24FE23),
    .INIT_06(256'h040469EB1C040469EAEC2CEB2EEB2DEBD32DEBC6E92BE9CD2CE9BFEA2BEAC62B),
    .INIT_07(256'h1B151B1D1B1B1C1E151F212104046AEC2004046AEB1F04046AE91E040469EC1D),
    .INIT_08(256'h1B1B1F21171B171B1D1E1B1F1E171B2F1B211C161B161B1F1E161D1B1B1C2115),
    .INIT_09(256'h1B19EF051B051B17EE0515ED1A201A1A202119192F19201E181B181B1C1E181D),
    .INIT_0A(256'h1B071B19F2071B071B17F10715F0061B061B1AEF061B061B18EE0616ED051B05),
    .INIT_0B(256'hF3091B091B19F5091B091B17F40915F3081B081B1AF2081B081B18F10816F007),
    .INIT_0C(256'h0C16F60B1B0B1B19F80B1B0B1B17F70B15F60A1B0A1B1AF50A1B0A1B18F40A16),
    .INIT_0D(256'h18FA0E16F90D1B0D1B19FB0D1B0D1B17FA0D15F90C1B0C1B1AF80C1B0C1B18F7),
    .INIT_0E(256'h101B18FD1016FC0F1B0F1B19FE0F1B0F1B17FD0F15FC0E1B0E1B1AFB0E1B0E1B),
    .INIT_0F(256'h121B121B18001216FF111B111B1901111B111B17001115FF101B101B1AFE101B),
    .INIT_10(256'h1A04141B141B1803141602131B131B1904131B131B1703131502121B121B1A01),
    .INIT_11(256'h0E0D300D0C310C0B300B0A310A093009083108073007063106053005141B141B),
    .INIT_12(256'h1D0058221D5E0022221B1E251431141330131231121130111031100F300F0E31),
    .INIT_13(256'h410A40093F083E073D0E3C0D3B063A05390C380B370636053508340733063205),
    .INIT_14(256'h511450134F0C4E0B4D124C114B0A4A09490C480B470A46094510440F43084207),
    .INIT_15(256'h611460135F125E115D125C115B105A0F5910580F570E560D55145413530E520D),
    .INIT_16(256'h260404692A2A632AE0642A261BD5632A2A2A272A3F29F3622901252500251D1B),
    .INIT_17(256'h00FEB6271BFD6727270027291BC72900292826282966261BEA1B26261BE56526),
    .INIT_18(256'hFF0031000000000000000000000000000000000000000000000000000000FE01),
    .INIT_19(256'h083B3A0E39033635343332072E2D0F0E0D060B050A0D090807060C050F008002),
    .INIT_1A(256'h5F5E5D5C5B5A590B57565554535251504F4E4D4C4B4A48474645444342400A3F),
    .INIT_1B(256'h6261605F5C5B5A595804565554535251504E4D4C4B4A49483635343231282760),
    .INIT_1C(256'hBBBAB9B7B6B5B4B3B2B1AEAD8F8E8D8C8B8A0989888786856B6A696867666563),
    .INIT_1D(256'hDFDEDDDCDBDAD9D8D7D6D5D4D3D2D1D0CFCECDCCCBCAC9C8C7C6C5C4C3C2C0BF),
    .INIT_1E(256'hDFDEDDDCDBDAD9D8D7D6D5D4D3D2D1D0CFCECDCCCBCAC9C8B6B5B4B2B1A8A7E0),
    .INIT_1F(256'h42403F3B3A393837363231302E2D0C0B0A070605EBEAE9E8E7E6E5E4E3E2E1E0),
    .INIT_20(256'h575251504F4E4D4A494832312F2E28275D5C5857565352514C4B4A4948474443),
    .INIT_21(256'h9B9A9998979695949392918E8D8C8B8A898786856766656463605F5E5D5C5958),
    .INIT_22(256'hCCCBCAC9C8C7C6C5C4C3C2C0BFBBBAB9B8B7B6B1B0AEADA5A4A3A2A19F9E9D9C),
    .INIT_23(256'hC0BFBEBDBCBBBAB9B8B5B4B2B1AFAEABAAA8A7DDDCD8D7D6D5D4D3D2D1CFCECD),
    .INIT_24(256'hEAE9E8E7E6E5E4E3E0DFDEDDDCD9D8D7D5D4D3D2D1D0CFCECDCCCBCAC9C8C2C1),
    .INIT_25(256'h2D2524232221201F1E1D1C1B1A191817161514131211100E0D0B0A0908070605),
    .INIT_26(256'h57565554535251504F4E4D4C4B4A48474645444342403F3B3A3938373631302E),
    .INIT_27(256'h504E4D4C4B4A49484241403F3E3D3C3B3A393837353432312F2E2B2A28275D5C),
    .INIT_28(256'h89888786856B6A696867666564636261605F5E5D5C5B5A595857565554535251),
    .INIT_29(256'hBBBAB9B8B7B6B1B0AEADA6A5A4A3A2A1A09D9C9B9897969594939291908E8D8A),
    .INIT_2A(256'hB8B7B5B4B2B1AFAEABAAA8A7DDDCD7D6D5D3D2D1CCCBCAC9C8C7C6C4C3C2C0BF),
    .INIT_2B(256'hE7E6E5E4E3E2E1E0DDDCDBDAD9D2D1D0CFCECDCCCAC9C8C2C1BFBEBDBCBBBAB9),
    .INIT_2C(256'h37363231302E2D2B2A2524232221201D1C1B1817161514131211100E0D070605),
    .INIT_2D(256'h32312F2E2B2A282725245D5C5857565352514C4B4A4948444342403F3B3A3938),
    .INIT_2E(256'h8567666564635F5E5D5C58575251504F4E4A494842413E3D3C3B3A3938373534),
    .INIT_2F(256'hB4B3B2B1AEADACABAAA9A5A4A3A2A1A09D9C9B9897969594939291908E8D8786),
    .INIT_30(256'hDCD8D7D6D3D2D1D0CFCECDCCCBCAC9C8C7C6C5C4C3C2C0BFBEBDBCBBBAB7B6B5),
    .INIT_31(256'hCCCBCAC9C8C2C1BEBDBCBBBAB9B8B7B5B4B2B1AFAEADACABAAA8A7A6A5A4A3DD),
    .INIT_32(256'h05EBEAE9E8E7E6E5E4E3E2E1E0DFDEDDDCDBDAD9D8D7D6D5D4D3D2D1D0CFCECD),
    .INIT_33(256'h3A3635343332312E2D2C2B2A25242322211D1C1B18171615141312110E0D0706),
    .INIT_34(256'h2B28272625245D5C5857535251504F4E4D4C4B4A484746454443423F3E3D3C3B),
    .INIT_35(256'h58565554535251504E4D4C4B4A494842413E3D3C3B3A3938353432312F2E2D2C),
    .INIT_36(256'h2621201F11100F0E0D0C0BBEBDD26B6A696867666564636261605F5D5C5B5A59),
    .INIT_37(256'h5756555452514D4C4B48474643423D3C3B3A3938373635333231302F2E2D2827),
    .INIT_38(256'h57565551504F4E4D4C4B4A4948474645443231302E2D2C2B2A1817165B5A5958),
    .INIT_39(256'h908F8E8D8C8B7C7B7A79787776757372716D6C6B6A6968676564635E5D5C5958),
    .INIT_3A(256'hC7C6C5C3C2C1BEBDBCBBBAB9B8B7B6B5B4B3B2B1B0AFAEADA8A7A6A1A09F9291),
    .INIT_3B(256'hC8C7C6C5C4B2B1B0AEADABAAA998979695DBDAD9D8D7D6D5D4D2D1CECDCCCBC8),
    .INIT_3C(256'hEEEDECEBEAE9E8E7E5E4E3DFDEDDDCDAD9D8D7D6D5D4D2D1D0CFCECDCCCBCAC9),
    .INIT_3D(256'h413E3D3C37363534332F2E2D28272612110D0C0BFCFBFAF9F8F7F6F5F3F2F1F0),
    .INIT_3E(256'h51504D4C4B48472E2D2A29201F18171615585752514F4E4D4C4B484746454342),
    .INIT_3F(256'h92918D8C8B7978737271706E6D6C696867656463625F5E5D5C5B5A5955545352),
    .INIT_40(256'hC2C1BEBDBAB9B8B7B6B5B4B3AFAEADA8A7A6A5A4A3A09F9E9D9A999897969594),
    .INIT_41(256'hA9A8A6A5A4A3A2A09F9C9B999897969594D8D7D2D1CFCECDCCCBC9C8C7C6C5C4),
    .INIT_42(256'hDAD9D4D3D2D1D0CFCECDCCCBC8C7BEBDBCBBBAB9B8B7B6B5B4B1B0AEADACABAA),
    .INIT_43(256'h15141312110D0C0BF9F8F4F3F2F1F0EFEEEDECEBE9E8E7E5E4E3E2DFDEDDDCDB),
    .INIT_44(256'h3F3E3D3B3A393837363534332F2E2D28272625242322201F1E1D1B1A19181716),
    .INIT_45(256'h2625242322201F1C1B191816151458575251504F4E4D4C4B4948464544424140),
    .INIT_46(256'h5351504F4E4D4C4B48473E3D3C3B3A3938373635343331302E2D2C2B2A292827),
    .INIT_47(256'h92918D8C8B7978747371706F6D6C6B6A69686765646362605F5E5D5C5B5A5954),
    .INIT_48(256'hC1C0BFBEBDB7B6B5B4B3AFAEADA8A7A6A3A2A09F9E9D9C9B9A99989796959493),
    .INIT_49(256'hA4A3A2A09F9C9B9A999897969594D8D7D2D1D0CFCECDCCCBCAC9C8C7C6C5C4C2),
    .INIT_4A(256'hD9D4D3D1D0CFCDCCCBC8C7BEBDBBBAB9B8B7B6B5B4B3B1B0AEADACABAAA9A8A7),
    .INIT_4B(256'h11100D0C0BF9F8F5F4F3F2F1F0EFECEBEAE9E8E7E5E4E3E2E1E0DFDEDDDCDBDA),
    .INIT_4C(256'h444341403F3E3736353433322F2E2D2827262322201F1D1C1B1A181715141312),
    .INIT_4D(256'h2827242322201F1C1B1A1918171615141358575251504F4D4C4B4A4948474645),
    .INIT_4E(256'h5B5A595554535251504D4C4B48473E3D3A3938373635343331302E2D2C2B2A29),
    .INIT_4F(256'h94939291908F8E8D8C8B79787574737271706F6E69686765646261605F5E5D5C),
    .INIT_50(256'hBBBAB9B8B7B6B5B4B3B2B1B0AFAEADA8A7A6A5A4A3A2A09F9D9C9B9A98979695),
    .INIT_51(256'hA7A4A3A2A09F9E9D9C9B9A99959493D8D7D2D1D0CDCCCBCAC9C5C4C3C1C0BFBE),
    .INIT_52(256'hD8D7D6D5D4D2D1D0CDCCCBC8C7BEBDBAB9B8B7B6B5B4B3B1B0AEADACABAAA9A8),
    .INIT_53(256'h1615141311100F0E0D0C0BF9F8F5F4F0EFEEE9E8E7E5E4E2E1E0DFDEDDDCDAD9),
    .INIT_54(256'h4A494443403F3B3A3938373635333231302F2E2D282726252423201F1C1B1817),
    .INIT_55(256'h353431302E2D2C2B2A2928242322201F1E1D1C1B1A19141358575251504D4C4B),
    .INIT_56(256'h6E69686765646261605E5D5C59585756555452514D4C4B48473E3D3A39383736),
    .INIT_57(256'h0000000000000000000000000000000000000000000000CCBAB979787675746F),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0E0D0C0B0A09080706050403020100000014B40E680000000000000000000000),
    .INIT_5A(256'h2E2D2C2B2A292827262524232221201F1E1D1C1B1A191817161514131211100F),
    .INIT_5B(256'h0000000000000000000000000000000000000000005A00FF3310007F8010302F),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta_array[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [8:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [8:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h090009090009090909000909000909090908090908090909090909000912120D),
    .INIT_01(256'h0909090909090909090909090909090909090900090909090909090909090909),
    .INIT_02(256'h0909000909090909000909090909000909090909000909090909090909090909),
    .INIT_03(256'h0909000909090909090909090909090909090909090909090900090900090909),
    .INIT_04(256'h0909000909090909090909090909090900090909090909090909090909090909),
    .INIT_05(256'h0909090909090909090009090009090009090909090909090909090909090909),
    .INIT_06(256'h0009090909090909090909090909090909090009090909090909090909090909),
    .INIT_07(256'h0909090909090909090909090909090909090009090909090909090909090909),
    .INIT_08(256'h0909090909090909090909090909090909090909090909090909090009090900),
    .INIT_09(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_0A(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_0B(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_0C(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_0D(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_0E(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_0F(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_10(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_11(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_12(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_13(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_14(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_15(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090909090909),
    .INIT_16(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_17(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_18(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_19(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_1A(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_1B(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_1C(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_1D(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_1E(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_1F(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_20(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_21(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_22(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_23(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_24(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_25(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_26(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_27(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_28(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_29(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_2A(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_2B(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_2C(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_2D(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_2E(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_2F(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_30(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_31(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_32(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_33(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_34(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_35(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090A090A090A),
    .INIT_36(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_37(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_38(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_39(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_3A(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_3B(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_3C(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_3D(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_3E(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_3F(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_40(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_41(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_42(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_43(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_44(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_45(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_46(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_47(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_48(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_49(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_4A(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_4B(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_4C(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_4D(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_4E(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_4F(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_50(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_51(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_52(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_53(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_54(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_55(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090B090B090B),
    .INIT_56(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_57(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_58(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_59(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_5A(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_5B(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_5C(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_5D(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_5E(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_5F(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_60(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_61(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_62(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_63(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_64(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_65(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_66(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_67(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_68(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_69(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_6A(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_6B(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_6C(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_6D(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_6E(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_6F(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_70(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_71(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_72(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_73(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_74(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_75(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090C090C090C),
    .INIT_76(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_77(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_78(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_79(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_7A(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_7B(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_7C(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_7D(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_7E(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_7F(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta_array[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [8:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [8:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000080000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000001000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_01(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_02(256'h090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_03(256'h0D0D0D0900090909090D090D090D090D090D090D090D090D090D090D090D090D),
    .INIT_04(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_05(256'h0D0D090D0D090D09090909090D090D090D090D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_06(256'h12120D0D0D12120D0D0D090D0D0D0D0D080D0D080D0D0D080D0D080D0D0D080D),
    .INIT_07(256'h0D0D0D0D0D0D0D0D0D0D0D0D12120D0D0D12120D0D0D12120D0D0D12120D0D0D),
    .INIT_08(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_09(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0A(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0B(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0C(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0D(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0E(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0F(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_10(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_11(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_12(256'h0909090D0909090D0D0909090D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_13(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_14(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_15(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_16(256'h0D12120D0D0D0D0D090D0D0D09090D0D0D0D0D0D090D090D0D000D0D090D0909),
    .INIT_17(256'h0009080D09090D0D0D090D0D09090D090D0D0D0D0D0D0D0909090D0D09090D0D),
    .INIT_18(256'hFF18185800000000000000000000000000000000000000000000000000005700),
    .INIT_19(256'h0007070007000707070707000707070707000700070007070707000700000100),
    .INIT_1A(256'h0707070707070700070707070707070707070707070707070707070707070007),
    .INIT_1B(256'h0808080808080808080008080808080808080808080808080808080808080807),
    .INIT_1C(256'h0808080808080808080808080808080808080008080808080808080808080808),
    .INIT_1D(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_1E(256'h0909090909090909090909090909090909090909090909090909090909090908),
    .INIT_1F(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A090909090909090909090909),
    .INIT_20(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_21(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_22(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_23(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_24(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_25(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_26(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_27(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0C0C),
    .INIT_28(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_29(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_2A(256'h0E0E0E0E0E0E0E0E0E0E0E0E0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_2B(256'h0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E),
    .INIT_2C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2D(256'h101010101010101010100F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2E(256'h1010101010101010101010101010101010101010101010101010101010101010),
    .INIT_2F(256'h1010101010101010101010101010101010101010101010101010101010101010),
    .INIT_30(256'h1010101010101010101010101010101010101010101010101010101010101010),
    .INIT_31(256'h1111111111111111111111111111111111111111111111111111111111111110),
    .INIT_32(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_33(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_34(256'h1212121212121111111111111111111111111111111111111111111111111111),
    .INIT_35(256'h1212121212121212121212121212121212121212121212121212121212121212),
    .INIT_36(256'h1616161616161616161616131312121212121212121212121212121212121212),
    .INIT_37(256'h1616161616161616161616161616161616161616161616161616161616161616),
    .INIT_38(256'h1717171717171717171717171717171717171717171717171717171716161616),
    .INIT_39(256'h1717171717171717171717171717171717171717171717171717171717171717),
    .INIT_3A(256'h1717171717171717171717171717171717171717171717171717171717171717),
    .INIT_3B(256'h1818181818181818181818181818181818171717171717171717171717171717),
    .INIT_3C(256'h1818181818181818181818181818181818181818181818181818181818181818),
    .INIT_3D(256'h1919191919191919191919191919191919191919181818181818181818181818),
    .INIT_3E(256'h1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A191919191919191919191919191919),
    .INIT_3F(256'h1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_40(256'h1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_41(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_42(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_43(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_44(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_45(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_46(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_47(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_48(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_49(256'h1D1D1D1D1D1D1D1D1D1D1D1D1D1D1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_4A(256'h1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D),
    .INIT_4B(256'h1E1E1E1E1E1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D),
    .INIT_4C(256'h1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E),
    .INIT_4D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E),
    .INIT_4E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_50(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_51(256'h2020202020202020202020202020201F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_52(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_53(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_54(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_55(256'h2121212121212121212121212121212121212121212121212020202020202020),
    .INIT_56(256'h2121212121212121212121212121212121212121212121212121212121212121),
    .INIT_57(256'h0000000000000000000000000000000000000000000000222222212121212121),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h181818181818181818181818181878A00000000000000000000000D32D000000),
    .INIT_5A(256'h1818181818181818181818181818181818181818181818181818181818181818),
    .INIT_5B(256'h0000000000000000000000000000000000000000002020110000000000001818),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta_array[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [6:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [6:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [11:0]addra;
  wire clka;
  wire [6:0]dina;
  wire [6:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h4440385C3C4844384440385C3C484438443C50443C5044385C60443A44383844),
    .INIT_01(256'h1044385C381044385C381044385C381044385C3C4C443844381044385C384460),
    .INIT_02(256'h14443C4C443814443C48443814443C4C443814443C4844382838283828382838),
    .INIT_03(256'h38443C4C4438443814443814443844384438443844384438443C48443C4C4438),
    .INIT_04(256'h10443C484460443810443810443818443C4C4438443844381444381844381444),
    .INIT_05(256'h4438443844384438443C48443C48444038104438104438184438144438184438),
    .INIT_06(256'h3C4C443844384438144438184438144438443C4C443844381444381444384438),
    .INIT_07(256'h3810443810443818443814443818443810443C48446044381044381044381844),
    .INIT_08(256'h4460446044604460446044604460446044604460446044604460444038104440),
    .INIT_09(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_0A(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_0B(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_0C(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_0D(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_0E(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_0F(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_10(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_11(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_12(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_13(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_14(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_15(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_16(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_17(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_18(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_19(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_1A(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_1B(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_1C(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_1D(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_1E(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_1F(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_20(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_21(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_22(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_23(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_24(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_25(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_26(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_27(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_28(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_29(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_2A(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_2B(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_2C(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_2D(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_2E(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_2F(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_30(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_31(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_32(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_33(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_34(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_35(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_36(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_37(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_38(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_39(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_3A(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_3B(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_3C(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_3D(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_3E(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_3F(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_40(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_41(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_42(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_43(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_44(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_45(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_46(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_47(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_48(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_49(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_4A(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_4B(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_4C(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_4D(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_4E(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_4F(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_50(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_51(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_52(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_53(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_54(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_55(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_56(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_57(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_58(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_59(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_5A(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_5B(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_5C(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_5D(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_5E(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_5F(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_60(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_61(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_62(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_63(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_64(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_65(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_66(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_67(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_68(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_69(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_6A(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_6B(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_6C(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_6D(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_6E(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_6F(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_70(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_71(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_72(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_73(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_74(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_75(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_76(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_77(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_78(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_79(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_7A(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_7B(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_7C(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_7D(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_7E(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_7F(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ,douta_array}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [6:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [6:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [11:0]addra;
  wire clka;
  wire [6:0]dina;
  wire [6:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_01(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_02(256'h4460446044604460446044604460446044604460446044604460446044604460),
    .INIT_03(256'h3844384440604460446044604460446044604460446044604460446044604460),
    .INIT_04(256'h3844384438443844384438443844384438443844384438443844384438443844),
    .INIT_05(256'h443810443810443C504460443844384438443844384438443844384438443844),
    .INIT_06(256'h5C381044385C381044384438443814443C4844403814443C4844403814443C48),
    .INIT_07(256'h2044382444382444382444385C381044385C381044385C381044385C38104438),
    .INIT_08(256'h44382444382044382444382444382044382444381C4438244438244438244438),
    .INIT_09(256'h382444381C443824443824443824443824443820443824443820443824443824),
    .INIT_0A(256'h1C44382444381C44382444382444381C44382444381C44382444382444381C44),
    .INIT_0B(256'h44381C44382444381C44382444382444381C44382444381C4438244438244438),
    .INIT_0C(256'h382444381C44382444381C44382444382444381C44382444381C443824443824),
    .INIT_0D(256'h2444382444381C44382444381C44382444382444381C44382444381C44382444),
    .INIT_0E(256'h44382444382444381C44382444381C44382444382444381C44382444381C4438),
    .INIT_0F(256'h381C44382444382444381C44382444381C44382444382444381C44382444381C),
    .INIT_10(256'h2444381C44382444382444381C44382444381C44382444382444381C44382444),
    .INIT_11(256'h44381C44381C44381C44381C44381C44381C44381C44381C44381C44381C4438),
    .INIT_12(256'h604440385C3C4C4438446044381C44381C44381C44381C44381C44381C44381C),
    .INIT_13(256'h6044604460446044604460446044604460446044604460446044604460446044),
    .INIT_14(256'h6044604460446044604460446044604460446044604460446044604460446044),
    .INIT_15(256'h6044604460446044604460446044604460446044604460446044604460446044),
    .INIT_16(256'h385C3810443814443C484438443C4C443810443818443C4C443A443810446044),
    .INIT_17(256'h00404038443C4844381044384440381044604438104438443C4C4438443C4844),
    .INIT_18(256'h7F00000300000000000000000000000000000000000000000000000000000300),
    .INIT_19(256'h0002020002000202020202000202020202000200020002020202000200020000),
    .INIT_1A(256'h0202020202020200020202020202020202020202020202020202020202020002),
    .INIT_1B(256'h0202020202020202020002020202020202020202020202020202020202020202),
    .INIT_1C(256'h0202020202020202020202020202020202020002020202020202020202020202),
    .INIT_1D(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_1E(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_1F(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_20(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_21(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_22(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_23(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_24(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_25(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_26(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_27(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_28(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_29(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_2A(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_2B(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_2C(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_2D(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_2E(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_2F(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_30(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_31(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_32(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_33(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_34(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_35(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_36(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_37(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_38(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_39(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_3A(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_3B(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_3C(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_3D(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_3E(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_3F(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_40(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_41(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_42(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_43(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_44(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_45(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_46(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_47(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_48(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_49(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_4A(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_4B(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_4C(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_4D(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_4E(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_4F(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_50(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_51(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_52(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_53(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_54(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_55(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_56(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_57(256'h0000000000000000000000000000000000000000000000020202020202020202),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000007F00000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000002000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ,douta_array}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    addra,
    ena,
    clka,
    dina,
    wea);
  output [24:0]douta;
  input [12:0]addra;
  input ena;
  input clka;
  input [24:0]dina;
  input [0:0]wea;

  wire [12:0]addra;
  wire clka;
  wire [24:0]dina;
  wire [24:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "13" *) (* C_ADDRB_WIDTH = "13" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "6" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.634299 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "8192" *) (* C_READ_DEPTH_B = "8192" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "25" *) (* C_READ_WIDTH_B = "25" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "8192" *) 
(* C_WRITE_DEPTH_B = "8192" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "25" *) (* C_WRITE_WIDTH_B = "25" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_2
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [12:0]addra;
  input [24:0]dina;
  output [24:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [12:0]addrb;
  input [24:0]dinb;
  output [24:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [12:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [24:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [24:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [12:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [12:0]addra;
  wire clka;
  wire [24:0]dina;
  wire [24:0]douta;
  wire ena;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_0_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_2_synth
   (douta,
    addra,
    ena,
    clka,
    dina,
    wea);
  output [24:0]douta;
  input [12:0]addra;
  input ena;
  input clka;
  input [24:0]dina;
  input [0:0]wea;

  wire [12:0]addra;
  wire clka;
  wire [24:0]dina;
  wire [24:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
