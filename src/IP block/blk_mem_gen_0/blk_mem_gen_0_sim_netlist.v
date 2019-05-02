// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 19 14:23:44 2019
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
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000008000000240),
    .INITP_01(256'hAA80000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_03(256'h002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'hAAA0000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_07(256'h0002AEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_08(256'h0000000000080000000000000000000000000000000000000000000000000000),
    .INITP_09(256'hAE80000000000000000000000010000000008000000000000100000000000100),
    .INITP_0A(256'hAAAAAAAAAAAFAFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAA),
    .INITP_0B(256'h002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'hAA80000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'hBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_0F(256'h0015555555402AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_00(256'h616363757457146C741A726C6C570C6C7312726C6C57D35757D3575656585857),
    .INIT_01(256'h5E5A5D596357635C636357635B636357635A6363576359630061626272635763),
    .INIT_02(256'h5DAC6D6E6D5F5D5C5D5F6D5D5F565D5F6E605E505E606E5E604A5E60605C5F5B),
    .INIT_03(256'h657765657268767E72656857655E60645D5F60705F6F5E605D5F705E6F5D6E5F),
    .INIT_04(256'h667164776A686AA272666B7A6B796B6B696B6B6A78AC5F69695D6A5E66646666),
    .INIT_05(256'h5D5F60705F6F5E605D5F705E6F5DBE605EFC6D6E886957696671667165776671),
    .INIT_06(256'h696B6B6A78FC606A6A5E695D6665666664776464726776CE72646757655E6064),
    .INIT_07(256'h25625762D86A576A667166716477667166716577696769F272666B7A6B796B6B),
    .INIT_08(256'h8C7A8B7A8A7A897A887A877A867A857A847A837A827A817A807B7F7D7E7D7C7B),
    .INIT_09(256'hA07D9F7D9E7B9D579C9B9A91997A987A978F96919594937B9291908F8E7A8D7A),
    .INIT_0A(256'hB4B3B27BB1B0AF9BAE57AD72AC7AAB7AAA7AA97AA87AA7A2A6A4A5A4A3A2A17B),
    .INIT_0B(256'hC472C372C28FC157C0A2BFA4BEA4BDA2BC7ABB8FBA9BB977B872B757B6A4B5B0),
    .INIT_0C(256'hD48FD357D2A2D172D057CFB0CEA4CD7DCC7BCB7ACA7AC97AC87AC77AC672C58F),
    .INIT_0D(256'hE48FE391E27BE17AE07ADFA2DE77DD7ADC9BDBB3DAB3D99BD872D78FD672D572),
    .INIT_0E(256'hF47AF37AF27AF17AF07AEF7AEE57EDA2EC8FEB7AEAA2E97BE87AE79BE691E57A),
    .INIT_0F(256'h047A037A027A017A007AFF9BFE91FD7AFC8FFB91FA7BF9A4F8B0F77AF67DF594),
    .INIT_10(256'h147A1372127A117A10A40FB00E7A0D7D0C940B7A0A7A09A20877077A067A057A),
    .INIT_11(256'h248F237B2272217B20911F7A1E7D1D7B1C7B1BB01A9B19B318B3179B16A41591),
    .INIT_12(256'h34B03394327A317A30A22FB32E722D722C942B912A7A297D28A42772267225A4),
    .INIT_13(256'h447A437A427A417A407D3FA43E723D723CA43B8F3A7B397B38A237573672357B),
    .INIT_14(256'h547A537A527A517A507A4F7A4E7B4DA24C574B724A7B49B048944772467B4591),
    .INIT_15(256'h6491637A627B61B0607D5F7B5E7D5D7B5C7B5BB05A57598F587D5794567A557A),
    .INIT_16(256'h747A737A727A717A70A46F916E916D576C776B7D6A7A697A688F6757667A65A4),
    .INIT_17(256'h847A837A827A8172807A7F777EB07D9B7C777B727A7A797A789177577677757D),
    .INIT_18(256'h947A937A927A917A90578F7A8E7A8DB38C9B8B9B8AB3897B88B0877D867B857A),
    .INIT_19(256'hA47AA37AA27AA17AA07A9F7A9E7A9D579C7A9B7A9A7A997A987A977A967A957A),
    .INIT_1A(256'hB4B3B37AB257B18FB057AFB3AEB0AD7AAC7AAB7AAA7AA97AA87AA77AA67AA57A),
    .INIT_1B(256'hC457C37AC27AC172C07ABF7ABE7ABD7ABC7ABB7ABA7AB97AB872B7B3B69BB59B),
    .INIT_1C(256'hD47AD37AD257D17AD07ACF7ACE7ACD7ACC57CB7ACA57C97AC87AC77AC67AC57A),
    .INIT_1D(256'hE4A2E3A2E29BE172E07ADF7ADE7ADD7ADC7ADB7ADA7AD97AD872D77AD69BD591),
    .INIT_1E(256'hF48FF372F27AF1A4F07DEFA4EE7DED72EC7AEB7AEA7AE97AE8A4E77DE67AE59B),
    .INIT_1F(256'h047D039B02A201A2009BFF7AFE77FD8FFCA4FB7AFA7AF9A4F87DF77AF67AF557),
    .INIT_20(256'h149B137D127A117A107A0F7D0E940D720C720BA40A8F0994087A077D06940594),
    .INIT_21(256'h247D237D2294217220721FA41E8F1D941C911B941A72195718A4178F16941572),
    .INIT_22(256'h34943372325731A4308F2F942E7A2D7A2C912B942A72297228B327A22672259B),
    .INIT_23(256'h457D44944394427D417A403A3F773E723D723C773B3A398F3891377A367A3591),
    .INIT_24(256'h557A547A537A523A517D507A4F8F4E914D7B4C7A4B774A8F49724872478F4677),
    .INIT_25(256'h653A647D637A628F6191607B5F9B5EA25D7A5C7A5B915A94598F587A57B0567B),
    .INIT_26(256'h757A747A73917294717A707A6F7B6E916D7A6C8F6BA26A57698F687A67B0667B),
    .INIT_27(256'h85728472838F82778157803A7F7D7E7A7D7A7CB07BA27A94797A787A779B76A2),
    .INIT_28(256'h95779491937A927A917A907A8F7A8E7A8D7A8C7A8B7A8A7A897A887A8777868F),
    .INIT_29(256'hA591A47BA39BA2B3A1B0A07A9F8F9E919D7B9C7A9B7A9A7A997A987A977A967A),
    .INIT_2A(256'hB572B47AB37AB27AB17AB07AAF7AAE7AAD7AAC7AAB7AAA9BA9B3A8B0A77AA68F),
    .INIT_2B(256'hC572C47BC37DC2A4C17DC09BBF77BE72BD72BC7BBB7DBAA4B97AB8B0B73AB657),
    .INIT_2C(256'hD57AD457D38FD257D18FD07ACF7ACE72CD7ACC7ACB7ACA7AC97DC89BC777C672),
    .INIT_2D(256'hE5A2E48FE37AE2A2E17BE07ADFA4DEB0DD7ADC7DDB94DA7AD97AD87AD77AD67A),
    .INIT_2E(256'hF57AF47AF37AF27AF17AF077EFB0EE77EDB0EC7AEB3AEAB3E957E872E77AE657),
    .INIT_2F(256'h057A04A203B3027201720094FF91FE7AFD7BFCA2FB57FA72F97BF8B0F794F67A),
    .INIT_30(256'h15A414B013A4127A117A107A0F7A0E7A0D7A0C7A0B940AB0097A087A077A067A),
    .INIT_31(256'h257A247A237A227A217A207A1F7A1E7A1D7A1C771B941AA419B018A417771694),
    .INIT_32(256'h357A349B337D327B3172307A2F8F2E572D7A2C912B572A77297D287A277A267A),
    .INIT_33(256'h457A447A437A427A415740B03F7A3E7A3D7D3CA43B573AB0397A387A377D36A4),
    .INIT_34(256'h5572547A53B05277517A507A4F7A4E7A4D7A4C7A4B7A4A7A497A487A477A467A),
    .INIT_35(256'h657A647A637A627A617A607A5F7A5EA45D915C9B5B7B5A7259A45891579B567B),
    .INIT_36(256'h7557748F738F7257717A707A6F576E7A6D576C7A6B7A6A72697A687A677A6657),
    .INIT_37(256'h85B384B08377827281B3807A7FB07E7B7D7A7C7A7B7A7AA4797D787A777A767A),
    .INIT_38(256'h957A947A93919294917290728FB38EA28D9B8CB38B578A72897A88B087778672),
    .INIT_39(256'hA594A4B0A394A257A172A07A9F7A9E7A9D919C949B729A5799A4988F9794967A),
    .INIT_3A(256'hB57DB47BB372B257B1A4B091AFA4AEA4AD7DAC7BAB72AA57A9A4A891A7A4A67A),
    .INIT_3B(256'hC57AC47AC37AC27BC191C07ABF8FBEA2BD57BCA4BB7DBA7AB97AB88FB77AB6A4),
    .INIT_3C(256'hD57AD494D37DD27AD17AD07ACF7ACE7ACD7ACC7ACB9BCAA2C97AC87AC791C694),
    .INIT_3D(256'hE57AE48FE3A2E257E194E07DDF7ADE8FDDA2DC57DB7ADA7AD97AD87AD77AD67A),
    .INIT_3E(256'hF58FF491F37BF27AF17AF0A2EF72EE7AED7AEC7AEB7AEA7AE97AE87AE794E67D),
    .INIT_3F(256'h067D05A404770391027A017A007AFF7AFE7AFD72FCFBFAB3F99BF8B3F7B0F67A),
    .INIT_40(256'h167A157A14B0133A12571172107A0F7A0E720DB00C7D0B9B0A7709720872077B),
    .INIT_41(256'h2691257A247A2391227B217720B01F7A1E7A1D7A1C721B7A1A7A197A1857178F),
    .INIT_42(256'h367235913472337732B0317A307A2F7A2E7A2D7A2C7A2B7A2A7A297A287A277B),
    .INIT_43(256'h467A457D4494437A427A41A240773F7A3E573DA23C8F3B7A3A8F39A438B03777),
    .INIT_44(256'h567A5591547B535752A2518F507A4F8F4EA44D3A4CB34B574A72497A48A447B0),
    .INIT_45(256'h667A657A647A637A627A617A60A45FB05E7A5D7D5C945B7A5A7A597A58A2578F),
    .INIT_46(256'h75947477739472A471B070A41E7A6FA46EB06D7A6C7D6B946A7A697A687A677A),
    .INIT_47(256'h85B384A483A4827A81A480A47FB37E7A7D7A7C7B7B8F7AA47957785777A4768F),
    .INIT_48(256'h95A294579372927B91B090948F728E7B8D918C7A8B918AFB8957887287948691),
    .INIT_49(256'hA58FA477A391A2FBA157A0729F949E919D949CB09B7A9A7A997A987A977A967B),
    .INIT_4A(256'hB57AB47AB37BB2A2B157B072AF7BAEB0AD94AC7AAB7AAA7AA9A4A857A772A694),
    .INIT_4B(256'hC4A4C37DC257C1B0C07ABF7ABE7DBDA4617ABC7BBBA2BA57B972B87BB7B0B694),
    .INIT_4C(256'hD47DD37AD27AD172D0A4CFFBCE72CDB0CC9BCBB0CAB3C9A4C87AC77AC691C5A4),
    .INIT_4D(256'hE47DE37AE27AE17AE0A4DF91DE7ADD72DC9BDB7DDA7BD972D87AD791D657D577),
    .INIT_4E(256'hF457F37AF2A4F191F09BEF7BEE72ED91EC57EB77EA7DE97AE87AE791E657E577),
    .INIT_4F(256'h04B0037D02FB01720057FF91FEA4FD91FC91FB94FA7DF957F87AF77AF67AF557),
    .INIT_50(256'h14FB137212B01177107A0F7A0E7A0D7A0C7A0B7A0A7A097A087A077A067A058F),
    .INIT_51(256'h247A237A227A217A207A1F7A1E7A1D7A1C7A1B571A7A197A187A178F16B0157D),
    .INIT_52(256'h347A33573257317A307A2F572E7A2D7A2C7A2B7A2A7A297A287A277A267A257A),
    .INIT_53(256'h4472435742774194409B3FB33E913D723CB03B943A94397D3872377D367A357A),
    .INIT_54(256'h5472537A527A517250574F774E944D9B4CB34B7A4A72497A4857477A467A457A),
    .INIT_55(256'h64A463A4627D61B060775F725EB35D575C7A5B7A5A7A5957587A577A567A557A),
    .INIT_56(256'h74A4737D727A717A70726F7A6EFB6DFB6C7D6B7D6AFB69FB6872677A667A657D),
    .INIT_57(256'h8472837A82A4817D807A7F577E8F7D7A7C7B7B7D7A7A7972787A77B0767B757A),
    .INIT_58(256'h945793A4928F919490A48F7D8E7B8D728C578BA48A9189A488A4877D8672857A),
    .INIT_59(256'hA49BA37DA294A17AA0A49FA49E7A9D7B9C729B9B9A7D997A9894978F96A49557),
    .INIT_5A(256'hB457B372B27AB191B094AF72AE57ADA4AC8FAB94AA7AA97AA8A2A77BA672A572),
    .INIT_5B(256'hC4A2C37BC272C177C07DBFA4BE7ABDA2BC7BBB72BA72B99BB87DB794B6B0B594),
    .INIT_5C(256'hD47DD391D294D172D057CFA4CE8FCD94CC7ACB91CA94C972C872C7B3C6A2C57A),
    .INIT_5D(256'hE48FE3A2E257E17AE091DF94DE72DD57DCA4DB8FDA94D972D89BD77DD672D59B),
    .INIT_5E(256'hF4B0F372F28FF17AF0B0EF7BEE7AED94EC7DEB7AEA7AE97DE894E794E67DE57A),
    .INIT_5F(256'h047A037A02910194007AFF7AFE94FD91FC7AFB7AFA91F957F872F7B0F672F572),
    .INIT_60(256'h147A13941291117A107A0F910E570D940C7D0B7A0A7A097A087A077A069B05A2),
    .INIT_61(256'h247A23912294217A207B1F911E7A1D8F1CA21B571A8F19A418B0177A1691157B),
    .INIT_62(256'h34A2337A327A319130942F8F2E7A2DB02C7B2B8F2A7A29B0287B279B26A2257A),
    .INIT_63(256'h447A439B42B0417A407D3F3A3E943DA23C573B723A7B3991387D3757367A359B),
    .INIT_64(256'h547D537A527A517D509B4F7A4E7A4D7A4C7A4B7A4A7B4991488F477A467A457A),
    .INIT_65(256'h647A637A627A617A607A5F7A5E775D915C7A5B7A5A7A597A587A577A567A559B),
    .INIT_66(256'h747A737A727A717A707A6F7A6E7A6D7A6C7A6B576A7D697A687A677A667A657A),
    .INIT_67(256'h847A83A2827D819480727F727E947D7D7CA27B7A7A7B79B0789B77577672757A),
    .INIT_68(256'h947D937B927A917A90948F918E7B8D728C7A8B7A8AB0893A88578772867A857A),
    .INIT_69(256'hA4B0A377A27AA17AA07A9F729E7A9D7A9C7A9BA49AB099729872977D96A4957A),
    .INIT_6A(256'hB47AB37AB27AB1A2B077AF7AAEA4ADB0AC7AAB7DAA94A97AA87AA772A67AA57A),
    .INIT_6B(256'hC47AC37AC291C1A4C0A4BF91BE7ABDA4BCB0BB7ABA7DB994B87AB77AB6A2B577),
    .INIT_6C(256'hD4B0D394D27AD17DD094CF7ACE7ACD7ACC72CB7ACA7AC93AC8B3C757C672C57A),
    .INIT_6D(256'hE47BE3B0E294E172E07BDF91DE7ADD72DC7BDB91DA7AD97BD8A2D757D672D57B),
    .INIT_6E(256'hF47AF37AF27AF17AF07AEF7AEE7AED8FEC57EB57EA8FE97AE87BE7A2E657E572),
    .INIT_6F(256'h04770372027A017A0091FF94FE7AFD7AFC7AFB7AFA7AF97AF87AF77AF694F5B0),
    .INIT_70(256'h147A137A1291115710770F7D0E7A0D7A0C910B570A77097D087A077706B0059B),
    .INIT_71(256'h247723B022942157207A1F7A1E9B1D7D1C7B1B721A7A197A187A177A16721572),
    .INIT_72(256'h347A337A327A317A307A2F7A2E7A2D7A2C572BB32AB0297A287A277A267A257A),
    .INIT_73(256'h447A437A428F415740573F8F3E7A3D7A3C7A3B7A3A7A397A387A377A367A357A),
    .INIT_74(256'h547A5357527A517A507A4F7A4E574D8F4C7A4B7A4A7A497A487A47B04677457A),
    .INIT_75(256'h647A637A6272617A608F5F725E725D8F5C915BA45AA45991587A5757567A557A),
    .INIT_76(256'h747D73A4728F715770A46F7D6E7A6D7A6CA46B7D6A7A697A687A67B3669B657A),
    .INIT_77(256'h847A83FB8294817A807A7FB07E7B7D7A7CA27B9B7A9B799178A4777D76727572),
    .INIT_78(256'h9472935792A4918F90948F7A8E7A8D918C948B728A5789A4888F8794867A857A),
    .INIT_79(256'hA48FA377A2A2A17DA0949F729E729D949C7D9BA29A9B99B39857977296919594),
    .INIT_7A(256'hB47BB37AB27AB194B0B0AF94AE57AD72AC7AAB77AA8FA99BA857A772A657A59B),
    .INIT_7B(256'hC47AC37AC291C194C07ABF7ABE9BBDA2BC7ABB7ABA91B994B87AB77AB67AB53A),
    .INIT_7C(256'hD4A2D377D29BD17DD07ACF7ACE7DCD9BCC72CBA4CA7DC97AC87AC78FC69BC5A2),
    .INIT_7D(256'hE47AE37AE27AE17AE094DF7DDE7ADD7ADC7ADB7ADA7AD977D8A2D78FD67AD58F),
    .INIT_7E(256'h26F426F326F227F126F02625570774577357EB7AEAA4E957E87AE77AE67AE57A),
    .INIT_7F(256'h2704260327022701260027FF26FE27FD27FC26FB27FA26F927F826F726F627F5),
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
    .INITP_00(256'h20904120824104820904120824104800000000000000008421086A952A6D0500),
    .INITP_01(256'h0000000000000000001200000000000000000000000000000001000208241048),
    .INITP_02(256'hFFFFFFFFFFFFFFFFE00000000000000000400000010000000000000400000000),
    .INITP_03(256'h0000000003FFFFFFFFFFFFFFFFFFFF80000000000000000000000000007FFFFF),
    .INITP_04(256'hFFFC0000000007FFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFF00000000000000000),
    .INITP_05(256'h03FF80000000000000FFFFFFFFFFFFFFFFFC000000000007FFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFF80000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFE000000),
    .INITP_07(256'hFFFFFF0200000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFF8000000000000003FFFFFFFFFFFFFFFFFFF001FFFFFFFFFFFFFF),
    .INITP_09(256'h0000000000000000007FFFFFFFFFFFFFFFFFFE00000000000000003FFFFFFFFF),
    .INITP_0A(256'h0000000000000000000000000000000000000500000000000000C00000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h242FEC16ED2EED1D2EEDED57EDEC57EC5557577457ED57EC5725570727062705),
    .INIT_01(256'h046CEC2104046BEF2004046BEE1F04046BEDEFA4EE31EE30EE2A30EE1DEC2EEC),
    .INIT_02(256'h222119201E1E1F24181E181E201E1E1F211822242404046CEF2304046CEE2204),
    .INIT_03(256'h211B1E1B1E1F211B201E1E22241A1E1A1E20211E22211A1E321E241F191E191E),
    .INIT_04(256'h1E1BF10919F0081E081E1CF2081E081E1AF10818F01D231D1D23241C1C321C23),
    .INIT_05(256'h1E0B1E1BF40B19F30A1E0A1E1CF50A1E0A1E1AF40A18F3091E091E1DF2091E09),
    .INIT_06(256'hF80D1E0D1E1BF70D19F60C1E0C1E1CF80C1E0C1E1AF70C18F60B1E0B1E1DF50B),
    .INIT_07(256'h1E1DFB0F1E0F1E1BFA0F19F90E1E0E1E1CFB0E1E0E1E1AFA0E18F90D1E0D1E1D),
    .INIT_08(256'h1E111E1DFE111E111E1BFD1119FC101E101E1CFE101E101E1AFD1018FC0F1E0F),
    .INIT_09(256'h02131E131E1D01131E131E1B001319FF121E121E1C01121E121E1A001218FF11),
    .INIT_0A(256'h161805151E151E1D04151E151E1B03151902141E141E1C04141E141E1A031418),
    .INIT_0B(256'h3409083308171E171E1D07171E171E1B06171905161E161E1C07161E161E1A06),
    .INIT_0C(256'h141334131233121134111033100F340F0E330E0D340D0C330C0B340B0A330A09),
    .INIT_0D(256'h08380B370A360935087457AF2574B557252572757D1734171633161534151433),
    .INIT_0E(256'h0C48134712460B450A440D430C420B410A40113F103E093D083C0F3B0E3A0939),
    .INIT_0F(256'h10581757165611551054175316520F510E50154F144E0D4D0C4C0F4B0E4A0D49),
    .INIT_10(256'h652C01282857287472641763166215611460155F145E135D125C135B125A1159),
    .INIT_11(256'h7241722929723C68292904046B2D2D662D37672D29722C662D2D2D2A2DFB2C4A),
    .INIT_12(256'h00000000000000FE0100550D2A72546A2A2A572A2C721E2C572C2B292B2C6929),
    .INIT_13(256'h07060C05030F008002FF00310000000000000000000000000000000000000000),
    .INIT_14(256'h82817C7B067A797877767504706F0B6E0E6D6C6B6A6867666564636261241B08),
    .INIT_15(256'h030201FCFBFAF9F8F7F6F5F409F1F00DEFEEEDEAE1BFA89B88878605850A8483),
    .INIT_16(256'h8F8E8D898885848584838281807C7B75747371706A613F281B09080706050404),
    .INIT_17(256'hBCBBBAB9B8B7B2B1B0AFAEABAAA9A8A7A4A1A09F9E9D9C9B9998979695949190),
    .INIT_18(256'h0D0908050405040100F4F3F1F0EAE1D8D7D6D5D4D1D0CFCECDCAC4C2C1C0BFBE),
    .INIT_19(256'h3B3A39383736333231302F2E2D282421201F1E1D1C1B19181716151413100F0E),
    .INIT_1A(256'h8385848180747371706A6766656463626159585756555453504F4E4D4A443F3C),
    .INIT_1B(256'hF1F0EFEEEDEAE1D9D8D4D3CDCAC4BFB7B6B3B2AEADA8A4A1A09B94938D8A8984),
    .INIT_1C(256'h443F3736333231302F2E2D2824211B14130D0A090403060500FFFCFBFAF9F4F3),
    .INIT_1D(256'h89888786858483828685807F7C7473706F6E6D6C6B6A61595857565554534D4A),
    .INIT_1E(256'h050403020100FFFEFCF4F3EAE1D4D3CDCAC4BFB7B6AEADA8A4A19B94938D8B8A),
    .INIT_1F(256'h7C7574736A6154534D4A4544403F37362E2D292824211B14130D0B0A03020706),
    .INIT_20(256'hB8B7B6B3B2B1B0AFAEADAAA9A8A4A19B999897969594938D8B8A838287867F7E),
    .INIT_21(256'hFAF9F8F7F607F5F4EAE1D9D8D7D6D5D4D3CDCAC9C8C7C6C5C4C1C0BFBCBBBAB9),
    .INIT_22(256'h333231302F2E2B2A292824211B1918171615140D0C0B0A0302010706FFFEFCFB),
    .INIT_23(256'h7A79787776756A615958575655544D4A4948474645444241403F3C3B3A393837),
    .INIT_24(256'h5A595854535251504F4E4A4948474645442A271B1A1918A78887867F7E7D7C7B),
    .INIT_25(256'hDCDBDAD9D8D7CECAC9C8C7C4A79B71706F6E6D6C6B686766656463625E5D5C5B),
    .INIT_26(256'hB2B1B0AFAEAAA7A49E9B6B626158574E4A4944271BEBE8E7E6E5E4E3E2E1DEDD),
    .INIT_27(256'h3736333231302F2E2D2A27241E1BEBE2E1D8D7CECAC9C8C7C4BCBBBAB9B8B7B6),
    .INIT_28(256'h6D6C6B65646362615B5A59585754535251504F4E4A4948474645443C3B3A3938),
    .INIT_29(256'hE5E4E3E2DDDCDBDAD9D8CECBCAC9C8C4BCBBB6B3B2AEADAAA7A49E9B71706F6E),
    .INIT_2A(256'h6B68676665645E5D5C5B5A4E4B4A443C36333231302F2E2D2A27241E1BEBE7E6),
    .INIT_2B(256'h4B4A443C362E2D2A27241F1E1B1AEBE8E7DEDDCECBCAC4BCB6AEADAAA7A49E9B),
    .INIT_2C(256'hBCB6B3B2B1B0AFAEADAAA7A4A3A2A1A09F9E9B9A99986B686762615E5D58574E),
    .INIT_2D(256'h201F1E1A19181716EBE8E7E6E5E4E3E2E1DEDDDCDBDAD9D8D7CECBCAC9C8C7C4),
    .INIT_2E(256'h5B5A595854535251504F4E4A4948474645443C36333231302F2E2A2724232221),
    .INIT_2F(256'h403F0D0C080BFDFCFBFAF9F8F78E8D8C8B71706F6E6D6C6B6766656463625D5C),
    .INIT_30(256'h746E45443F100BF7F6F4EEC5C4C3C2BF908C8B7D7C7B7A797877764544434241),
    .INIT_31(256'hABA8A7A6A5A4A39F9E9B9A999695939291908F8E8D8C8B8A8685848382817776),
    .INIT_32(256'hE8E7E6E5E1DBD8D7D6D5D4D3CFCECDCCCBCAC5C4C3C2BFB6B5B4B3B2AFAEADAC),
    .INIT_33(256'h15100B0706050403020100FAF9F8F7F6FEFDFCFBFAF7F6F5F4F3F1F0EFEEEDE9),
    .INIT_34(256'h4B4A4544434241403F373635343332312E2D2C2B2827262524231F1E1B1A1916),
    .INIT_35(256'h7978777F7E7D7C7B7A79746E6A696867666564615B585756555453524F4E4D4C),
    .INIT_36(256'hD2CFCEC6C5C4C3BFB7B6B2B1ABA8A79F9E9C9B9A999695908B878681807C7B7A),
    .INIT_37(256'h1E1C1B19181615100B07060100FDFCFBFAF9FFFEFAF9F4EEEAE9E5E4E1DBD8D3),
    .INIT_38(256'h64615B5853524F4E4D4C4B4A4946453F373635343332312B282726252423221F),
    .INIT_39(256'hA29E9D9C9B99989796908B878681807D7C7F7E7D7C7B7A79746E6A6968676665),
    .INIT_3A(256'hF7F6FAF9F4EEE5E4E1DBD8D3D2CFCECDCCCBCAC9C6C5BFB2B1ABA8A7A6A5A4A3),
    .INIT_3B(256'h5C5B5853524F4A4946453F32312B2823221E1D1C18171611100B07060100FDFC),
    .INIT_3C(256'h9897969291908B87868584838281807D7C7B7A797877767A7975746F6E656461),
    .INIT_3D(256'hD2CFCECDCCCBCAC9C6C5C4C3C2BFB7B6B5B4B3B2B1ABA8A7A6A5A4A3A29E9D9C),
    .INIT_3E(256'hFEFDFCFBFAF9F6F5F4F0EFEEEAE9E8E7E6E5E4E1E0DFDEDDDCDBD8D7D6D5D4D3),
    .INIT_3F(256'h282726252423221E1D1C181716131211100B060504030201FCFBFAF9F8F709FF),
    .INIT_40(256'h5F5E5D5C5B5857565554534F4E4D4C4B4A494544434241403F3736353433322B),
    .INIT_41(256'hD3585756555453D8D7897F7E7D7C7B7A7776757471706F6E6A69686766656160),
    .INIT_42(256'h5C585756555453524F474241403F3E3D383736350E0B0A0908070605D7D6D5D4),
    .INIT_43(256'hBFBEBDBCB88C8B8A898885767574737271706F6E6A69686766656261605F5E5D),
    .INIT_44(256'h57524F474443423D3C3B380C0B05F2EBEAE9E8E5DCD8D7D6D5D2CFC7C3C2C1C0),
    .INIT_45(256'hBBB8ABAAA9A8A7A4A3A2A1A09E9D9C9B9A96959493928E8C8B85726B6A655C58),
    .INIT_46(256'h21201D1C1B1A171615141312110E0C0B05F2EBEAE5DCD8D7D6D5D2CFC7C4C3BC),
    .INIT_47(256'h6A656261605F5E5D5C585756555453524F4744433C3B382C2B2A292827262322),
    .INIT_48(256'hDCD9D8D7D6D2CFC7C4C3BCBBB8ACABA7A6A09A979692918E8C8B8A898885726B),
    .INIT_49(256'h3B382C2B2A29282726201A171615141312110E0B0A0908070605F2EBEAE9E8E5),
    .INIT_4A(256'hCEC8C7C4C3BCBBB8A7A6A09A92918E85726A69686766655C5958524F4744433C),
    .INIT_4B(256'h5958524F4E48474443423D3C3B38372726201A12110E05F2EAE9E5DCD9D8D2CF),
    .INIT_4C(256'hC0BFBEBDBCB8B7B6B5ACABAAA9A8A7A6A09A979695949392918E85726B6A655C),
    .INIT_4D(256'h1A1716151413120E05F2ECEBE5DCD9D8D7D6D5D2CFCECDCCCBCAC9C8C7C3C2C1),
    .INIT_4E(256'h5756555453524E4D4C4B4A49484241403F3E3D3C37363534332C2B2A29282720),
    .INIT_4F(256'h0000000000000000000000000000000000000000726D6C656261605F5E5D5C58),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0B0A09080706050403020100000014B40E680000100000000000000000000000),
    .INIT_52(256'h2B2A292827262524232221201F1E1D1C1B1A191817161514131211100F0E0D0C),
    .INIT_53(256'h000000000000000000000000000000000000005A003310007F8010302F2E2D2C),
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
    .INIT_00(256'h0909090909090009090009090909000909000909090907090907090909090909),
    .INIT_01(256'h0909090909090909090909090909090909090909090909090009090909090909),
    .INIT_02(256'h0900090909090900090909090900090909090900090909090900090909090909),
    .INIT_03(256'h0909090909090900090909090909090909090909090909090909090909090009),
    .INIT_04(256'h0909090909090900090909090909090909090909090009090909090909090909),
    .INIT_05(256'h0909090909090909090909090909000909000909000909090909090909090909),
    .INIT_06(256'h0909090909000909090909090909090909090909090909000909090909090909),
    .INIT_07(256'h0009090900090909090909090909090909090909090909000909090909090909),
    .INIT_08(256'h0909090909090909090909090909090909090909090909090909090909090909),
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
    .INIT_1F(256'h0A090A090A090A090A0909090909090909090909090909090909090909090909),
    .INIT_20(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_21(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_22(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_23(256'h0A090A090A090A090A090A0A0A090A090A090A090A0A0A090A090A090A090A09),
    .INIT_24(256'h0A090A090A090A0A0A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_25(256'h0A0A0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_26(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_27(256'h0A090A090A090A090A090A0A0A090A090A090A090A090A090A090A090A090A09),
    .INIT_28(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_29(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_2A(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_2B(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A0A0A09),
    .INIT_2C(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_2D(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_2E(256'h0A090A090A090A090A090A090A090A090A090A090A0A0A090A090A090A090A09),
    .INIT_2F(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_30(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_31(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_32(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_33(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_34(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_35(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_36(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_37(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_38(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_39(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_3A(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_3B(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_3C(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_3D(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_3E(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_3F(256'h0B090B090B090B090B090B090B090A090A090A090A0A0A090A090A090A090A09),
    .INIT_40(256'h0B090B090B090B0A0B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_41(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_42(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_43(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_44(256'h0B090B090B090B090B090B090B090B090B090B0A0B090B090B090B090B090B09),
    .INIT_45(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_46(256'h0B090B090B090B090B090B0909090B090B090B090B090B090B090B090B090B09),
    .INIT_47(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_48(256'h0B090B090B090B090B090B090B090B090B090B090B090B0A0B090B090B090B09),
    .INIT_49(256'h0B090B090B090B0A0B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_4A(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_4B(256'h0B090B090B090B090B090B090B090B0909090B090B090B090B090B090B090B09),
    .INIT_4C(256'h0B090B090B090B090B090B0A0B090B090B090B090B090B090B090B090B090B09),
    .INIT_4D(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_4E(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_4F(256'h0B090B090B0A0B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_50(256'h0B0A0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_51(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_52(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_53(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_54(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_55(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_56(256'h0B090B090B090B090B090B090B0A0B0A0B090B090B0A0B0A0B090B090B090B09),
    .INIT_57(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_58(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_59(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_5A(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_5B(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_5C(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_5D(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_5E(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_5F(256'h0C090C090C090C090C090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_60(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_61(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_62(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_63(256'h0C090C090C090C090C090C0A0C090C090C090C090C090C090C090C090C090C09),
    .INIT_64(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_65(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_66(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_67(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_68(256'h0C090C090C090C090C090C090C090C090C090C090C090C0A0C090C090C090C09),
    .INIT_69(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_6A(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_6B(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_6C(256'h0C090C090C090C090C090C090C090C090C090C090C090C0A0C090C090C090C09),
    .INIT_6D(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_6E(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_6F(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_70(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_71(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_72(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_73(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_74(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_75(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_76(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_77(256'h0C090C0A0C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_78(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_79(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_7A(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_7B(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C0A),
    .INIT_7C(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_7D(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_7E(256'h0D0C0D0C0D0C0D0C0D0C0D0D0900090909090C090C090C090C090C090C090C09),
    .INIT_7F(256'h0D0D0D0D0D0D0D0D0D0D0D0C0D0C0D0C0D0C0D0C0D0C0D0C0D0C0D0C0D0C0D0C),
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
    .INITP_02(256'h0000000000000000000000000000000000400000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0007800000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000008000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h080D0C080C0D0C080D0C0C090C0C090C09090909090C090C090D090D0D0D0D0D),
    .INIT_01(256'h120D0C0D12120D0C0D12120D0C0D12120D0C0C090C0D0C0D0C080D0C080C0D0C),
    .INIT_02(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D12120D0C0D12120D0C0D12),
    .INIT_03(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_04(256'h0D0D0C0D0D0C0D0D0D0D0D0C0D0D0D0D0D0C0D0D0C0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_05(256'h0D0D0D0D0C0D0D0C0D0D0D0D0D0C0D0D0D0D0D0C0D0D0C0D0D0D0D0D0C0D0D0D),
    .INIT_06(256'h0C0D0D0D0D0D0C0D0D0C0D0D0D0D0D0C0D0D0D0D0D0C0D0D0C0D0D0D0D0D0C0D),
    .INIT_07(256'h0D0D0C0D0D0D0D0D0C0D0D0C0D0D0D0D0D0C0D0D0D0D0D0C0D0D0C0D0D0D0D0D),
    .INIT_08(256'h0D0D0D0D0C0D0D0D0D0D0C0D0D0C0D0D0D0D0D0C0D0D0D0D0D0C0D0D0C0D0D0D),
    .INIT_09(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0C0D0D0D0D0D0D0D0D0D0D0D0D0D0D0C0D),
    .INIT_0A(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0B(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0C(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0D(256'h0D0D0D0D0D0D0D0D0D0909080D0908090D0D0909090D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0E(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0F(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_10(256'h0D0D000D0D090D09090D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_11(256'h0909090D0D09090D0D0D12120D0D0D0D0D090D0D0D09090D0D0D0D0D0D0A0D09),
    .INIT_12(256'h0000000000000057000009080D09090D0D0D090D0D09090D090D0D0D0D0D0D0D),
    .INIT_13(256'h000000000000000100FF18185800000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0101010101010101010101010001010001010101010101010101010001000000),
    .INIT_16(256'h0303030303030302020202020202020202020202020202020202020202020201),
    .INIT_17(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_18(256'h0505050505040404040303030303030303030303030303030303030303030303),
    .INIT_19(256'h0505050505050505050505050505050505050505050505050505050505050505),
    .INIT_1A(256'h0605050505050505050505050505050505050505050505050505050505050505),
    .INIT_1B(256'h0606060606060606060606060606060606060606060606060606060606060606),
    .INIT_1C(256'h0707070707070707070707070707070707070707070706060606060606060606),
    .INIT_1D(256'h0808080808080808070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0909090909090808080808080808080808080808080808080808080808080808),
    .INIT_1F(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0909),
    .INIT_20(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A0A0A0A),
    .INIT_21(256'h0B0B0B0B0B000B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_22(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B0B0B0B0B),
    .INIT_23(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_24(256'h1616161616161616161616161616161616161616161616150C0C0C0C0C0C0C0C),
    .INIT_25(256'h1717171717171717171717171717161616161616161616161616161616161616),
    .INIT_26(256'h1A1A1A1A1A1A1A1A1A1A19191919191919191919191717171717171717171717),
    .INIT_27(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_28(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_29(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1B1B1B1B),
    .INIT_2A(256'h1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1C1C1C),
    .INIT_2B(256'h20202020202020202020202020201F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2C(256'h2121212121212121212121212121212121212121212120202020202020202020),
    .INIT_2D(256'h2323232323232323212121212121212121212121212121212121212121212121),
    .INIT_2E(256'h2323232323232323232323232323232323232323232323232323232323232323),
    .INIT_2F(256'h01010101000100000000000000FFFFFFFF232323232323232323232323232323),
    .INIT_30(256'h0303030303030303030202020202020202020202020202020202020101010101),
    .INIT_31(256'h0404040404040404040404040404040404040404040404040404040404040404),
    .INIT_32(256'h0404040404040404040404040404040404040404040404040404040404040404),
    .INIT_33(256'h0606060606060606060606050505050504040404040404040404040404040404),
    .INIT_34(256'h0606060606060606060606060606060606060606060606060606060606060606),
    .INIT_35(256'h0707070606060606060606060606060606060606060606060606060606060606),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0808080808080808080808080808080808080707070707070707070707070707),
    .INIT_38(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_39(256'h0909090909090909090909090909090909080808080808080808080808080808),
    .INIT_3A(256'h0A0A090909090909090909090909090909090909090909090909090909090909),
    .INIT_3B(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A0A),
    .INIT_3C(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B0B0B0B0B0B0B0B),
    .INIT_3D(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_3E(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_3F(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0C0C),
    .INIT_40(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_41(256'h111010101010100E0E0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_42(256'h1717171717171717171717171717171717171717171717171717171711111111),
    .INIT_43(256'h1818181818181818181818171717171717171717171717171717171717171717),
    .INIT_44(256'h1A1A1A1A1A1A1A1A1A1A1A1A1A1A181818181818181818181818181818181818),
    .INIT_45(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1A1A1A1A1A1A),
    .INIT_46(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_47(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_48(256'h1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1C1C),
    .INIT_49(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D),
    .INIT_4A(256'h202020202020202020202020202020201F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4B(256'h2121212121212121212121212121212121212121212121202020202020202020),
    .INIT_4C(256'h2222222222222222222222222222222222222222222222222222222121212121),
    .INIT_4D(256'h2424242424242424242222222222222222222222222222222222222222222222),
    .INIT_4E(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_4F(256'h0000000000000000000000000000000000000000242424242424242424242424),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h181818181818181818181878A00000000000000000000000D32D000000000000),
    .INIT_52(256'h1818181818181818181818181818181818181818181818181818181818181818),
    .INIT_53(256'h0000000000000000000000000000000000000020200000000000001818181818),
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
    .INIT_00(256'h4060404C644C48406044504C404C48406044504C404C44584C44584C4060644C),
    .INIT_01(256'h4030403040104C406040104C406040104C406040104C406044544C404C40104C),
    .INIT_02(256'h4C44544C40144C44544C40144C44504C40144C44544C40144C44504C40304030),
    .INIT_03(256'h1C4C40144C404C44544C404C40144C40144C404C404C404C404C404C404C4450),
    .INIT_04(256'h4C401C4C40104C44504C644C40104C40104C401C4C44544C404C404C40144C40),
    .INIT_05(256'h144C404C404C404C404C404C404C44504C44504C4840104C40104C401C4C4014),
    .INIT_06(256'h104C401C4C44544C404C404C40144C401C4C40144C404C44544C404C40144C40),
    .INIT_07(256'h4840104C4840104C40104C401C4C40144C401C4C40104C44504C644C40104C40),
    .INIT_08(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_09(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_0A(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_0B(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_0C(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_0D(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_0E(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_0F(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_10(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_11(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_12(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_13(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_14(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_15(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_16(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_17(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_18(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_19(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_1A(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_1B(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_1C(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_1D(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_1E(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_1F(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_20(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_21(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_22(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_23(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_24(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_25(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_26(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_27(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_28(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_29(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_2A(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_2B(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_2C(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_2D(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_2E(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_2F(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_30(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_31(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_32(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_33(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_34(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_35(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_36(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_37(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_38(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_39(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_3A(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_3B(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_3C(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_3D(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_3E(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_3F(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_40(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_41(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_42(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_43(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_44(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_45(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_46(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_47(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_48(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_49(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_4A(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_4B(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_4C(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_4D(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_4E(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_4F(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_50(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_51(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_52(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_53(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_54(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_55(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_56(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_57(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_58(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_59(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_5A(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_5B(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_5C(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_5D(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_5E(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_5F(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_60(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_61(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_62(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_63(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_64(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_65(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_66(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_67(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_68(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_69(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_6A(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_6B(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_6C(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_6D(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_6E(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_6F(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_70(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_71(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_72(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_73(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_74(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_75(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_76(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_77(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_78(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_79(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_7A(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_7B(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_7C(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_7D(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_7E(256'h4C404C404C404C404C404C404C48644C644C644C644C644C644C644C644C644C),
    .INIT_7F(256'h4C404C404C404C404C404C404C404C404C404C404C404C404C404C404C404C40),
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
    .INIT_00(256'h44504C4840144C44504C40104C40104C44584C644C404C404C404C404C404C40),
    .INIT_01(256'h40104C406040104C406040104C406040104C404C404C40144C44504C4840144C),
    .INIT_02(256'h2C4C402C4C402C4C40144C402C4C402C4C402C4C406040104C406040104C4060),
    .INIT_03(256'h4C40144C402C4C402C4C402C4C40144C402C4C402C4C40144C402C4C40244C40),
    .INIT_04(256'h402C4C402C4C40244C402C4C40244C402C4C402C4C402C4C402C4C40144C402C),
    .INIT_05(256'h244C402C4C402C4C40244C402C4C40244C402C4C402C4C40244C402C4C40244C),
    .INIT_06(256'h4C40244C402C4C402C4C40244C402C4C40244C402C4C402C4C40244C402C4C40),
    .INIT_07(256'h402C4C40244C402C4C402C4C40244C402C4C40244C402C4C402C4C40244C402C),
    .INIT_08(256'h244C402C4C40244C402C4C402C4C40244C402C4C40244C402C4C402C4C40244C),
    .INIT_09(256'h4C40244C402C4C40244C402C4C402C4C40244C402C4C40244C402C4C402C4C40),
    .INIT_0A(256'h402C4C40244C402C4C40244C402C4C402C4C40244C402C4C40244C402C4C402C),
    .INIT_0B(256'h244C40244C40244C402C4C40244C402C4C402C4C40244C402C4C40244C402C4C),
    .INIT_0C(256'h4C40244C40244C40244C40244C40244C40244C40244C40244C40244C40244C40),
    .INIT_0D(256'h4C644C644C644C644C644C48406044544C404C644C40244C40244C40244C4024),
    .INIT_0E(256'h4C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C64),
    .INIT_0F(256'h4C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C64),
    .INIT_10(256'h544C424C40104C644C644C644C644C644C644C644C644C644C644C644C644C64),
    .INIT_11(256'h4C44544C404C44504C406040104C40144C44504C404C44544C40104C401C4C44),
    .INIT_12(256'h000000000000000300004848404C44504C40104C404C4840104C644C40104C40),
    .INIT_13(256'h0202000200000200007F00000300000000000000000000000000000000000000),
    .INIT_14(256'h0202020200020202020202000202000200020202020202020202020202020202),
    .INIT_15(256'h0202020202020202020202020002020002020202020202020202020002000202),
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
    .INIT_21(256'h0202020202000202020202020202020202020202020202020202020202020202),
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
    .INIT_2F(256'h0202020200020202020202020201010101020202020202020202020202020202),
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
    .INIT_4F(256'h0000000000000000000000000000000000000000020202020202020202020202),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000020000007F00000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000002000000000000000000),
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
