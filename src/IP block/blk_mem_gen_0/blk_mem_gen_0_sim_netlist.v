// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon May 20 18:21:17 2019
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
    .INITP_00(256'h0000000080000000000800000000000000000000000000000000100000004800),
    .INITP_01(256'h5554000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INITP_03(256'h0001555555555555555555555555555555555555555555555555555555555555),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h5555000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INITP_07(256'h0000555555555555555555555555555555555555555555555555555555555555),
    .INITP_08(256'h0000000001000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h5554000000000000000000000000000000100000000000000000000000000000),
    .INITP_0A(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INITP_0B(256'h0001555555555555555555555555555555555555555555555555555555555555),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h5554000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INITP_0F(256'h0000AAAAA8055555555555555555555555555555555555555555555555555555),
    .INIT_00(256'h5C1971791F7771715C117178177771715CD85C5CD85C5B5B5D5D5C0177010070),
    .INIT_01(256'h5C686168685C686068685C685F68685C685E680566676777685C686668687A79),
    .INIT_02(256'h64626162647262645B62647365635563657363654F636565616460635F625E68),
    .INIT_03(256'h6D7B83776A6D5C6A6365696264657564746365626475637462736462B1727372),
    .INIT_04(256'h6D6FA7776B707F707E70706E70706F7DB1646E6E626F636B696B6B6A7C6A6A77),
    .INIT_05(256'h746365626475637462C365630172738D6E5C6E6B766B766A7C6B766B76697C6F),
    .INIT_06(256'h01656F6F636E626B6A6B6B697C6969776C7BD377696C5C6A6365696264657564),
    .INIT_07(256'h6F5C6F6B766B76697C6B766B766A7C6E6C6EF7776B707F707E70706E70706F7D),
    .INIT_08(256'h7F8E7F8D7F8C7F8B7F8A7F897F887F877F867F85808482838281802A675C67DD),
    .INIT_09(256'h80A25CA1A09F969E7F9D7F9C949B969A99988097969594937F927F917F907F8F),
    .INIT_0A(256'hB5B4A0B35CB277B17FB07FAF7FAE7FAD7FACA7ABA9AAA9A8A7A680A582A482A3),
    .INIT_0B(256'h94C65CC5A7C4A9C3A9C2A7C17FC094BFA0BE7CBD77BC5CBBA9BAB5B9B8B780B6),
    .INIT_0C(256'hA7D677D55CD4B5D3A9D282D180D07FCF7FCE7FCD7FCC7FCB77CA94C977C877C7),
    .INIT_0D(256'h80E67FE57FE4A7E37CE27FE1A0E0B8DFB8DEA0DD77DC94DB77DA77D994D85CD7),
    .INIT_0E(256'h7FF67FF57FF47FF35CF2A7F194F07FEFA7EE80ED7FECA0EB96EA7FE994E896E7),
    .INIT_0F(256'h7F067F057F04A00396027F01940096FF80FEA9FDB5FC7FFB82FA99F97FF87FF7),
    .INIT_10(256'h7F167F15A914B5137F12821199107F0F7F0EA70D7C0C7F0B7F0A7F097F087F07),
    .INIT_11(256'h7726802596247F23822280218020B51FA01EB81DB81CA01BA91A96197F187717),
    .INIT_12(256'h7F367F35A734B833773277319930962F7F2E822DA92C772B772AA92994288027),
    .INIT_13(256'h7F467F458244A94377427741A940943F803E803DA73C5C3B773A8039B5389937),
    .INIT_14(256'h7F567F557F547F538052A7515C50774F804EB54D994C774B804A96497F487F47),
    .INIT_15(256'h8066B56582648063826280618060B55F5C5E945D825C995B7F5A7F597F587F57),
    .INIT_16(256'h7F767F75A974967396725C717C70826F7F6E7F6D946C5C6B7F6AA96996687F67),
    .INIT_17(256'h7F8677857F847C83B582A0817C80777F7F7E7F7D967C5C7B7C7A82797F787F77),
    .INIT_18(256'h7F967F955C947F937F92B891A090A08FB88E808DB58C828B808A7F897F887F87),
    .INIT_19(256'h7FA67FA57FA47FA37FA25CA17FA07F9F7F9E7F9D7F9C7F9B7F9A7F997F987F97),
    .INIT_1A(256'h5CB694B55CB4B8B3B5B27FB17FB07FAF7FAE7FAD7FAC7FAB7FAA7FA97FA87FA7),
    .INIT_1B(256'h7FC677C57FC47FC37FC27FC17FC07FBF7FBE7FBD77BCB8BBA0BAA0B9B8B87FB7),
    .INIT_1C(256'h5CD67FD57FD47FD37FD27FD15CD07FCF5CCE7FCD7FCC7FCB7FCA7FC95CC87FC7),
    .INIT_1D(256'hA0E677E57FE47FE37FE27FE17FE07FDF7FDE7FDD77DC7FDBA0DA96D97FD87FD7),
    .INIT_1E(256'h7FF6A9F582F4A9F382F277F17FF07FEF7FEE7FEDA9EC82EB7FEAA0E9A7E8A7E7),
    .INIT_1F(256'hA706A705A0047F037C029401A9007FFF7FFEA9FD82FC7FFB7FFA5CF994F877F7),
    .INIT_20(256'h7F167F157F148213991277117710A90F940E990D7F0C820B990A99098208A007),
    .INIT_21(256'h992677257724A923942299219620991F771E5C1DA91C941B991A7719A0188217),
    .INIT_22(256'h5C36A935943499337F327F319630992F772E772DB82CA72B772AA02982288227),
    .INIT_23(256'h994782467F453F447C43774277417C403F3E943D963C7F3B7F3A963999387737),
    .INIT_24(256'h7F573F5682557F549453965280517F507C4F944E774D774C944B7C4A82499948),
    .INIT_25(256'h7F67946696658064A063A7627F617F60965F995E945D7F5CB55B805A7F597F58),
    .INIT_26(256'h967799767F757F74807396727F719470A76F5C6E946D7F6CB56B806A3F698268),
    .INIT_27(256'h94877C865C853F8482837F827F81B580A77F997E7F7D7F7CA07BA77A7F797F78),
    .INIT_28(256'h7F977F967F957F947F937F927F917F907F8F7F8E7F8D7F8C7C8B948A77897788),
    .INIT_29(256'hA0A7B8A6B5A57FA494A396A280A17FA07F9F7F9E7F9D7F9C7F9B7F9A7C999698),
    .INIT_2A(256'h7FB77FB67FB57FB47FB37FB27FB17FB07FAFA0AEB8ADB5AC7FAB94AA96A980A8),
    .INIT_2B(256'h82C7A9C682C5A0C47CC377C277C180C082BFA9BE7FBDB5BC3FBB5CBA77B97FB8),
    .INIT_2C(256'h94D75CD694D57FD47FD377D27FD17FD07FCF7FCE82CDA0CC7CCB77CA77C980C8),
    .INIT_2D(256'h7FE7A7E680E57FE4A9E3B5E27FE182E099DF7FDE7FDD7FDC7FDB7FDA7FD95CD8),
    .INIT_2E(256'h7FF77FF67FF57CF4B5F37CF2B5F17FF03FEFB8EE5CED77EC7FEB5CEAA7E994E8),
    .INIT_2F(256'hB80777067705990496037F028001A7005CFF77FE80FDB5FC99FB7FFA7FF97FF8),
    .INIT_30(256'hA9177F167F157F147F137F127F117F10990FB50E7F0D7F0C7F0B7F0A7F09A708),
    .INIT_31(256'h7F277F267F257F247F237F227F217C20991FA91EB51DA91C7C1B991AA919B518),
    .INIT_32(256'h8237803677357F3494335C327F3196305C2F7C2E822D7F2C7F2B7F2A7F297F28),
    .INIT_33(256'h7F477F465C45B5447F437F428241A9405C3FB53E7F3D7F3C823BA93A7F39A038),
    .INIT_34(256'hB5577C567F557F547F537F527F517F507F4F7F4E7F4D7F4C7F4B7F4A7F497F48),
    .INIT_35(256'h7F677F667F657F647F63A9629661A060805F775EA95D965CA05B805A77597F58),
    .INIT_36(256'h94775C767F757F745C737F725C717F707F6F776E7F6D7F6C7F6B5C6A7F697F68),
    .INIT_37(256'h7C877786B8857F84B58380827F817F807F7FA97E827D7F7C7F7B7F7A5C799478),
    .INIT_38(256'h9697999677957794B893A792A091B8905C8F778E7F8DB58C7C8B778AB889B588),
    .INIT_39(256'h99A75CA677A57FA47FA37FA296A199A0779F5C9EA99D949C999B7F9A7F997F98),
    .INIT_3A(256'h77B75CB6A9B596B4A9B3A9B282B180B077AF5CAEA9AD96ACA9AB7FAA99A9B5A8),
    .INIT_3B(256'h7FC780C696C57FC494C3A7C25CC1A9C082BF7FBE7FBD94BC7FBBA9BA82B980B8),
    .INIT_3C(256'h82D77FD67FD57FD47FD37FD27FD17FD0A0CFA7CE7FCD7FCC96CB99CA7FC97FC8),
    .INIT_3D(256'hA7E75CE699E582E47FE394E2A7E15CE07FDF7FDE7FDD7FDC7FDB7FDA7FD999D8),
    .INIT_3E(256'h80F77FF67FF5A7F477F37FF27FF17FF07FEF7FEE7FED7FEC99EB82EA7FE994E8),
    .INIT_3F(256'h7C0896077F067F057F047F037F02770100FFB8FEA0FDB8FCB5FB7FFA94F996F8),
    .INIT_40(256'hB5183F175C1677157F147F137712B5118210A00F7C0E770D770C800B820AA909),
    .INIT_41(256'h7F28962780267C25B5247F237F227F2177207F1F7F1E7F1D5C1C941B7F1A7F19),
    .INIT_42(256'h77387C37B5367F357F347F337F327F317F307F2F7F2E7F2D7F2C802B962A7F29),
    .INIT_43(256'h99487F477F46A7457C447F435C42A74194407F3F943EA93DB53C7C3B773A9639),
    .INIT_44(256'h80585C57A75694557F549453A9523F51B8505C4F774E7F4DA94CB54B7F4A8249),
    .INIT_45(256'h7F687F677F667F65A964B5637F62826199607F5F7F5E7F5DA75C945B7F5A9659),
    .INIT_46(256'h9977A976B575A9237F74A973B5727F718270996F7F6E7F6D7F6C7F6B7F6A7F69),
    .INIT_47(256'hA9877F86A985A984B8837F827F818080947FA97E5C7D5C7CA97B947A99797C78),
    .INIT_48(256'h77978096B59599947793809296917F90968F008E5C8D778C998B968AB889A988),
    .INIT_49(256'h96A700A65CA577A499A396A299A1B5A07F9F7F9E7F9D7F9C7F9B809AA7995C98),
    .INIT_4A(256'h80B7A7B65CB577B480B3B5B299B17FB07FAF7FAEA9AD5CAC77AB99AA94A97CA8),
    .INIT_4B(256'h5CC6B5C57FC47FC382C2A9667FC180C0A7BF5CBE77BD80BCB5BB99BA7FB97FB8),
    .INIT_4C(256'h7FD677D5A9D400D377D2B5D1A0D0B5CFB8CEA9CD7FCC7FCB96CAA9C9A9C882C7),
    .INIT_4D(256'h7FE67FE5A9E496E37FE277E1A0E082DF80DE77DD7FDC96DB5CDA7CD982D87FD7),
    .INIT_4E(256'hA9F696F5A0F480F377F296F15CF07CEF82EE7FED7FEC96EB5CEA7CE982E87FE7),
    .INIT_4F(256'h000677055C049603A9029601960099FF82FE5CFD7FFC7FFB7FFA5CF95CF87FF7),
    .INIT_50(256'hB5167C157F147F137F127F117F107F0F7F0E7F0D7F0C7F0B7F0A9409B5088207),
    .INIT_51(256'h7F267F257F247F237F227F217F205C1F7F1E7F1D7F1C941BB51A821900187717),
    .INIT_52(256'h5C367F357F345C337F327F317F307F2F7F2E7F2D7F2C7F2B7F2A7F297F287F27),
    .INIT_53(256'h7C469945A044B84396427741B540993F993E823D773C823B7F3A7F397F385C37),
    .INIT_54(256'h7F5677555C547C539952A051B8507F4F774E7F4D5C4C7F4B7F4A7F4977485C47),
    .INIT_55(256'h8266B5657C647763B8625C617F607F5F7F5E5C5D7F5C7F5B7F5A7F5977587F57),
    .INIT_56(256'h7F767F7577747F73007200718270826F006E006D776C7F6B7F6A8269A968A967),
    .INIT_57(256'hA98682857F845C8394827F818080827F7F7E777D7F7CB57B807A7F79A9788277),
    .INIT_58(256'h94969995A9948293809277915C90A98F968EA98DA98C828B778A7F8977887F87),
    .INIT_59(256'h99A67FA5A9A4A9A37FA280A177A0A09F829E7F9D999C949BA99A5C995C98A997),
    .INIT_5A(256'h7FB696B599B477B35CB2A9B194B099AF7FAE7FADA7AC80AB77AA77A9A0A882A7),
    .INIT_5B(256'h77C67CC582C4A9C37FC2A7C180C077BF77BEA0BD82BC99BBB5BA99B95CB877B7),
    .INIT_5C(256'h99D677D55CD4A9D394D299D17FD096CF99CE77CD77CCB8CBA7CA7FC9A7C880C7),
    .INIT_5D(256'h5CE67FE596E499E377E25CE1A9E094DF99DE77DDA0DC82DB77DAA0D982D896D7),
    .INIT_5E(256'h94F67FF5B5F480F37FF299F182F07FEF7FEE82ED99EC99EB82EA7FE994E8A7E7),
    .INIT_5F(256'h960699057F047F03990296017F007FFF96FE5CFD77FCB5FB77FA77F9B5F877F7),
    .INIT_60(256'h96167F157F1496135C12991182107F0F7F0E7F0D7F0C7F0BA00AA7097F087F07),
    .INIT_61(256'h99267F25802496237F229421A7205C1F941EA91DB51C7F1B961A80197F189917),
    .INIT_62(256'h7F369635993494337F32B5318030942F7F2EB52D802CA02BA72A7F297F289627),
    .INIT_63(256'hB5467F4582443F439942A7415C40773F803E963D823C5C3B7F3AA039A7387F37),
    .INIT_64(256'h7F568255A0547F537F527F517F507F4F804E964D944C7F4B7F4A7F497F48A047),
    .INIT_65(256'h7F667F657F647F637C6296617F607F5F7F5E7F5D7F5C7F5B7F5AA05982587F57),
    .INIT_66(256'h7F767F757F747F737F727F717F705C6F826E7F6D7F6C7F6B7F6A7F697F687F67),
    .INIT_67(256'h828699857784778399828281A7807F7F807EB57DA07C5C7B777A7F797F787F77),
    .INIT_68(256'h7F967F9599949693809277917F907F8FB58E3F8D5C8C778B7F8A7F897F88A787),
    .INIT_69(256'h7FA67FA57FA477A37FA27FA17FA0A99FB59E779D779C829BA99A7F9982988097),
    .INIT_6A(256'h7FB6A7B57CB47FB3A9B2B5B17FB082AF99AE7FAD7FAC77AB7FAA7FA9B5A87CA7),
    .INIT_6B(256'h96C6A9C5A9C496C37FC2A9C1B5C07FBF82BE99BD7FBC7FBBA7BA7CB97FB87FB7),
    .INIT_6C(256'h7FD682D599D47FD37FD27FD177D07FCF7FCE3FCDB8CC5CCB77CA7FC97FC87FC7),
    .INIT_6D(256'h99E677E580E496E37FE277E180E096DF7FDE80DDA7DC5CDB77DA80D9B5D899D7),
    .INIT_6E(256'h7FF67FF57FF47FF37FF294F15CF05CEF94EE7FED80ECA7EB5CEA77E980E8B5E7),
    .INIT_6F(256'h7F067F05960499037F027F017F007FFF7FFE7FFD7FFC7FFB99FAB5F97FF87FF7),
    .INIT_70(256'h96165C157C1482137F127F1196105C0F7C0E820D7F0C7C0BB50AA0097C087707),
    .INIT_71(256'h99265C257F247F23A02282218020771F7F1E7F1D7F1C7F1B771A77197F187F17),
    .INIT_72(256'h7F367F357F347F337F327F315C30B82FB52E7F2D7F2C7F2B7F2A7F297C28B527),
    .INIT_73(256'h94465C455C4494437F427F417F407F3F7F3E7F3D7F3C7F3B7F3A7F397F387F37),
    .INIT_74(256'h7F567F557F547F535C5294517F507F4F7F4E7F4D7F4CB54B7C4A7F497F487F47),
    .INIT_75(256'h77667F6594647763776294619660A95FA95E965D7F5C5C5B7F5A7F597F585C57),
    .INIT_76(256'h94765C75A97482737F727F71A970826F7F6E7F6D7F6CB86BA06A7F697F687F67),
    .INIT_77(256'h99867F857F84B58380827F81A780A07FA07E967DA97C827B777A77798278A977),
    .INIT_78(256'hA996949599947F937F9296919990778F5C8EA98D948C998B7F8A7F897F880087),
    .INIT_79(256'hA7A682A599A477A377A299A182A0A79FA09EB89D5C9C779B969A999977985C97),
    .INIT_7A(256'h7FB699B5B5B499B35CB277B17FB07CAF94AEA0AD5CAC77AB5CAAA0A994A87CA7),
    .INIT_7B(256'h96C699C57FC47FC3A0C2A7C17FC07FBF96BE99BD7FBC7FBB7FBA3FB980B87FB7),
    .INIT_7C(256'hA0D682D57FD47FD382D2A0D177D0A9CF82CE7FCD7FCC94CBA0CAA7C97FC87FC7),
    .INIT_7D(256'h7FE67FE599E482E37FE27FE17FE07FDF7FDE7CDDA7DC94DB7FDA94D9A7D87CD7),
    .INIT_7E(256'hF72CF62BF52B2A5C0C795C785CF07FEFA9EE5CED7FEC7FEB7FEA7FE97FE87FE7),
    .INIT_7F(256'h072C062B052C042B032C022C012B002CFF2BFE2CFD2BFC2BFB2CFA2BF92BF82B),
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
    .INITP_00(256'h120024104820904120824104820900000000000000001084210D52A54DA0A000),
    .INITP_01(256'h0000000000000000024000000000000000000000000000000000000000000000),
    .INITP_02(256'hFFFFFFFFFFFFFFFC000000000000000008000000200000000000000000000000),
    .INITP_03(256'h000000007FFFFFFFFFFFFFFFFFFFF0000000000000000000000000000FFFFFFF),
    .INITP_04(256'hFF8000000000FFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFE000000000000000000),
    .INITP_05(256'h7FF00000000000001FFFFFFFFFFFFFFFFF800000000000FFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFF00000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFC0000000),
    .INITP_07(256'hFFFFE0400000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFF0000000000000007FFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFFFF),
    .INITP_09(256'h00000000000000000FFFFFFFFFFFFFFFFFFFC00000000000000007FFFFFFFFFF),
    .INITP_0A(256'h000000000000000000000000000000000001A000000000000018000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h33F22233F2F25CF2F15CF15A5C5C795CF25CF15C2A5C0C2C0B2C0A2C092B082C),
    .INIT_01(256'h0471F425040471F324040471F2F4A9F336F335F32F35F322F133F12934F11BF2),
    .INIT_02(256'h2324291D231D2325232324261D272929040472F428040472F327040472F12604),
    .INIT_03(256'h24262025232327291F231F2325262327261F23372329241E231E2327261E2523),
    .INIT_04(256'hF50D230D2321F70D230D231FF60D1DF522282222282921213721282620232023),
    .INIT_05(256'h101EF80F230F2321FA0F230F231FF90F1DF80E230E2322F70E230E2320F60E1E),
    .INIT_06(256'h20FC121EFB1123112321FD112311231FFC111DFB1023102322FA1023102320F9),
    .INIT_07(256'h142320FF141EFE132313232100132313231FFF131DFE1223122322FD12231223),
    .INIT_08(256'h162316232002161E01152315232103152315231F02151D011423142322001423),
    .INIT_09(256'h2206182318232005181E04172317232106172317231F05171D04162316232203),
    .INIT_0A(256'h1A2322091A231A2320081A1E07192319232109192319231F08191D0718231823),
    .INIT_0B(256'h1C231C23220C1C231C23200B1C1E0A1B231B23210C1B231B231F0B1B1D0A1A23),
    .INIT_0C(256'h38171639161538151439141338131239121138111039100F380F0E390E0D380D),
    .INIT_0D(256'h3B0E3A0D795CB42A79BA5C2A2A777A821C391C1B381B1A391A19381918391817),
    .INIT_0E(256'h4B104A0F491248114710460F45164415430E420D411440133F0E3E0D3D103C0F),
    .INIT_0F(256'h5B165A15591C581B57145613551A541953125211511450134F124E114D184C17),
    .INIT_10(256'h5C2D7977691C681B671A6619651A641963186217611860175F165E155D1C5C1B),
    .INIT_11(256'h77416D2E2E04047132326B323C6C322E77316B3232322F3200314F6A31012D2D),
    .INIT_12(256'h0000FE01005A122F77596F2F2F5C2F317723315C31302E30316E2E7746772E2E),
    .INIT_13(256'h0F008002FF003100000000000000000000000000000000000000000000000000),
    .INIT_14(256'h7A797877767504706F0B6E0E6D6C6B6A6867666564636261241B0807060C0503),
    .INIT_15(256'hFAF9F8F7F6F5F409F1F00DEFEEEDEAE1BFA89B88878605850A848382817C7B06),
    .INIT_16(256'h85848584838281807C7B75747371706A613F281B09080706050404030201FCFB),
    .INIT_17(256'hB7B2B1B0AFAEABAAA9A8A7A4A1A09F9E9D9C9B99989796959491908F8E8D8988),
    .INIT_18(256'h05040100F4F3F1F0EAE1D8D7D6D5D4D1D0CFCECDCAC4C2C1C0BFBEBCBBBAB9B8),
    .INIT_19(256'h36333231302F2E2D282421201F1E1D1C1B19181716151413100F0E0D09080504),
    .INIT_1A(256'h747371706A6766656463626159585756555453504F4E4D4A443F3C3B3A393837),
    .INIT_1B(256'hEAE1D9D8D4D3CDCAC4BFB7B6B3B2AEADA8A4A1A09B94938D8A89848385848180),
    .INIT_1C(256'h3231302F2E2D2824211B14130D0A090403060500FFFCFBFAF9F4F3F1F0EFEEED),
    .INIT_1D(256'h8483828685807F7C7473706F6E6D6C6B6A61595857565554534D4A443F373633),
    .INIT_1E(256'h00FFFEFCF4F3EAE1D4D3CDCAC4BFB7B6AEADA8A4A19B94938D8B8A8988878685),
    .INIT_1F(256'h6154534D4A4544403F37362E2D292824211B14130D0B0A030207060504030201),
    .INIT_20(256'hB1B0AFAEADAAA9A8A4A19B999897969594938D8B8A838287867F7E7C7574736A),
    .INIT_21(256'h07F5F4EAE1D9D8D7D6D5D4D3CDCAC9C8C7C6C5C4C1C0BFBCBBBAB9B8B7B6B3B2),
    .INIT_22(256'h2E2B2A292824211B1918171615140D0C0B0A0302010706FFFEFCFBFAF9F8F7F6),
    .INIT_23(256'h756A615958575655544D4A4948474645444241403F3C3B3A393837333231302F),
    .INIT_24(256'h5251504F4E4A4948474645442A271B1A1918A78887867F7E7D7C7B7A79787776),
    .INIT_25(256'hD7CECAC9C8C7C4A79B71706F6E6D6C6B686766656463625E5D5C5B5A59585453),
    .INIT_26(256'hAAA7A49E9B6B626158574E4A4944271BEBE8E7E6E5E4E3E2E1DEDDDCDBDAD9D8),
    .INIT_27(256'h302F2E2D2A27241E1BEBE2E1D8D7CECAC9C8C7C4BCBBBAB9B8B7B6B2B1B0AFAE),
    .INIT_28(256'h6362615B5A59585754535251504F4E4A4948474645443C3B3A39383736333231),
    .INIT_29(256'hDCDBDAD9D8CECBCAC9C8C4BCBBB6B3B2AEADAAA7A49E9B71706F6E6D6C6B6564),
    .INIT_2A(256'h645E5D5C5B5A4E4B4A443C36333231302F2E2D2A27241E1BEBE7E6E5E4E3E2DD),
    .INIT_2B(256'h2E2D2A27241F1E1B1AEBE8E7DEDDCECBCAC4BCB6AEADAAA7A49E9B6B68676665),
    .INIT_2C(256'hB0AFAEADAAA7A4A3A2A1A09F9E9B9A99986B686762615E5D58574E4B4A443C36),
    .INIT_2D(256'h181716EBE8E7E6E5E4E3E2E1DEDDDCDBDAD9D8D7CECBCAC9C8C7C4BCB6B3B2B1),
    .INIT_2E(256'h535251504F4E4A4948474645443C36333231302F2E2A2724232221201F1E1A19),
    .INIT_2F(256'h0BFDFCFBFAF9F8F78E8D8C8B71706F6E6D6C6B6766656463625D5C5B5A595854),
    .INIT_30(256'h100BF7F6F4EEC5C4C3C2BF908C8B7D7C7B7A797877764544434241403F0D0C08),
    .INIT_31(256'hA4A39F9E9B9A999695939291908F8E8D8C8B8A8685848382817776746E45443F),
    .INIT_32(256'hDBD8D7D6D5D4D3CFCECDCCCBCAC5C4C3C2BFB6B5B4B3B2AFAEADACABA8A7A6A5),
    .INIT_33(256'h050403020100FAF9F8F7F6FEFDFCFBFAF7F6F5F4F3F1F0EFEEEDE9E8E7E6E5E1),
    .INIT_34(256'h4241403F373635343332312E2D2C2B2827262524231F1E1B1A191615100B0706),
    .INIT_35(256'h7D7C7B7A79746E6A696867666564615B585756555453524F4E4D4C4B4A454443),
    .INIT_36(256'hC4C3BFB7B6B2B1ABA8A79F9E9C9B9A999695908B878681807C7B7A7978777F7E),
    .INIT_37(256'h1615100B07060100FDFCFBFAF9FFFEFAF9F4EEEAE9E5E4E1DBD8D3D2CFCEC6C5),
    .INIT_38(256'h524F4E4D4C4B4A4946453F373635343332312B282726252423221F1E1C1B1918),
    .INIT_39(256'h99989796908B878681807D7C7F7E7D7C7B7A79746E6A696867666564615B5853),
    .INIT_3A(256'hEEE5E4E1DBD8D3D2CFCECDCCCBCAC9C6C5BFB2B1ABA8A7A6A5A4A3A29E9D9C9B),
    .INIT_3B(256'h4F4A4946453F32312B2823221E1D1C18171611100B07060100FDFCF7F6FAF9F4),
    .INIT_3C(256'h908B87868584838281807D7C7B7A797877767A7975746F6E6564615C5B585352),
    .INIT_3D(256'hCBCAC9C6C5C4C3C2BFB7B6B5B4B3B2B1ABA8A7A6A5A4A3A29E9D9C9897969291),
    .INIT_3E(256'hF9F6F5F4F0EFEEEAE9E8E7E6E5E4E1E0DFDEDDDCDBD8D7D6D5D4D3D2CFCECDCC),
    .INIT_3F(256'h23221E1D1C181716131211100B060504030201FCFBFAF9F8F709FFFEFDFCFBFA),
    .INIT_40(256'h5857565554534F4E4D4C4B4A494544434241403F3736353433322B2827262524),
    .INIT_41(256'h5453D8D7897F7E7D7C7B7A7776757471706F6E6A696867666561605F5E5D5C5B),
    .INIT_42(256'h5453524F474241403F3E3D383736350E0B0A0908070605D7D6D5D4D358575655),
    .INIT_43(256'h8C8B8A898885767574737271706F6E6A69686766656261605F5E5D5C58575655),
    .INIT_44(256'h43423D3C3B380C0B05F2EBEAE9E8E5DCD8D7D6D5D2CFC7C3C2C1C0BFBEBDBCB8),
    .INIT_45(256'hA8A7A4A3A2A1A09E9D9C9B9A96959493928E8C8B85726B6A655C5857524F4744),
    .INIT_46(256'h1A171615141312110E0C0B05F2EBEAE5DCD8D7D6D5D2CFC7C4C3BCBBB8ABAAA9),
    .INIT_47(256'h5F5E5D5C585756555453524F4744433C3B382C2B2A29282726232221201D1C1B),
    .INIT_48(256'hD2CFC7C4C3BCBBB8ACABA7A6A09A979692918E8C8B8A898885726B6A65626160),
    .INIT_49(256'h29282726201A171615141312110E0B0A0908070605F2EBEAE9E8E5DCD9D8D7D6),
    .INIT_4A(256'hBCBBB8A7A6A09A92918E85726A69686766655C5958524F4744433C3B382C2B2A),
    .INIT_4B(256'h48474443423D3C3B38372726201A12110E05F2EAE9E5DCD9D8D2CFCEC8C7C4C3),
    .INIT_4C(256'hB8B7B6B5ACABAAA9A8A7A6A09A979695949392918E85726B6A655C5958524F4E),
    .INIT_4D(256'h13120E05F2ECEBE5DCD9D8D7D6D5D2CFCECDCCCBCAC9C8C7C3C2C1C0BFBEBDBC),
    .INIT_4E(256'h524E4D4C4B4A49484241403F3E3D3C37363534332C2B2A292827201A17161514),
    .INIT_4F(256'h000000000000000000000000000000726D6C656261605F5E5D5C585756555453),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h06050403020100000014B40E6800001000000000000000000000000000000000),
    .INIT_52(256'h262524232221201F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807),
    .INIT_53(256'h000000000000000000000000005A00FF3310007F8010302F2E2D2C2B2A292827),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_00(256'h090009090009090909000909000909090907090907090909090909000912120D),
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
    .INIT_15(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_16(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_17(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_18(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_19(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_1A(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_1B(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_1C(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_1D(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_1E(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_1F(256'h090A090A090A090A090A090A090A090909090909090909090909090909090909),
    .INIT_20(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_21(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_22(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_23(256'h090A090A090A0A0A090A090A090A090A0A0A090A090A090A090A090A090A090A),
    .INIT_24(256'h090A0A0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_25(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_26(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A0A0A090A),
    .INIT_27(256'h090A090A090A0A0A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_28(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_29(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_2A(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_2B(256'h090A090A090A090A090A090A090A090A090A090A090A090A0A0A090A090A090A),
    .INIT_2C(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_2D(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_2E(256'h090A090A090A090A090A090A090A090A0A0A090A090A090A090A090A090A090A),
    .INIT_2F(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_30(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_31(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_32(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_33(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_34(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_35(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_36(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_37(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_38(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_39(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_3A(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_3B(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_3C(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_3D(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_3E(256'h090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A),
    .INIT_3F(256'h090B090B090B090B090B090B090B090B0B0A090A090A090A090A090A090A090A),
    .INIT_40(256'h090B0A0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_41(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_42(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_43(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_44(256'h090B090B090B090B090B090B090B0A0B090B090B090B090B090B090B090B090B),
    .INIT_45(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_46(256'h090B090B090B0909090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_47(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_48(256'h090B090B090B090B090B090B090B090B090B0B0B090B090B090B090B090B090B),
    .INIT_49(256'h090B0B0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_4A(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_4B(256'h090B090B090B090B090B0909090B090B090B090B090B090B090B090B090B090B),
    .INIT_4C(256'h090B090B090B0B0B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_4D(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_4E(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_4F(256'h0B0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_50(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_51(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B0B0B090B),
    .INIT_52(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_53(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_54(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_55(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_56(256'h090B090B090B090B0B0B0B0B090B090B0B0B0B0B090B090B090B090B090B090B),
    .INIT_57(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_58(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_59(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_5A(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_5B(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_5C(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_5D(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_5E(256'h090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B),
    .INIT_5F(256'h090C090C090C090C090C090C090C090B090B090B090B090B090B090B090B090B),
    .INIT_60(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_61(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_62(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_63(256'h090C090C090C0A0C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_64(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_65(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_66(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_67(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_68(256'h090C090C090C090C090C090C090C090C090C0A0C090C090C090C090C090C090C),
    .INIT_69(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_6A(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_6B(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_6C(256'h090C090C090C090C090C090C090C090C090C0A0C090C090C090C090C090C090C),
    .INIT_6D(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_6E(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_6F(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_70(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_71(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_72(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_73(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_74(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_75(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_76(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_77(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_78(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C0B0C),
    .INIT_79(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_7A(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_7B(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C0A0C090C090C),
    .INIT_7C(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_7D(256'h090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C),
    .INIT_7E(256'h0C0D0C0D0C0D0D0900090909090C090C090C090C090C090C090C090C090C090C),
    .INIT_7F(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0C0D0C0D0C0D0C0D0C0D0C0D0C0D0C0D),
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
    .INITP_02(256'h0000000000000000000000000000000008000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h00F0000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000100000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0D0C080D0C0C090C0C090C09090909090C090C090D090D0D0D0D0D0D0D0D0D0D),
    .INIT_01(256'h120D0C0D12120D0C0D12120D0C0C090C0D0C0D0C080D0C080C0D0C080D0C080C),
    .INIT_02(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D12120D0C0D12120D0C0D12120D0C0D12),
    .INIT_03(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_04(256'h0C0D0D0D0D0D0C0D0D0D0D0D0C0D0D0C0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_05(256'h0D0D0C0D0D0D0D0D0C0D0D0D0D0D0C0D0D0C0D0D0D0D0D0C0D0D0D0D0D0C0D0D),
    .INIT_06(256'h0D0C0D0D0C0D0D0D0D0D0C0D0D0D0D0D0C0D0D0C0D0D0D0D0D0C0D0D0D0D0D0C),
    .INIT_07(256'h0D0D0D0C0D0D0C0D0D0D0D0D0D0D0D0D0D0D0C0D0D0C0D0D0D0D0D0C0D0D0D0D),
    .INIT_08(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_09(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0A(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0B(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0C(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0D(256'h0D0D0D0D0909080D0908090D0D0909090D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0E(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0F(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_10(256'h090D09090D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_11(256'h09090D0D0D12120D0D0D0D0D090D0D0D09090D0D0D0D0D0D0B0D090D0D000D0D),
    .INIT_12(256'h000057000009080D09090D0D0D090D0D09090D090D0D0D0D0D0D0D0909090D0D),
    .INIT_13(256'h00000100FF181858000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0101010101010100010100010101010101010101010100010000000000000000),
    .INIT_16(256'h0303020202020202020202020202020202020202020202020202010101010101),
    .INIT_17(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_18(256'h0404040403030303030303030303030303030303030303030303030303030303),
    .INIT_19(256'h0505050505050505050505050505050505050505050505050505050505050505),
    .INIT_1A(256'h0505050505050505050505050505050505050505050505050505050505050505),
    .INIT_1B(256'h0606060606060606060606060606060606060606060606060606060605050505),
    .INIT_1C(256'h0707070707070707070707070707070707060606060606060606060606060606),
    .INIT_1D(256'h0808080707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0908080808080808080808080808080808080808080808080808080808080808),
    .INIT_1F(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A09090909090909),
    .INIT_20(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A0A0A0A0A0A0A0A0A),
    .INIT_21(256'h000B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_22(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_23(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_24(256'h161616161616161616161616161616161616150C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_25(256'h1717171717171717171616161616161616161616161616161616161616161616),
    .INIT_26(256'h1A1A1A1A1A191919191919191919191917171717171717171717171717171717),
    .INIT_27(256'h1B1B1B1B1B1B1B1B1B1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_28(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_29(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1B1B1B1B1B1B1B1B1B),
    .INIT_2A(256'h1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1C1C1C1C1C1C1C1C),
    .INIT_2B(256'h2020202020202020201F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1E1E1E1E1E),
    .INIT_2C(256'h2121212121212121212121212121212121202020202020202020202020202020),
    .INIT_2D(256'h2323232121212121212121212121212121212121212121212121212121212121),
    .INIT_2E(256'h2323232323232323232323232323232323232323232323232323232323232323),
    .INIT_2F(256'h0100000000000000FFFFFFFF2323232323232323232323232323232323232323),
    .INIT_30(256'h0303030302020202020202020202020202020202020201010101010101010100),
    .INIT_31(256'h0404040404040404040404040404040404040404040404040404040303030303),
    .INIT_32(256'h0404040404040404040404040404040404040404040404040404040404040404),
    .INIT_33(256'h0606060606060505050505040404040404040404040404040404040404040404),
    .INIT_34(256'h0606060606060606060606060606060606060606060606060606060606060606),
    .INIT_35(256'h0606060606060606060606060606060606060606060606060606060606060606),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070606),
    .INIT_37(256'h0808080808080808080808080807070707070707070707070707070707070707),
    .INIT_38(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_39(256'h0909090909090909090909090808080808080808080808080808080808080808),
    .INIT_3A(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_3B(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A0A0A0A090909),
    .INIT_3C(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_3D(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_3E(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_3F(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0C0C0C0C0C0C0C),
    .INIT_40(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_41(256'h10100E0E0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_42(256'h1717171717171717171717171717171717171717171717111111111110101010),
    .INIT_43(256'h1818181818181717171717171717171717171717171717171717171717171717),
    .INIT_44(256'h1A1A1A1A1A1A1A1A1A1818181818181818181818181818181818181818181818),
    .INIT_45(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_46(256'h1C1C1C1C1C1C1C1C1C1C1C1C1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_47(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_48(256'h1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1C1C1C1C1C1C1C),
    .INIT_49(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D),
    .INIT_4A(256'h20202020202020202020201F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4B(256'h2121212121212121212121212121212121212020202020202020202020202020),
    .INIT_4C(256'h2222222222222222222222222222222222222222222221212121212121212121),
    .INIT_4D(256'h2424242422222222222222222222222222222222222222222222222222222222),
    .INIT_4E(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_4F(256'h0000000000000000000000000000002424242424242424242424242424242424),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h18181818181878A00000000000000000000000D32D0000000000000000000000),
    .INIT_52(256'h1818181818181818181818181818181818181818181818181818181818181818),
    .INIT_53(256'h0000000000000000000000000020201100000000000018181818181818181818),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_7E(256'h3844384438443844406044604460446044604460446044604460446044604460),
    .INIT_7F(256'h3844384438443844384438443844384438443844384438443844384438443844),
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
    .INIT_00(256'h14443C48443810443810443C5044604438443844384438443844384438443844),
    .INIT_01(256'h381044385C381044385C381044384438443814443C4844403814443C48444038),
    .INIT_02(256'h382444382044382444382444382444385C381044385C381044385C381044385C),
    .INIT_03(256'h2444382444382444382044382444382444382044382444381C44382444382444),
    .INIT_04(256'h44381C44382444381C4438244438244438244438244438204438244438204438),
    .INIT_05(256'h382444381C44382444381C44382444382444381C44382444381C443824443824),
    .INIT_06(256'h2444382444381C44382444381C44382444382444381C44382444381C44382444),
    .INIT_07(256'h44382444382444381C44382444381C44382444382444381C44382444381C4438),
    .INIT_08(256'h381C44382444382444381C44382444381C44382444382444381C44382444381C),
    .INIT_09(256'h2444381C44382444382444381C44382444381C44382444382444381C44382444),
    .INIT_0A(256'h44382444381C44382444382444381C44382444381C44382444382444381C4438),
    .INIT_0B(256'h381C44382444381C44382444382444381C44382444381C44382444382444381C),
    .INIT_0C(256'h1C44381C44381C44381C44381C44381C44381C44381C44381C44381C44381C44),
    .INIT_0D(256'h60446044604440385C3C4C4438446044381C44381C44381C44381C44381C4438),
    .INIT_0E(256'h6044604460446044604460446044604460446044604460446044604460446044),
    .INIT_0F(256'h6044604460446044604460446044604460446044604460446044604460446044),
    .INIT_10(256'h1044604460446044604460446044604460446044604460446044604460446044),
    .INIT_11(256'h443C4844385C3810443814443C484438443C4C443810443818443C4C443A4438),
    .INIT_12(256'h0000030000404038443C4844381044384440381044604438104438443C4C4438),
    .INIT_13(256'h000200007F000003000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0202020202020002020002000202020202020202020202020202020202000200),
    .INIT_15(256'h0202020202020200020200020202020202020202020200020002020202020200),
    .INIT_16(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_17(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_18(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_19(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_1A(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_1B(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_1C(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_1D(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_1E(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_1F(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_20(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_21(256'h0002020202020202020202020202020202020202020202020202020202020202),
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
    .INIT_2F(256'h0202020202020202010101010202020202020202020202020202020202020202),
    .INIT_30(256'h0202020202020202020202020202020202020202020202020202020202020200),
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
    .INIT_4F(256'h0000000000000000000000000000000202020202020202020202020202020202),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h000000000000000000000000000000020000007F000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000020000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
