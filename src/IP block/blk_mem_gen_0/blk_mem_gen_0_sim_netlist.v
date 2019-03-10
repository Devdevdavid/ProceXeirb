// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Mar  6 22:01:34 2019
// Host        : DESKTOP-6RO2CF2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/MEGAsync/SEE09-2/S8/Proco 8bit/repo/ProceXeirb/src/IP
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
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000020000000840),
    .INITP_01(256'hAAAAAAAAAAAA8000000000000000000000000000000000000000000000000000),
    .INITP_02(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_03(256'h0000000000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'hAAAAAAAAAAAAA000000000000000000000000000000000000000000000000000),
    .INITP_06(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_07(256'h0000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_08(256'h0000000000200000000000000000000000000000000000000000000000000000),
    .INITP_09(256'hAAAAAAAAAAAA8000000000000000000000020000000000000000000000000000),
    .INITP_0A(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_0B(256'h0000000000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'hAAAAAAAAAAAA8000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_0F(256'h0000000000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_00(256'h788C8B65166C8B1C636C6C8B0E6C8A14636C6C8AD589658788D5656C6C6D6D65),
    .INIT_01(256'h726E786578717878657870787865786F787865786E7802767777637865787678),
    .INIT_02(256'h82838274725E72748272745872748375735273758373754C737575717470736F),
    .INIT_03(256'h7A7A637D8D80637A7D657A7375797274758574847375727485738472707472AE),
    .INIT_04(256'h79897F7D7FA4637B808F808780807E80807F8EAE747E7E727F737B797B7B7A89),
    .INIT_05(256'h758574847375727485738472C07573FE82838A7E657E7B867B867A897B867B86),
    .INIT_06(256'h807F8EFE757F7F737E727B7A7B7B79897979637C8DD063797C657A7375797274),
    .INIT_07(256'h6577DA7F657F7B867B8679897B867B867A897E7C7EF4637B808F808780807E80),
    .INIT_08(256'hA08F9F8F9E8F9D8F9C8F9B8F9A8F998F988F978F968F95909492939291902777),
    .INIT_09(256'hB492B390B265B1B0AFA6AE8FAD8FACA4ABA6AAA9A890A7A6A5A4A38FA28FA18F),
    .INIT_0A(256'hC790C6C5C4B0C365C263C18FC08FBF8FBE8FBD8FBCB7BBB9BAB9B8B7B690B592),
    .INIT_0B(256'hD863D7A4D665D5B7D4B9D3B9D2B7D18FD0A4CFB0CE89CD63CC65CBB9CAC5C9C8),
    .INIT_0C(256'hE865E7B7E663E565E4C5E3B9E292E190E08FDF8FDE8FDD8FDC8FDB63DAA4D963),
    .INIT_0D(256'hF8A6F790F68FF58FF4B7F389F28FF1B0F0C8EFC8EEB0ED63ECA4EB63EA63E9A4),
    .INIT_0E(256'h088F078F068F058F048F036502B701A4008FFFB7FE90FD8FFCB0FBA6FA8FF9A4),
    .INIT_0F(256'h188F178F168F158F14B013A6128F11A410A60F900EB90DC50C8F0B920AA9098F),
    .INIT_10(256'h2863278F268F25B924C5238F229221A9208F1F8F1EB71D891C8F1B8F1A8F198F),
    .INIT_11(256'h38903763369035A6348F33923290319030C52FB02EC82DC82CB02BB92AA6298F),
    .INIT_12(256'h48A9478F468F45B744C84363426341A940A63F8F3E923DB93C633B633AB939A4),
    .INIT_13(256'h588F578F568F559254B95363526351B950A44F904E904DB74C654B634A9049C5),
    .INIT_14(256'h688F678F668F658F648F639062B7616560635F905EC55DA95C635B905AA6598F),
    .INIT_15(256'h788F779076C57592749073927290719070C56F656EA46D926CA96B8F6A8F698F),
    .INIT_16(256'h888F878F868F85B984A683A68265818980927F8F7E8F7DA47C657B8F7AB979A6),
    .INIT_17(256'h988F978F9663958F948993C592B0918990638F8F8E8F8DA68C658B898A92898F),
    .INIT_18(256'hA88FA78FA68FA565A48FA38FA2C8A1B0A0B09FC89E909DC59C929B909A8F998F),
    .INIT_19(256'hB88FB78FB68FB58FB48FB38FB265B18FB08FAF8FAE8FAD8FAC8FAB8FAA8FA98F),
    .INIT_1A(256'hC88FC765C6A4C565C4C8C3C5C28FC18FC08FBF8FBE8FBD8FBC8FBB8FBA8FB98F),
    .INIT_1B(256'hD88FD78FD663D58FD48FD38FD28FD18FD08FCF8FCE8FCD63CCC8CBB0CAB0C9C8),
    .INIT_1C(256'hE88FE765E68FE58FE48FE38FE28FE165E08FDF65DE8FDD8FDC8FDB8FDA8FD965),
    .INIT_1D(256'hF8B7F7B0F663F58FF48FF38FF28FF18FF08FEF8FEE8FED63EC8FEBB0EAA6E98F),
    .INIT_1E(256'h0863078F06B9059204B903920263018F008FFF8FFE8FFDB9FC92FB8FFAB0F9B7),
    .INIT_1F(256'h18B017B716B715B0148F138912A411B9108F0F8F0EB90D920C8F0B8F0A6509A4),
    .INIT_20(256'h2892278F268F258F249223A92263216320B91FA41EA91D8F1C921BA91AA91992),
    .INIT_21(256'h389237A93663356334B933A432A931A630A92F632E652DB92CA42BA92A6329B0),
    .INIT_22(256'h4863476546B945A444A9438F428F41A640A93F633E633DC83CB73B633AB03992),
    .INIT_23(256'h59A958A95792568F554F5489536352635189504F4EA44DA64C8F4B8F4AA649A9),
    .INIT_24(256'h698F688F674F6692658F64A463A66290618F60895FA45E635D635CA45B895A92),
    .INIT_25(256'h7992788F77A476A6759074B073B7728F718F70A66FA96EA46D8F6CC56B906A8F),
    .INIT_26(256'h898F88A687A9868F858F849083A6828F81A480B77F657EA47D8F7CC57B907A4F),
    .INIT_27(256'h996398A497899665954F9492938F928F91C590B78FA98E8F8D8F8CB08BB78A8F),
    .INIT_28(256'hA9A6A88FA78FA68FA58FA48FA38FA28FA18FA08F9F8F9E8F9D8F9C899BA49A63),
    .INIT_29(256'hB990B8B0B7C8B6C5B58FB4A4B3A6B290B18FB08FAF8FAE8FAD8FAC8FAB8FAA89),
    .INIT_2A(256'hC98FC88FC78FC68FC58FC48FC38FC28FC18FC08FBFB0BEC8BDC5BC8FBBA4BAA6),
    .INIT_2B(256'hD990D892D7B9D692D5B0D489D363D263D190D092CFB9CE8FCDC5CC4FCB65CA63),
    .INIT_2C(256'hE965E8A4E765E6A4E58FE48FE363E28FE18FE08FDF8FDE92DDB0DC89DB63DA63),
    .INIT_2D(256'hF9A4F88FF7B7F690F58FF4B9F3C5F28FF192F0A9EF8FEE8FED8FEC8FEB8FEA8F),
    .INIT_2E(256'h098F088F078F068F058904C5038902C5018F004FFFC8FE65FD63FC8FFB65FAB7),
    .INIT_2F(256'h19B718C81763166315A914A6138F129011B710650F630E900DC50CA90B8F0A8F),
    .INIT_30(256'h29C528B9278F268F258F248F238F228F218F20A91FC51E8F1D8F1C8F1B8F1A8F),
    .INIT_31(256'h398F388F378F368F358F348F338F328F318930A92FB92EC52DB92C892BA92AB9),
    .INIT_32(256'h49B0489247904663458F44A44365428F41A640653F893E923D8F3C8F3B8F3A8F),
    .INIT_33(256'h598F588F578F566555C5548F538F529251B950654FC54E8F4D8F4C924BB94A8F),
    .INIT_34(256'h698F68C56789668F658F648F638F628F618F608F5F8F5E8F5D8F5C8F5B8F5A8F),
    .INIT_35(256'h798F788F778F768F758F748F73B972A671B070906F636EB96DA66CB06B906A63),
    .INIT_36(256'h89A488A48765868F858F8465838F8265818F808F7F637E8F7D8F7C8F7B657A8F),
    .INIT_37(256'h99C59889976396C8958F94C59390928F918F908F8FB98E928D8F8C8F8B8F8A65),
    .INIT_38(256'hA98FA8A6A7A9A663A563A4C8A3B7A2B0A1C8A0659F639E8F9DC59C899B639AC8),
    .INIT_39(256'hB9C5B8A9B765B663B58FB48FB38FB2A6B1A9B063AF65AEB9ADA4ACA9AB8FAA8F),
    .INIT_3A(256'hC990C863C765C6B9C5A6C4B9C3B9C292C190C063BF65BEB9BDA6BCB9BB8FBAA9),
    .INIT_3B(256'hD98FD88FD790D6A6D58FD4A4D3B7D265D1B9D092CF8FCE8FCDA4CC8FCBB9CA92),
    .INIT_3C(256'hE9A9E892E78FE68FE58FE48FE38FE28FE18FE0B0DFB7DE8FDD8FDCA6DBA9DA8F),
    .INIT_3D(256'hF9A4F8B7F765F6A9F592F48FF3A4F2B7F165F08FEF8FEE8FED8FEC8FEB8FEA8F),
    .INIT_3E(256'h09A60890078F068F05B70463038F028F018F008FFF8FFE8FFD8FFCA9FB92FA8F),
    .INIT_3F(256'h1AB9198918A6178F168F158F148F138F126311100FC80EB00DC80CC50B8F0AA4),
    .INIT_40(256'h2A8F29C5284F27652663258F248F236322C5219220B01F891E631D631C901B92),
    .INIT_41(256'h3A8F398F38A63790368935C5348F338F328F3163308F2F8F2E8F2D652CA42B8F),
    .INIT_42(256'h4AA64963488947C5468F458F448F438F428F418F408F3F8F3E8F3D8F3C903BA6),
    .INIT_43(256'h5A9259A9588F578F56B75589548F536552B751A4508F4FA44EB94DC54C894B63),
    .INIT_44(256'h6AA66990686567B766A4658F64A463B9624F61C860655F635E8F5DB95CC55B8F),
    .INIT_45(256'h7A8F798F788F778F768F75B974C5738F729271A9708F6F8F6E8F6DB76CA46B8F),
    .INIT_46(256'h898988A987B986C585B9338F84B983C5828F819280A97F8F7E8F7D8F7C8F7B8F),
    .INIT_47(256'h99B998B9978F96B995B994C8938F928F919090A48FB98E658D658CB98BA48AA9),
    .INIT_48(256'hA965A863A790A6C5A5A9A463A390A2A6A18FA0A69F109E659D639CA99BA69AC8),
    .INIT_49(256'hB989B8A6B710B665B563B4A9B3A6B2A9B1C5B08FAF8FAE8FAD8FAC8FAB90AAB7),
    .INIT_4A(256'hC98FC890C7B7C665C563C490C3C5C2A9C18FC08FBF8FBEB9BD65BC63BBA9BAA4),
    .INIT_4B(256'hD892D765D6C5D58FD48FD392D2B9768FD190D0B7CF65CE63CD90CCC5CBA9CA8F),
    .INIT_4C(256'hE88FE78FE663E5B9E410E363E2C5E1B0E0C5DFC8DEB9DD8FDC8FDBA6DAB9D9B9),
    .INIT_4D(256'hF88FF78FF68FF5B9F4A6F38FF263F1B0F092EF90EE63ED8FECA6EB65EA89E992),
    .INIT_4E(256'h088F07B906A605B00490036302A601650089FF92FE8FFD8FFCA6FB65FA89F992),
    .INIT_4F(256'h189217101663156514A613B912A611A610A90F920E650D8F0C8F0B8F0A650965),
    .INIT_50(256'h286327C52689258F248F238F228F218F208F1F8F1E8F1D8F1C8F1B8F1AA419C5),
    .INIT_51(256'h388F378F368F358F348F338F328F318F30652F8F2E8F2D8F2CA42BC52A922910),
    .INIT_52(256'h48654765468F458F4465438F428F418F408F3F8F3E8F3D8F3C8F3B8F3A8F398F),
    .INIT_53(256'h5865578956A955B054C853A6526351C550A94FA94E924D634C924B8F4A8F498F),
    .INIT_54(256'h688F678F66636565648963A962B061C8608F5F635E8F5D655C8F5B8F5A8F5963),
    .INIT_55(256'h78B9779276C57589746373C87265718F708F6F8F6E656D8F6C8F6B8F6A8F6963),
    .INIT_56(256'h8892878F868F8563848F83108210819280927F107E107D637C8F7B8F7A9279B9),
    .INIT_57(256'h988F97B99692958F946593A4928F919090928F8F8E638D8F8CC58B908A8F89B9),
    .INIT_58(256'hA8B9A7A4A6A9A5B9A492A390A263A165A0B99FA69EB99DB99C929B639A8F9963),
    .INIT_59(256'hB892B7A9B68FB5B9B4B9B38FB290B163B0B0AF92AE8FADA9ACA4ABB9AA65A965),
    .INIT_5A(256'hC863C78FC6A6C5A9C463C365C2B9C1A4C0A9BF8FBE8FBDB7BC90BB63BA63B9B0),
    .INIT_5B(256'hD890D763D689D592D4B9D38FD2B7D190D063CF63CEB0CD92CCA9CBC5CAA9C965),
    .INIT_5C(256'hE8A6E7A9E663E565E4B9E3A4E2A9E18FE0A6DFA9DE63DD63DCC8DBB7DA8FD9B7),
    .INIT_5D(256'hF8B7F765F68FF5A6F4A9F363F265F1B9F0A4EFA9EE63EDB0EC92EB63EAB0E992),
    .INIT_5E(256'h086307A4068F05C50490038F02A90192008FFF8FFE92FDA9FCA9FB92FA8FF9A4),
    .INIT_5F(256'h188F17A616A9158F148F13A912A6118F108F0FA60E650D630CC50B630A6309C5),
    .INIT_60(256'h28A927A6268F258F24A6236522A92192208F1F8F1E8F1D8F1C8F1BB01AB7198F),
    .INIT_61(256'h38A637A9368F359034A6338F32A431B730652FA42EB92DC52C8F2BA62A90298F),
    .INIT_62(256'h488F478F46A645A944A4438F42C5419040A43F8F3EC53D903CB03BB73A8F398F),
    .INIT_63(256'h58B057C5568F5592544F53A952B7516550634F904EA64D924C654B8F4AB049B7),
    .INIT_64(256'h688F678F669265B0648F638F628F618F608F5F905EA65DA45C8F5B8F5A8F598F),
    .INIT_65(256'h788F778F768F758F748F738972A6718F708F6F8F6E8F6D8F6C8F6B8F6AB06992),
    .INIT_66(256'h888F878F868F858F848F838F828F818F80657F927E8F7D8F7C8F7B8F7A8F798F),
    .INIT_67(256'h98B7979296A99563946393A9929291B7908F8F908EC58DB08C658B638A8F898F),
    .INIT_68(256'hA890A78FA68FA5A9A4A6A390A263A18FA08F9FC59E4F9D659C639B8F9A8F998F),
    .INIT_69(256'hB889B78FB68FB58FB463B38FB28FB18FB0B9AFC5AE63AD63AC92ABB9AA8FA992),
    .INIT_6A(256'hC88FC78FC6B7C589C48FC3B9C2C5C18FC092BFA9BE8FBD8FBC63BB8FBA8FB9C5),
    .INIT_6B(256'hD88FD7A6D6B9D5B9D4A6D38FD2B9D1C5D08FCF92CEA9CD8FCC8FCBB7CA89C98F),
    .INIT_6C(256'hE8A9E78FE692E5A9E48FE38FE28FE163E08FDF8FDE4FDDC8DC65DB63DA8FD98F),
    .INIT_6D(256'hF8C5F7A9F663F590F4A6F38FF263F190F0A6EF8FEE90EDB7EC65EB63EA90E9C5),
    .INIT_6E(256'h088F078F068F058F048F038F02A401650065FFA4FE8FFD90FCB7FB65FA63F990),
    .INIT_6F(256'h1863178F168F15A614A9138F128F118F108F0F8F0E8F0D8F0C8F0BA90AC5098F),
    .INIT_70(256'h288F27A6266525892492238F228F21A620651F891E921D8F1C891BC51AB01989),
    .INIT_71(256'h38C537A93665358F348F33B03292319030632F8F2E8F2D8F2C8F2B632A63298F),
    .INIT_72(256'h488F478F468F458F448F438F428F416540C83FC53E8F3D8F3C8F3B8F3A8F3989),
    .INIT_73(256'h588F57A45665556554A4538F528F518F508F4F8F4E8F4D8F4C8F4B8F4A8F498F),
    .INIT_74(256'h6865678F668F658F648F636562A4618F608F5F8F5E8F5D8F5CC55B895A8F598F),
    .INIT_75(256'h788F7763768F75A47463736372A471A670B96FB96EA66D8F6C656B8F6A8F698F),
    .INIT_76(256'h88B987A4866585B98492838F828F81B980927F8F7E8F7D8F7CC87BB07A8F798F),
    .INIT_77(256'h981097A9968F958F94C59390928F91B790B08FB08EA68DB98C928B638A638992),
    .INIT_78(256'hA865A7B9A6A4A5A9A48FA38FA2A6A1A9A0639F659EB99DA49CA99B8F9A8F998F),
    .INIT_79(256'hB889B7B7B692B5A9B463B363B2A9B192B0B7AFB0AEC8AD65AC63ABA6AAA9A963),
    .INIT_7A(256'hC88FC78FC6A9C5C5C4A9C365C263C18FC089BFA4BEB0BD65BC63BB65BAB0B9A4),
    .INIT_7B(256'hD88FD7A6D6A9D58FD48FD3B0D2B7D18FD08FCFA6CEA9CD8FCC8FCB8FCA4FC990),
    .INIT_7C(256'hE889E7B0E692E58FE48FE392E2B0E163E0B9DF92DE8FDD8FDCA4DBB0DAB7D98F),
    .INIT_7D(256'hF88FF78FF68FF5A9F492F38FF28FF18FF08FEF8FEE89EDB7ECA4EB8FEAA4E9B7),
    .INIT_7E(256'h3E0B3E0A3F093E083E6C65098B658A65008FFFB9FE65FD8FFC8FFB8FFA8FF98F),
    .INIT_7F(256'h3E1B3F1A3F193E183F173E163F153F143E133F123E113F103E0F3E0E3F0D3E0C),
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
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000002400000000000000000000000000000000000000000000000),
    .INITP_02(256'hFFFFFFFFFFFC0000000000000000200000002100000000000000000000000000),
    .INITP_03(256'h00007FFFFFFFFFFFFFFFFFFFF0000000000000000000000000000FFFFFFFFFFF),
    .INITP_04(256'h00000000FFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFE0000000000000000000000),
    .INITP_05(256'h0000000000001FFFFFFFFFFFFFFFFF800000000000FFFFFFFFFFFFFFFFFFFF80),
    .INITP_06(256'h000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFC00000007FF0),
    .INITP_07(256'hE0400000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFF00),
    .INITP_08(256'hFFFFFFF0000000000000007FFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'h0000000000000FFFFFFFFFFFFFFFFFFFC00000000000000007FFFFFFFFFFFFFF),
    .INITP_0A(256'h0000000000000000000000000000000180000000000001800000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h022347020265020165016289658B6543444063026501656C651F3F1E3F1D3F1C),
    .INIT_01(256'h6B6904376B6B6902074B064A05B90449046604306604230147012A48011C0247),
    .INIT_02(256'h36363739303A3C3C6B6B6967053B6B6B6967043A6B6B696701396B6B6905386B),
    .INIT_03(256'h323632363839363A39323664363C37313631363A3931383636373C3036303638),
    .INIT_04(256'h3620363209203008353B35353B3C343464343B39333633363739333836363A3C),
    .INIT_05(256'h0D22362236320C22300B21362136350A21362136330921310820362036340A20),
    .INIT_06(256'h36341024362436320F24300E23362336350D23362336330C23310B2236223634),
    .INIT_07(256'h362636341326362636321226301125362536351025362536330F25310E243624),
    .INIT_08(256'h1428362836341628362836321528301427362736351327362736331227311126),
    .INIT_09(256'h2B31172A362A3634192A362A3632182A30172936293635162936293633152931),
    .INIT_0A(256'h331B2D311A2C362C36341C2C362C36321B2C301A2B362B3635192B362B363318),
    .INIT_0B(256'h2F36331E2F311D2E362E36341F2E362E36321E2E301D2D362D36351C2D362D36),
    .INIT_0C(256'h2707272606262507252406242307232206222107212006202F362F36351F2F36),
    .INIT_0D(256'h8BC2656C6C8B8C922F072F2E062E2D072D2C062C2B072B2A062A290729280628),
    .INIT_0E(256'h59235822572956285521542053275226512150204F234E224D214C208B65BC6C),
    .INIT_0F(256'h69276826672D662C6525642463276226612560245F2B5E2A5D235C225B255A24),
    .INIT_10(256'h792D782C772D762C752B742A732B722A712970286F2F6E2E6D296C286B2F6A2E),
    .INIT_11(256'h46467D46447E464163397D46464642461045577C4501404065408B637B2F7A2E),
    .INIT_12(256'h6361804242654245632B456545434143454441634E63414163497F41416B6B69),
    .INIT_13(256'h000000000000000000000000000000000000FE00000000FF5AB4010000621342),
    .INIT_14(256'h6867666564636261241B0807060C05030F80FF00310002000000000000000000),
    .INIT_15(256'hBFA89B88878605850A848382817C7B067A797877767504706F0B6E0E6D6C6B6A),
    .INIT_16(256'h613F281B09080706050404030201FCFBFAF9F8F7F6F5F409F1F00DEFEEEDEAE1),
    .INIT_17(256'h9D9C9B99989796959491908F8E8D898885848584838281807C7B75747371706A),
    .INIT_18(256'hD0CFCECDCAC4C2C1C0BFBEBCBBBAB9B8B7B2B1B0AFAEABAAA9A8A7A4A1A09F9E),
    .INIT_19(256'h1B19181716151413100F0E0D0908050405040100F4F3F1F0EAE1D8D7D6D5D4D1),
    .INIT_1A(256'h555453504F4E4D4A443F3C3B3A39383736333231302F2E2D282421201F1E1D1C),
    .INIT_1B(256'hA8A4A1A09B94938D8A89848385848180747371706A6766656463626159585756),
    .INIT_1C(256'h03060500FFFCFBFAF9F4F3F1F0EFEEEDEAE1D9D8D4D3CDCAC4BFB7B6B3B2AEAD),
    .INIT_1D(256'h6A61595857565554534D4A443F3736333231302F2E2D2824211B14130D0A0904),
    .INIT_1E(256'hAEADA8A4A19B94938D8B8A89888786858483828685807F7C7473706F6E6D6C6B),
    .INIT_1F(256'h211B14130D0B0A03020706050403020100FFFEFCF4F3EAE1D4D3CDCAC4BFB7B6),
    .INIT_20(256'h94938D8B8A838287867F7E7C7574736A6154534D4A4544403F37362E2D292824),
    .INIT_21(256'hC7C6C5C4C1C0BFBCBBBAB9B8B7B6B3B2B1B0AFAEADAAA9A8A4A19B9998979695),
    .INIT_22(256'h0B0A0302010706FFFEFCFBFAF9F8F7F607F5F4EAE1D9D8D7D6D5D4D3CDCAC9C8),
    .INIT_23(256'h444241403F3C3B3A393837333231302F2E2B2A292824211B1918171615140D0C),
    .INIT_24(256'h1918A78887867F7E7D7C7B7A79787776756A615958575655544D4A4948474645),
    .INIT_25(256'h686766656463625E5D5C5B5A595854535251504F4E4A4948474645442A271B1A),
    .INIT_26(256'hEBE8E7E6E5E4E3E2E1DEDDDCDBDAD9D8D7CECAC9C8C7C4A79B71706F6E6D6C6B),
    .INIT_27(256'hC9C8C7C4BCBBBAB9B8B7B6B2B1B0AFAEAAA7A49E9B6B626158574E4A4944271B),
    .INIT_28(256'h4948474645443C3B3A39383736333231302F2E2D2A27241E1BEBE2E1D8D7CECA),
    .INIT_29(256'hAEADAAA7A49E9B71706F6E6D6C6B65646362615B5A59585754535251504F4E4A),
    .INIT_2A(256'h2F2E2D2A27241E1BEBE7E6E5E4E3E2DDDCDBDAD9D8CECBCAC9C8C4BCBBB6B3B2),
    .INIT_2B(256'hCAC4BCB6AEADAAA7A49E9B6B68676665645E5D5C5B5A4E4B4A443C3633323130),
    .INIT_2C(256'h986B686762615E5D58574E4B4A443C362E2D2A27241F1E1B1AEBE8E7DEDDCECB),
    .INIT_2D(256'hDAD9D8D7CECBCAC9C8C7C4BCB6B3B2B1B0AFAEADAAA7A4A3A2A1A09F9E9B9A99),
    .INIT_2E(256'h3231302F2E2A2724232221201F1E1A19181716EBE8E7E6E5E4E3E2E1DEDDDCDB),
    .INIT_2F(256'h6D6C6B6766656463625D5C5B5A595854535251504F4E4A4948474645443C3633),
    .INIT_30(256'h7B7A797877764544434241403F0D0C080BFDFCFBFAF9F8F78E8D8C8B71706F6E),
    .INIT_31(256'h8C8B8A8685848382817776746E45443F100BF7F6F4EEC5C4C3C2BF908C8B7D7C),
    .INIT_32(256'hC2BFB6B5B4B3B2AFAEADACABA8A7A6A5A4A39F9E9B9A999695939291908F8E8D),
    .INIT_33(256'hF7F6F5F4F3F1F0EFEEEDE9E8E7E6E5E1DBD8D7D6D5D4D3CFCECDCCCBCAC5C4C3),
    .INIT_34(256'h27262524231F1E1B1A191615100B0706050403020100FAF9F8F7F6FEFDFCFBFA),
    .INIT_35(256'h585756555453524F4E4D4C4B4A4544434241403F373635343332312E2D2C2B28),
    .INIT_36(256'h9695908B878681807C7B7A7978777F7E7D7C7B7A79746E6A696867666564615B),
    .INIT_37(256'hF9F4EEEAE9E5E4E1DBD8D3D2CFCEC6C5C4C3BFB7B6B2B1ABA8A79F9E9C9B9A99),
    .INIT_38(256'h32312B282726252423221F1E1C1B19181615100B07060100FDFCFBFAF9FFFEFA),
    .INIT_39(256'h7B7A79746E6A696867666564615B5853524F4E4D4C4B4A4946453F3736353433),
    .INIT_3A(256'hC5BFB2B1ABA8A7A6A5A4A3A29E9D9C9B99989796908B878681807D7C7F7E7D7C),
    .INIT_3B(256'h171611100B07060100FDFCF7F6FAF9F4EEE5E4E1DBD8D3D2CFCECDCCCBCAC9C6),
    .INIT_3C(256'h77767A7975746F6E6564615C5B5853524F4A4946453F32312B2823221E1D1C18),
    .INIT_3D(256'hABA8A7A6A5A4A3A29E9D9C9897969291908B87868584838281807D7C7B7A7978),
    .INIT_3E(256'hDFDEDDDCDBD8D7D6D5D4D3D2CFCECDCCCBCAC9C6C5C4C3C2BFB7B6B5B4B3B2B1),
    .INIT_3F(256'h030201FCFBFAF9F8F709FFFEFDFCFBFAF9F6F5F4F0EFEEEAE9E8E7E6E5E4E1E0),
    .INIT_40(256'h4241403F3736353433322B282726252423221E1D1C181716131211100B060504),
    .INIT_41(256'h706F6E6A696867666561605F5E5D5C5B5857565554534F4E4D4C4B4A49454443),
    .INIT_42(256'h0B0A0908070605D7D6D5D4D3585756555453D8D7897F7E7D7C7B7A7776757471),
    .INIT_43(256'h69686766656261605F5E5D5C585756555453524F474241403F3E3D383736350E),
    .INIT_44(256'hD8D7D6D5D2CFC7C3C2C1C0BFBEBDBCB88C8B8A898885767574737271706F6E6A),
    .INIT_45(256'h928E8C8B85726B6A655C5857524F474443423D3C3B380C0B05F2EBEAE9E8E5DC),
    .INIT_46(256'hDCD8D7D6D5D2CFC7C4C3BCBBB8ABAAA9A8A7A4A3A2A1A09E9D9C9B9A96959493),
    .INIT_47(256'h3B382C2B2A29282726232221201D1C1B1A171615141312110E0C0B05F2EBEAE5),
    .INIT_48(256'h92918E8C8B8A898885726B6A656261605F5E5D5C585756555453524F4744433C),
    .INIT_49(256'h0908070605F2EBEAE9E8E5DCD9D8D7D6D2CFC7C4C3BCBBB8ACABA7A6A09A9796),
    .INIT_4A(256'h66655C5958524F4744433C3B382C2B2A29282726201A171615141312110E0B0A),
    .INIT_4B(256'h0E05F2EAE9E5DCD9D8D2CFCEC8C7C4C3BCBBB8A7A6A09A92918E85726A696867),
    .INIT_4C(256'h949392918E85726B6A655C5958524F4E48474443423D3C3B38372726201A1211),
    .INIT_4D(256'hCECDCCCBCAC9C8C7C3C2C1C0BFBEBDBCB8B7B6B5ACABAAA9A8A7A6A09A979695),
    .INIT_4E(256'h363534332C2B2A292827201A1716151413120E05F2ECEBE5DCD9D8D7D6D5D2CF),
    .INIT_4F(256'h6D6C656261605F5E5D5C585756555453524E4D4C4B4A49484241403F3E3D3C37),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000072),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h14131211100F0E0D0C0B0A0908070605040302010000140E6800001000000000),
    .INIT_53(256'h007F8010302F2E2D2C2B2A292827262524232221201F1E1D1C1B1A1918171615),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000033),
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
    .INIT_00(256'h0909090900090900090909090009090009090909070909090907090909090909),
    .INIT_01(256'h0909090909090909090909090909090909090909090900090909090909090909),
    .INIT_02(256'h0909090909000909090909000909090909000909090909000909090909090909),
    .INIT_03(256'h0909090909000909090909090909090909090909090909090909090900090900),
    .INIT_04(256'h0909090909000909090909090909090909090900090909090909090909090909),
    .INIT_05(256'h0909090909090909090909090009090009090009090909090909090909090909),
    .INIT_06(256'h0909090009090909090909090909090909090909090009090909090909090909),
    .INIT_07(256'h0909000909090909090909090909090909090909090009090909090909090909),
    .INIT_08(256'h0909090909090909090909090909090909090909090909090909090909090009),
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
    .INIT_1E(256'h0A090A090A090A090A090A090A090A090A090909090909090909090909090909),
    .INIT_1F(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_20(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_21(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_22(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_23(256'h0A090A090A090A090A0A0A090A090A090A090A0A0A090A090A090A090A090A09),
    .INIT_24(256'h0A090A090A0A0A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_25(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_26(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A0A),
    .INIT_27(256'h0A090A090A090A090A0A0A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_28(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_29(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_2A(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_2B(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A0A0A090A09),
    .INIT_2C(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_2D(256'h0A090A090A090A090A090A090A090A090A090A090A090A090A090A090A090A09),
    .INIT_2E(256'h0A090A090A090A090A090A090A090A090A090A0A0A090A090A090A090A090A09),
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
    .INIT_3E(256'h0B090B090B090B090B090B090B090B090B090B090A090A090A090A090A090A09),
    .INIT_3F(256'h0B090B090B090B090B090B090B090B090B090B0B0B090B090B090B090B090B09),
    .INIT_40(256'h0B090B090B0A0B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_41(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_42(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_43(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_44(256'h0B090B090B090B090B090B090B090B090B0A0B090B090B090B090B090B090B09),
    .INIT_45(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_46(256'h0B090B090B090B090B0909090B090B090B090B090B090B090B090B090B090B09),
    .INIT_47(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_48(256'h0B090B090B090B090B090B090B090B090B090B090B0B0B090B090B090B090B09),
    .INIT_49(256'h0B090B090B0B0B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_4A(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_4B(256'h0B090B090B090B090B090B090B0909090B090B090B090B090B090B090B090B09),
    .INIT_4C(256'h0B090B090B090B090B0B0B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_4D(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_4E(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_4F(256'h0B090B0B0B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_50(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_51(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B0B),
    .INIT_52(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_53(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_54(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_55(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_56(256'h0B090B090B090B090B090B0B0B0B0B090B090B0B0B0B0B090B090B090B090B09),
    .INIT_57(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_58(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_59(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_5A(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_5B(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_5C(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_5D(256'h0B090B090B090B090B090B090B090B090B090B090B090B090B090B090B090B09),
    .INIT_5E(256'h0C090C090C090C090C090C090C090C090C090B090B090B090B090B090B090B09),
    .INIT_5F(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_60(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_61(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_62(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_63(256'h0C090C090C090C090C0A0C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_64(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_65(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_66(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_67(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_68(256'h0C090C090C090C090C090C090C090C090C090C090C0A0C090C090C090C090C09),
    .INIT_69(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_6A(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_6B(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_6C(256'h0C090C090C090C090C090C090C090C090C090C090C0A0C090C090C090C090C09),
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
    .INIT_77(256'h0C0B0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_78(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_79(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_7A(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_7B(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C0A0C09),
    .INIT_7C(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_7D(256'h0C090C090C090C090C090C090C090C090C090C090C090C090C090C090C090C09),
    .INIT_7E(256'h0D0D0D0D0D0D0D0D0D090900090909090D090C090C090C090C090C090C090C09),
    .INIT_7F(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
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
    .INITP_02(256'h0000000000000000000000000000200000000100000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h00000000000000000000000000000000000000000000000000000000000000F0),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000008000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0D080D0D0D090D0D090D09090909090D0D0D090D090D0909090D0D0D0D0D0D0D),
    .INIT_01(256'h09090D0D0909090D0D0D0D0D0D090D0D0D090D08090D080D0D0D080D0D080D0D),
    .INIT_02(256'h0D0D0D0D0D0D0D0D090909090D0D090909090D0D090909090D0D0909090D0D09),
    .INIT_03(256'h0D0D0D0D0D0D0D0D0D0D0D090D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_04(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D090D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_05(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_06(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_07(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_08(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_09(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0A(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0B(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0C(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0D(256'h09080909090909090D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_0E(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D09090809),
    .INIT_0F(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_10(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_11(256'h0D0D0D0D090D0D0D09090D0D0D0D0D0D0B0D090D0D000D0D090D09090D0D0D0D),
    .INIT_12(256'h09090D0D0D090D0D09090D090D0D0D0D0D0D0D0909090D0D09090D0D0D090909),
    .INIT_13(256'h0000000000000000000000000000000000005700001018FF000000000009080D),
    .INIT_14(256'h000000000000000000000000000000000001FF10105800000000000000000000),
    .INIT_15(256'h0101010101010001000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0202020202020202020201010101010101010101010101000101000101010101),
    .INIT_17(256'h0303030303030303030303030303030303030202020202020202020202020202),
    .INIT_18(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_19(256'h0505050505050505050505050505050504040404030303030303030303030303),
    .INIT_1A(256'h0505050505050505050505050505050505050505050505050505050505050505),
    .INIT_1B(256'h0606060606060606060606060505050505050505050505050505050505050505),
    .INIT_1C(256'h0706060606060606060606060606060606060606060606060606060606060606),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0808080808080808080808080808080808080807070707070707070707070707),
    .INIT_1F(256'h0A0A0A0A0A0A0A0A0A0909090909090909080808080808080808080808080808),
    .INIT_20(256'h0B0B0B0B0B0B0B0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_21(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_22(256'h0C0C0C0C0C0B0B0B0B0B0B0B0B0B0B0B000B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_23(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_24(256'h1616150C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_25(256'h1616161616161616161616161616161616161616161616161616161616161616),
    .INIT_26(256'h1717171717171717171717171717171717171717171717171716161616161616),
    .INIT_27(256'h1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1919191919191919191919),
    .INIT_28(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1A1A1A1A1A1A1A),
    .INIT_29(256'h1C1C1C1C1C1C1C1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_2A(256'h1E1E1E1E1E1E1E1E1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_2B(256'h1F1F1F1F1F1F1F1F1F1F1F1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E),
    .INIT_2C(256'h212020202020202020202020202020202020202020202020201F1F1F1F1F1F1F),
    .INIT_2D(256'h2121212121212121212121212121212121212121212121212121212121212121),
    .INIT_2E(256'h2323232323232323232323232323232323232321212121212121212121212121),
    .INIT_2F(256'h2323232323232323232323232323232323232323232323232323232323232323),
    .INIT_30(256'h020202020202010101010101010101000100000000000000FFFFFFFF23232323),
    .INIT_31(256'h0404040404040404040404030303030303030303020202020202020202020202),
    .INIT_32(256'h0404040404040404040404040404040404040404040404040404040404040404),
    .INIT_33(256'h0404040404040404040404040404040404040404040404040404040404040404),
    .INIT_34(256'h0606060606060606060606060606060606060606060605050505050404040404),
    .INIT_35(256'h0606060606060606060606060606060606060606060606060606060606060606),
    .INIT_36(256'h0707070707070707070707070707060606060606060606060606060606060606),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0808080808080808080808080808080808080808080808080808080808070707),
    .INIT_39(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_3A(256'h0909090909090909090909090909090909090909090909090909090908080808),
    .INIT_3B(256'h0B0B0B0B0B0B0B0B0B0A0A0A0A09090909090909090909090909090909090909),
    .INIT_3C(256'h0C0C0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_3D(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_3E(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_3F(256'h0D0D0D0D0D0D0D0D0D0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_40(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_41(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_42(256'h1717171717171711111111111010101010100E0E0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_43(256'h1717171717171717171717171717171717171717171717171717171717171717),
    .INIT_44(256'h1818181818181818181818181818181818181818181817171717171717171717),
    .INIT_45(256'h1B1B1B1B1B1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A18181818181818),
    .INIT_46(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_47(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1B1B1B1B),
    .INIT_48(256'h1D1D1D1D1D1D1D1D1D1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_49(256'h1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D),
    .INIT_4A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4B(256'h2121202020202020202020202020202020202020202020202020201F1F1F1F1F),
    .INIT_4C(256'h2222222222222121212121212121212121212121212121212121212121212121),
    .INIT_4D(256'h2222222222222222222222222222222222222222222222222222222222222222),
    .INIT_4E(256'h2424242424242424242424242424242424242424222222222222222222222222),
    .INIT_4F(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000024),
    .INIT_51(256'hCE32000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h101010101010101010101010101010101010101078A000000000000000000000),
    .INIT_53(256'h0000000010101010101010101010101010101010101010101010101010101010),
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
    .INIT_00(256'h404C644C48406044504C406048406044504C406044544C404C44584C4060644C),
    .INIT_01(256'h403040104C406040104C406040104C406040104C406044544C404C40104C4060),
    .INIT_02(256'h544C40144C44544C40144C44504C40144C44544C40144C44504C403040304030),
    .INIT_03(256'h40144C404C44544C404C40144C40144C404C404C404C404C404C404C44504C44),
    .INIT_04(256'h1C4C40104C44504C644C40104C40104C401C4C44544C404C404C40144C401C4C),
    .INIT_05(256'h404C404C404C404C404C404C44504C44504C4840104C40104C401C4C40144C40),
    .INIT_06(256'h401C4C44544C404C404C40144C401C4C40144C404C44544C404C40144C40144C),
    .INIT_07(256'h104C4840104C40104C401C4C40144C401C4C40104C44504C644C40104C40104C),
    .INIT_08(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C4840),
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
    .INIT_7E(256'h4C404C404C404C404C404C48644C644C644C644C644C644C644C644C644C644C),
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
    .INIT_00(256'h4C44504C40104C40104C44544C644C404C404C404C404C404C404C404C404C40),
    .INIT_01(256'h40104C406040104C404C404C404C404C40144C44504C4840144C44504C484014),
    .INIT_02(256'h4C402C4C402C4C40604010104C40604010104C40604010104C406040104C4060),
    .INIT_03(256'h40144C402C4C402C4C40144C402C4C40244C402C4C402C4C402C4C40144C402C),
    .INIT_04(256'h244C402C4C402C4C402C4C402C4C40144C402C4C40144C402C4C402C4C402C4C),
    .INIT_05(256'h4C40244C402C4C402C4C40244C402C4C40244C402C4C402C4C40244C402C4C40),
    .INIT_06(256'h402C4C40244C402C4C402C4C40244C402C4C40244C402C4C402C4C40244C402C),
    .INIT_07(256'h244C402C4C40244C402C4C402C4C40244C402C4C40244C402C4C402C4C40244C),
    .INIT_08(256'h4C40244C402C4C40244C402C4C402C4C40244C402C4C40244C402C4C402C4C40),
    .INIT_09(256'h402C4C40244C402C4C40244C402C4C402C4C40244C402C4C40244C402C4C402C),
    .INIT_0A(256'h2C4C402C4C40244C402C4C40244C402C4C402C4C40244C402C4C40244C402C4C),
    .INIT_0B(256'h4C402C4C402C4C40244C402C4C40244C402C4C402C4C40244C402C4C40244C40),
    .INIT_0C(256'h40244C40244C40244C40244C40244C40244C40244C40244C40244C402C4C4024),
    .INIT_0D(256'h6044544C4060644C40244C40244C40244C40244C40244C40244C40244C40244C),
    .INIT_0E(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C4840),
    .INIT_0F(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_10(256'h644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C644C),
    .INIT_11(256'h4C40144C44504C404C44544C40104C401C4C44544C424C40104C644C644C644C),
    .INIT_12(256'h4C44504C40104C404C4840104C644C40104C404C44544C404C44504C40604010),
    .INIT_13(256'h00000000000000000000000000000000000003000000007F0000000000484840),
    .INIT_14(256'h0202020202020202020202020200020000007F00000300020000000000000000),
    .INIT_15(256'h0202020202020002000202020202020002020202020200020200020002020202),
    .INIT_16(256'h0202020202020202020202020202020202020202020202000202000202020202),
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
    .INIT_21(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_22(256'h0202020202020202020202020202020200020202020202020202020202020202),
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
    .INIT_30(256'h0202020202020202020202020202020002020202020202020101010102020202),
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
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000002),
    .INIT_51(256'h7F00000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000200000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
