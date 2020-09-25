// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Sat Sep 26 01:22:48 2020
//
// Verilog Description of module top_level
//

module top_level (led, rst_n, clk, sid_addr, sid_data, sid_cs_n, 
            sid_rw, sid_rst_n, sid_clk, sid_timer, spi_sck, spi_mosi, 
            spi_miso, spi_cs_n, spi_busy);   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(37[8:17])
    output [7:0]led;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(39[3:6])
    input rst_n;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(41[9:14])
    input clk;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(42[9:12])
    output [4:0]sid_addr;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(44[9:17])
    inout [7:0]sid_data;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(45[9:17])
    output sid_cs_n;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(46[9:17])
    output sid_rw;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(47[9:15])
    output sid_rst_n;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(48[9:18])
    output sid_clk;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(49[9:16])
    output sid_timer;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(50[9:18])
    input spi_sck;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(52[9:16])
    input spi_mosi;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(53[9:17])
    output spi_miso;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(54[9:17])
    input spi_cs_n;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(55[9:17])
    output spi_busy;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(56[9:17])
    
    wire osc_clk /* synthesis is_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(106[9:16])
    wire clk_fast /* synthesis SET_AS_NETWORK=clk_fast, is_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(107[9:17])
    wire sid_clk_c /* synthesis is_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(108[9:17])
    
    wire GND_net, sid_addr_c, n724, n725, n726, n727, sid_cs_n_c, 
        sid_rw_c, sid_rst_n_c, rst_n_c, spi_sck_c, spi_mosi_c, spi_cs_n_c, 
        spi_busy_c;
    wire [1:0]spi_sck_xfer_pipe;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(109[12:29])
    
    wire spi_miso_buf, sid_data_out_0, sid_data_out_1, sid_data_out_2, 
        n717, sid_data_out_3, sid_data_out_4, sid_data_out_5, sid_data_out_7, 
        sid_data_out_6;
    wire [7:0]sid_data_buf;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(119[12:24])
    
    wire n977, n1905, n262, n263, n50, VCC_net, n1906;
    
    OSCH OSCInst0 (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis NOM_FREQ="17.73", syn_instantiated=1 */ ;
    defparam OSCInst0.NOM_FREQ = "17.73";
    BB sid_data_pad_1 (.I(sid_data_buf[1]), .T(n717), .B(sid_data[1]), 
       .O(sid_data_out_1));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(326[5:13])
    IB spi_cs_n_pad (.I(spi_cs_n), .O(spi_cs_n_c));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(55[9:17])
    OB sid_clk_pad (.I(sid_clk_c), .O(sid_clk));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(49[9:16])
    IB spi_mosi_pad (.I(spi_mosi), .O(spi_mosi_c));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(53[9:17])
    IB spi_sck_pad (.I(spi_sck), .O(spi_sck_c));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(52[9:16])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(41[9:14])
    OB spi_busy_pad (.I(spi_busy_c), .O(spi_busy));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(56[9:17])
    BB sid_data_pad_2 (.I(sid_data_buf[2]), .T(n717), .B(sid_data[2]), 
       .O(sid_data_out_2));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(326[5:13])
    BB sid_data_pad_3 (.I(sid_data_buf[3]), .T(n717), .B(sid_data[3]), 
       .O(sid_data_out_3));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(326[5:13])
    OB sid_rst_n_pad (.I(sid_rst_n_c), .O(sid_rst_n));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(48[9:18])
    OB sid_rw_pad (.I(sid_rw_c), .O(sid_rw));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(47[9:15])
    OB sid_timer_pad (.I(GND_net), .O(sid_timer));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(50[9:18])
    FD1S3AX spi_sck_xfer_pipe_i0 (.D(spi_sck_c), .CK(clk_fast), .Q(spi_sck_xfer_pipe[0]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(138[9] 142[16])
    defparam spi_sck_xfer_pipe_i0.GSR = "ENABLED";
    OB sid_cs_n_pad (.I(sid_cs_n_c), .O(sid_cs_n));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(46[9:17])
    OB sid_addr_pad_0 (.I(n727), .O(sid_addr[0]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(44[9:17])
    BB sid_data_pad_4 (.I(sid_data_buf[4]), .T(n717), .B(sid_data[4]), 
       .O(sid_data_out_4));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(326[5:13])
    OB sid_addr_pad_1 (.I(n726), .O(sid_addr[1]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(44[9:17])
    BB sid_data_pad_5 (.I(sid_data_buf[5]), .T(n717), .B(sid_data[5]), 
       .O(sid_data_out_5));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(326[5:13])
    OB sid_addr_pad_2 (.I(n725), .O(sid_addr[2]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(44[9:17])
    OB sid_addr_pad_3 (.I(n724), .O(sid_addr[3]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(44[9:17])
    OB sid_addr_pad_4 (.I(sid_addr_c), .O(sid_addr[4]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(44[9:17])
    OBZ spi_miso_pad (.I(spi_miso_buf), .T(spi_cs_n_c), .O(spi_miso));   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(266[5:13])
    BB sid_data_pad_7 (.I(sid_data_buf[7]), .T(n717), .B(sid_data[7]), 
       .O(sid_data_out_7));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(326[5:13])
    OB led_pad_0 (.I(sid_rst_n_c), .O(led[0]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(39[3:6])
    BB sid_data_pad_6 (.I(sid_data_buf[6]), .T(n717), .B(sid_data[6]), 
       .O(sid_data_out_6));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(326[5:13])
    OB led_pad_1 (.I(sid_rw_c), .O(led[1]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(39[3:6])
    OB led_pad_2 (.I(sid_cs_n_c), .O(led[2]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(39[3:6])
    OB led_pad_3 (.I(n727), .O(led[3]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(39[3:6])
    OB led_pad_4 (.I(n726), .O(led[4]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(39[3:6])
    FD1S3AX spi_sck_xfer_pipe_i1 (.D(spi_sck_xfer_pipe[0]), .CK(clk_fast), 
            .Q(spi_sck_xfer_pipe[1]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(138[9] 142[16])
    defparam spi_sck_xfer_pipe_i1.GSR = "ENABLED";
    OB led_pad_5 (.I(n725), .O(led[5]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(39[3:6])
    OB led_pad_6 (.I(n724), .O(led[6]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(39[3:6])
    OB led_pad_7 (.I(sid_addr_c), .O(led[7]));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(39[3:6])
    BB sid_data_pad_0 (.I(sid_data_buf[0]), .T(n717), .B(sid_data[0]), 
       .O(sid_data_out_0));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(326[5:13])
    LUT4 m0_lut (.Z(n1905)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    GSR GSR_INST (.GSR(rst_n_c));
    spi_sid u_sid_spi (.spi_miso_buf(spi_miso_buf), .clk_fast(clk_fast), 
            .spi_mosi_c(spi_mosi_c), .n1905(n1905), .spi_busy_c(spi_busy_c), 
            .spi_cs_n_c(spi_cs_n_c), .\spi_sck_xfer_pipe[1] (spi_sck_xfer_pipe[1]), 
            .sid_data_buf({sid_data_buf}), .sid_rst_n_c(sid_rst_n_c), .n727(n727), 
            .sid_clk_c(sid_clk_c), .n1906(n1906), .sid_data_out_0(sid_data_out_0), 
            .n262(n262), .n977(n977), .n263(n263), .sid_rw_c(sid_rw_c), 
            .sid_cs_n_c(sid_cs_n_c), .sid_addr_c(sid_addr_c), .n724(n724), 
            .n725(n725), .n726(n726), .sid_data_out_1(sid_data_out_1), 
            .n717(n717), .sid_data_out_2(sid_data_out_2), .sid_data_out_3(sid_data_out_3), 
            .sid_data_out_4(sid_data_out_4), .sid_data_out_5(sid_data_out_5), 
            .sid_data_out_6(sid_data_out_6), .sid_data_out_7(sid_data_out_7), 
            .n50(n50));   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(145[17:24])
    pll u_pll (.osc_clk(osc_clk), .clk_fast(clk_fast), .sid_clk_c(sid_clk_c), 
        .GND_net(GND_net), .n262(n262), .n50(n50), .n263(n263), .n977(n977)) /* synthesis NGD_DRC_MASK=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(129[10:13])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 m1_lut (.Z(n1906)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i1578 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module spi_sid
//

module spi_sid (spi_miso_buf, clk_fast, spi_mosi_c, n1905, spi_busy_c, 
            spi_cs_n_c, \spi_sck_xfer_pipe[1] , sid_data_buf, sid_rst_n_c, 
            n727, sid_clk_c, n1906, sid_data_out_0, n262, n977, 
            n263, sid_rw_c, sid_cs_n_c, sid_addr_c, n724, n725, 
            n726, sid_data_out_1, n717, sid_data_out_2, sid_data_out_3, 
            sid_data_out_4, sid_data_out_5, sid_data_out_6, sid_data_out_7, 
            n50);
    output spi_miso_buf;
    input clk_fast;
    input spi_mosi_c;
    input n1905;
    output spi_busy_c;
    input spi_cs_n_c;
    input \spi_sck_xfer_pipe[1] ;
    output [7:0]sid_data_buf;
    output sid_rst_n_c;
    output n727;
    input sid_clk_c;
    input n1906;
    input sid_data_out_0;
    output n262;
    input n977;
    output n263;
    output sid_rw_c;
    output sid_cs_n_c;
    output sid_addr_c;
    output n724;
    output n725;
    output n726;
    input sid_data_out_1;
    output n717;
    input sid_data_out_2;
    input sid_data_out_3;
    input sid_data_out_4;
    input sid_data_out_5;
    input sid_data_out_6;
    input sid_data_out_7;
    output n50;
    
    wire clk_fast /* synthesis SET_AS_NETWORK=clk_fast, is_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(107[9:17])
    wire sid_clk_c /* synthesis is_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(108[9:17])
    wire [3:0]spi_bit_counter;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(97[12:27])
    
    wire n1860;
    wire [7:0]n89;
    
    wire n4, clk_fast_enable_1, next_spi_miso_buf;
    wire [15:0]spi_cmd_buf;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(109[12:23])
    
    wire clk_fast_enable_2;
    wire [15:0]next_spi_cmd_buf;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(110[12:28])
    
    wire clk_fast_enable_4, n801, clk_fast_enable_6, spi_mosi_buf, clk_fast_enable_7, 
        n1751, n805, n803, n1863, n1866, n1848, sid_busy, n1869, 
        n1868, n1845, n101, n11, clk_fast_enable_25, n1856;
    wire [3:0]next_spi_bit_counter_3__N_69;
    
    wire n1859, n1867, clk_fast_enable_24, clk_fast_enable_32, next_sid_cmd_ack_buf_N_208, 
        clk_fast_enable_19, clk_fast_enable_49, n1847, bit_counter_state, 
        clk_fast_enable_20, clk_fast_enable_21, clk_fast_enable_22, clk_fast_enable_23, 
        sid_cmd_ack, n1855, clk_fast_enable_26, n4_adj_210, clk_fast_enable_27, 
        clk_fast_enable_28;
    wire [7:0]spi_data_out;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(113[12:24])
    
    wire n1780, n1857, clk_fast_enable_45, n1779, n1852, n1778, 
        n1850, n1846, n1844, n1854, n1781, n1849, n1763, n93_adj_211, 
        n1782, n1783, n1784, n1668, clk_fast_enable_51, n1853, n11_adj_212, 
        clk_fast_enable_52;
    
    LUT4 i1_2_lut_3_lut_4_lut (.A(spi_bit_counter[2]), .B(n1860), .C(n89[3]), 
         .D(spi_bit_counter[0]), .Z(n4)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    FD1P3AX spi_miso_buf_107 (.D(next_spi_miso_buf), .SP(clk_fast_enable_1), 
            .CK(clk_fast), .Q(spi_miso_buf)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_miso_buf_107.GSR = "ENABLED";
    FD1P3AX spi_cmd_buf_i0 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_2), 
            .CK(clk_fast), .Q(spi_cmd_buf[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i0.GSR = "ENABLED";
    FD1P3AX spi_cmd_buf_i11 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_4), 
            .CK(clk_fast), .Q(spi_cmd_buf[11])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i11.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n801), .CK(clk_fast), .Q(n89[2]));   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(211[9] 262[18])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1P3AX spi_cmd_buf_i10 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_6), 
            .CK(clk_fast), .Q(spi_cmd_buf[10])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i10.GSR = "ENABLED";
    FD1P3AX spi_mosi_buf_106 (.D(spi_mosi_c), .SP(clk_fast_enable_7), .CK(clk_fast), 
            .Q(spi_mosi_buf)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam spi_mosi_buf_106.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n1751), .CK(clk_fast), .Q(n89[1]));   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(211[9] 262[18])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i5 (.D(n805), .CK(clk_fast), .Q(n89[4]));   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(211[9] 262[18])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n803), .CK(clk_fast), .Q(n89[3]));   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(211[9] 262[18])
    defparam state_FSM_i4.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_then_4_lut (.A(n1863), .B(n1866), .C(n1848), .D(sid_busy), 
         .Z(n1869)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam i1_3_lut_4_lut_then_4_lut.init = 16'h0008;
    FD1S3AY state_FSM_i1 (.D(n1905), .CK(clk_fast), .Q(n89[0]));   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(211[9] 262[18])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_else_4_lut (.A(n1863), .B(n1866), .C(n89[0]), 
         .D(n89[3]), .Z(n1868)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam i1_3_lut_4_lut_else_4_lut.init = 16'hf8f0;
    LUT4 i1_3_lut_4_lut (.A(spi_bit_counter[1]), .B(n1845), .C(n101), 
         .D(n11), .Z(clk_fast_enable_25)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hff10;
    LUT4 i22_3_lut_4_lut (.A(spi_bit_counter[1]), .B(n1856), .C(spi_bit_counter[3]), 
         .D(spi_bit_counter[2]), .Z(next_spi_bit_counter_3__N_69[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i22_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_3_lut_4_lut_adj_7 (.A(spi_bit_counter[2]), .B(n1859), .C(n1867), 
         .D(n11), .Z(clk_fast_enable_24)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam i1_3_lut_4_lut_adj_7.init = 16'hff40;
    LUT4 i1_3_lut_4_lut_adj_8 (.A(spi_bit_counter[2]), .B(n1859), .C(n1863), 
         .D(n11), .Z(clk_fast_enable_32)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam i1_3_lut_4_lut_adj_8.init = 16'hff40;
    LUT4 sid_busy_I_0_2_lut (.A(sid_busy), .B(next_sid_cmd_ack_buf_N_208), 
         .Z(spi_busy_c)) /* synthesis lut_function=(A+(B)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(141[17:42])
    defparam sid_busy_I_0_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_9 (.A(spi_bit_counter[2]), .B(n1860), .C(n1859), 
         .D(n11), .Z(clk_fast_enable_6)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;
    defparam i1_3_lut_4_lut_adj_9.init = 16'hff20;
    LUT4 i1_3_lut_4_lut_adj_10 (.A(n1867), .B(n1845), .C(spi_bit_counter[2]), 
         .D(n11), .Z(clk_fast_enable_19)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam i1_3_lut_4_lut_adj_10.init = 16'hff20;
    FD1P3JX spi_bit_counter_i0_i0 (.D(next_spi_bit_counter_3__N_69[0]), .SP(clk_fast_enable_49), 
            .PD(spi_cs_n_c), .CK(clk_fast), .Q(spi_bit_counter[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam spi_bit_counter_i0_i0.GSR = "ENABLED";
    LUT4 i1182_2_lut_rep_16_4_lut (.A(n89[3]), .B(n1847), .C(n89[1]), 
         .D(spi_bit_counter[0]), .Z(n1845)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B+((D)+!C))) */ ;
    defparam i1182_2_lut_rep_16_4_lut.init = 16'hffc5;
    FD1P3AX spi_cmd_buf_i1 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_19), 
            .CK(clk_fast), .Q(spi_cmd_buf[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(spi_cs_n_c), .B(bit_counter_state), .Z(clk_fast_enable_49)) /* synthesis lut_function=(A+!(B)) */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(55[9:17])
    defparam i1_2_lut.init = 16'hbbbb;
    FD1P3AX spi_cmd_buf_i9 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_20), 
            .CK(clk_fast), .Q(spi_cmd_buf[9])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i9.GSR = "ENABLED";
    FD1P3AX spi_cmd_buf_i15 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_21), 
            .CK(clk_fast), .Q(spi_cmd_buf[15])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i15.GSR = "ENABLED";
    FD1P3AX spi_cmd_buf_i8 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_22), 
            .CK(clk_fast), .Q(spi_cmd_buf[8])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i8.GSR = "ENABLED";
    FD1P3AX spi_cmd_buf_i14 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_23), 
            .CK(clk_fast), .Q(spi_cmd_buf[14])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i14.GSR = "ENABLED";
    FD1P3AX spi_cmd_buf_i4 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_24), 
            .CK(clk_fast), .Q(spi_cmd_buf[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i4.GSR = "ENABLED";
    FD1P3AX spi_cmd_buf_i3 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_25), 
            .CK(clk_fast), .Q(spi_cmd_buf[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i3.GSR = "ENABLED";
    LUT4 i1176_2_lut_rep_26 (.A(n89[4]), .B(sid_cmd_ack), .Z(n1855)) /* synthesis lut_function=(A (B)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam i1176_2_lut_rep_26.init = 16'h8888;
    FD1P3AX spi_cmd_buf_i7 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_26), 
            .CK(clk_fast), .Q(spi_cmd_buf[7])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(n89[4]), .B(sid_cmd_ack), .C(n89[0]), .Z(n4_adj_210)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i375_2_lut (.A(spi_bit_counter[0]), .B(\spi_sck_xfer_pipe[1] ), 
         .Z(next_spi_bit_counter_3__N_69[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i375_2_lut.init = 16'h6666;
    FD1P3AX spi_cmd_buf_i2 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_27), 
            .CK(clk_fast), .Q(spi_cmd_buf[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i2.GSR = "ENABLED";
    FD1P3AX spi_cmd_buf_i6 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_28), 
            .CK(clk_fast), .Q(spi_cmd_buf[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i6.GSR = "ENABLED";
    LUT4 i1503_3_lut (.A(spi_data_out[6]), .B(spi_data_out[4]), .C(spi_bit_counter[1]), 
         .Z(n1780)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1503_3_lut.init = 16'hcaca;
    LUT4 i377_2_lut_rep_27 (.A(spi_bit_counter[0]), .B(\spi_sck_xfer_pipe[1] ), 
         .Z(n1856)) /* synthesis lut_function=(A (B)) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i377_2_lut_rep_27.init = 16'h8888;
    LUT4 i383_2_lut_3_lut (.A(spi_bit_counter[0]), .B(\spi_sck_xfer_pipe[1] ), 
         .C(spi_bit_counter[1]), .Z(next_spi_bit_counter_3__N_69[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i383_2_lut_3_lut.init = 16'h7878;
    LUT4 i390_2_lut_3_lut_4_lut (.A(spi_bit_counter[0]), .B(\spi_sck_xfer_pipe[1] ), 
         .C(spi_bit_counter[2]), .D(spi_bit_counter[1]), .Z(next_spi_bit_counter_3__N_69[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i390_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1523_2_lut_rep_28 (.A(spi_cs_n_c), .B(bit_counter_state), .Z(n1857)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1523_2_lut_rep_28.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_adj_11 (.A(spi_cs_n_c), .B(bit_counter_state), .C(\spi_sck_xfer_pipe[1] ), 
         .Z(clk_fast_enable_7)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_11.init = 16'h1010;
    LUT4 i1_3_lut_4_lut_adj_12 (.A(n1867), .B(n1845), .C(spi_bit_counter[2]), 
         .D(n11), .Z(clk_fast_enable_45)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam i1_3_lut_4_lut_adj_12.init = 16'hff02;
    FD1P3AX spi_cmd_buf_i12 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_32), 
            .CK(clk_fast), .Q(spi_cmd_buf[12])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i12.GSR = "ENABLED";
    FD1P3JX spi_bit_counter_i0_i1 (.D(next_spi_bit_counter_3__N_69[1]), .SP(clk_fast_enable_49), 
            .PD(spi_cs_n_c), .CK(clk_fast), .Q(spi_bit_counter[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam spi_bit_counter_i0_i1.GSR = "ENABLED";
    LUT4 i1502_3_lut (.A(spi_data_out[3]), .B(spi_data_out[1]), .C(spi_bit_counter[1]), 
         .Z(n1779)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1502_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_30 (.A(n89[3]), .B(spi_bit_counter[0]), .C(n89[1]), 
         .Z(n1859)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(211[9] 262[18])
    defparam i2_3_lut_rep_30.init = 16'h0808;
    LUT4 i1_2_lut_rep_23_4_lut (.A(n89[3]), .B(spi_bit_counter[0]), .C(n89[1]), 
         .D(spi_bit_counter[2]), .Z(n1852)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(211[9] 262[18])
    defparam i1_2_lut_rep_23_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_rep_31 (.A(spi_bit_counter[3]), .B(spi_bit_counter[1]), 
         .Z(n1860)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_31.init = 16'heeee;
    LUT4 i1501_3_lut (.A(spi_data_out[7]), .B(spi_data_out[5]), .C(spi_bit_counter[1]), 
         .Z(n1778)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1501_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(n11), .B(n1863), .C(spi_bit_counter[2]), .D(n1845), 
         .Z(clk_fast_enable_20)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'haaea;
    LUT4 i1_2_lut_rep_19_3_lut_4_lut (.A(spi_bit_counter[3]), .B(spi_bit_counter[1]), 
         .C(spi_bit_counter[0]), .D(spi_bit_counter[2]), .Z(n1848)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_19_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_21_3_lut (.A(spi_bit_counter[3]), .B(spi_bit_counter[1]), 
         .C(spi_bit_counter[2]), .Z(n1850)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_21_3_lut.init = 16'hfefe;
    LUT4 i1497_2_lut_rep_15_3_lut (.A(n1846), .B(spi_bit_counter[0]), .C(spi_bit_counter[1]), 
         .Z(n1844)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1497_2_lut_rep_15_3_lut.init = 16'hfefe;
    LUT4 i26_3_lut_rep_17_4_lut (.A(sid_busy), .B(n1848), .C(n89[1]), 
         .D(n89[3]), .Z(n1846)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(220[13] 228[20])
    defparam i26_3_lut_rep_17_4_lut.init = 16'he0ef;
    LUT4 i1_2_lut_rep_25_3_lut (.A(spi_bit_counter[3]), .B(spi_bit_counter[1]), 
         .C(spi_bit_counter[2]), .Z(n1854)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_25_3_lut.init = 16'h1010;
    LUT4 i20_4_lut (.A(n4), .B(n1847), .C(n89[1]), .D(n89[0]), .Z(clk_fast_enable_21)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i20_4_lut.init = 16'h3f3a;
    LUT4 i1504_3_lut (.A(spi_data_out[2]), .B(spi_data_out[0]), .C(spi_bit_counter[1]), 
         .Z(n1781)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1504_3_lut.init = 16'hcaca;
    LUT4 i20_4_lut_adj_13 (.A(n89[4]), .B(n1848), .C(n89[1]), .D(n89[0]), 
         .Z(clk_fast_enable_1)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;
    defparam i20_4_lut_adj_13.init = 16'h3f35;
    FD1P3AX spi_cmd_buf_i5 (.D(next_spi_cmd_buf[8]), .SP(clk_fast_enable_45), 
            .CK(clk_fast), .Q(spi_cmd_buf[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_buf_i5.GSR = "ENABLED";
    LUT4 i538_4_lut (.A(n1849), .B(sid_busy), .C(n89[2]), .D(n1763), 
         .Z(n801)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(211[9] 262[18])
    defparam i538_4_lut.init = 16'hdc50;
    FD1P3JX spi_bit_counter_i0_i2 (.D(next_spi_bit_counter_3__N_69[2]), .SP(clk_fast_enable_49), 
            .PD(spi_cs_n_c), .CK(clk_fast), .Q(spi_bit_counter[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam spi_bit_counter_i0_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_34 (.A(spi_bit_counter[1]), .B(spi_bit_counter[3]), 
         .Z(n1863)) /* synthesis lut_function=(!((B)+!A)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam i1_2_lut_rep_34.init = 16'h2222;
    LUT4 i2_3_lut (.A(n93_adj_211), .B(n89[1]), .C(n89[0]), .Z(next_spi_miso_buf)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(211[9] 262[18])
    defparam i2_3_lut.init = 16'h0202;
    LUT4 i1_4_lut_adj_14 (.A(n11), .B(n1850), .C(n1846), .D(spi_bit_counter[0]), 
         .Z(clk_fast_enable_23)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;
    defparam i1_4_lut_adj_14.init = 16'habaa;
    LUT4 i1_3_lut (.A(n89[1]), .B(spi_mosi_buf), .C(n89[0]), .Z(next_spi_cmd_buf[8])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i1_3_lut.init = 16'h8c8c;
    LUT4 i1_4_lut_adj_15 (.A(n11), .B(spi_bit_counter[2]), .C(spi_bit_counter[3]), 
         .D(n1844), .Z(clk_fast_enable_26)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_15.init = 16'haaba;
    LUT4 i1_3_lut_4_lut_adj_16 (.A(n1846), .B(spi_bit_counter[0]), .C(n1854), 
         .D(n11), .Z(clk_fast_enable_4)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_16.init = 16'hff10;
    L6MUX21 i1507 (.D0(n1782), .D1(n1783), .SD(spi_bit_counter[0]), .Z(n1784));
    LUT4 i1_4_lut_adj_17 (.A(n11), .B(n1859), .C(spi_bit_counter[1]), 
         .D(n101), .Z(clk_fast_enable_27)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_17.init = 16'haeaa;
    PFUMX i1505 (.BLUT(n1778), .ALUT(n1779), .C0(spi_bit_counter[2]), 
          .Z(n1782));
    FD1P3JX spi_bit_counter_i0_i3 (.D(next_spi_bit_counter_3__N_69[3]), .SP(clk_fast_enable_49), 
            .PD(spi_cs_n_c), .CK(clk_fast), .Q(spi_bit_counter[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam spi_bit_counter_i0_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_18 (.A(n11), .B(spi_bit_counter[1]), .C(n1852), 
         .D(spi_bit_counter[3]), .Z(clk_fast_enable_28)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_18.init = 16'hbaaa;
    LUT4 i1_2_lut_rep_37 (.A(spi_bit_counter[2]), .B(spi_bit_counter[0]), 
         .Z(n1866)) /* synthesis lut_function=(A (B)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam i1_2_lut_rep_37.init = 16'h8888;
    LUT4 i2_4_lut (.A(n89[1]), .B(n4_adj_210), .C(n1668), .D(n1848), 
         .Z(n1751)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(211[9] 262[18])
    defparam i2_4_lut.init = 16'hfefc;
    FD1P3AX bit_counter_state_103 (.D(n1857), .SP(clk_fast_enable_51), .CK(clk_fast), 
            .Q(bit_counter_state)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam bit_counter_state_103.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_19 (.A(n1867), .B(n1866), .C(n1846), .D(n11), 
         .Z(clk_fast_enable_2)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam i1_3_lut_4_lut_adj_19.init = 16'hff08;
    LUT4 i1_2_lut_rep_38 (.A(spi_bit_counter[1]), .B(spi_bit_counter[3]), 
         .Z(n1867)) /* synthesis lut_function=(A (B)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam i1_2_lut_rep_38.init = 16'h8888;
    PFUMX i1506 (.BLUT(n1780), .ALUT(n1781), .C0(spi_bit_counter[2]), 
          .Z(n1783));
    LUT4 i1_2_lut_adj_20 (.A(spi_bit_counter[2]), .B(spi_bit_counter[3]), 
         .Z(n101)) /* synthesis lut_function=(A (B)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam i1_2_lut_adj_20.init = 16'h8888;
    LUT4 i1_2_lut_rep_24_3_lut_4_lut (.A(spi_bit_counter[2]), .B(spi_bit_counter[0]), 
         .C(spi_bit_counter[3]), .D(spi_bit_counter[1]), .Z(n1853)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam i1_2_lut_rep_24_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_20_3_lut_4_lut (.A(spi_bit_counter[1]), .B(spi_bit_counter[3]), 
         .C(spi_bit_counter[0]), .D(spi_bit_counter[2]), .Z(n1849)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(146[9] 154[16])
    defparam i1_2_lut_rep_20_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_adj_21 (.A(spi_cs_n_c), .B(bit_counter_state), .C(\spi_sck_xfer_pipe[1] ), 
         .Z(clk_fast_enable_51)) /* synthesis lut_function=(A+!(B (C)+!B !(C))) */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(55[9:17])
    defparam i1_3_lut_adj_21.init = 16'hbebe;
    LUT4 i542_4_lut (.A(n89[4]), .B(n1849), .C(sid_cmd_ack), .D(n89[3]), 
         .Z(n805)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(211[9] 262[18])
    defparam i542_4_lut.init = 16'hce0a;
    LUT4 i24_3_lut (.A(n11_adj_212), .B(sid_cmd_ack), .C(n89[4]), .Z(clk_fast_enable_52)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i24_3_lut.init = 16'hcaca;
    LUT4 i25_4_lut (.A(n89[1]), .B(n1849), .C(n89[3]), .D(n89[2]), .Z(n11_adj_212)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i25_4_lut.init = 16'hc0c5;
    LUT4 i540_4_lut (.A(n89[3]), .B(sid_busy), .C(n1849), .D(n1763), 
         .Z(n803)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(211[9] 262[18])
    defparam i540_4_lut.init = 16'h3b0a;
    LUT4 i95_4_lut (.A(n1853), .B(spi_bit_counter[3]), .C(n89[3]), .D(n1784), 
         .Z(n93_adj_211)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i95_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_adj_22 (.A(n89[0]), .B(n89[1]), .Z(n11)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_22.init = 16'h2222;
    LUT4 i3_4_lut (.A(spi_bit_counter[1]), .B(n89[2]), .C(spi_bit_counter[0]), 
         .D(n101), .Z(n1668)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(211[9] 262[18])
    defparam i3_4_lut.init = 16'h8000;
    FD1P3IX spi_cmd_valid_109 (.D(n89[3]), .SP(clk_fast_enable_52), .CD(n1855), 
            .CK(clk_fast), .Q(next_sid_cmd_ack_buf_N_208)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=145, LSE_RLINE=145 */ ;   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(191[9] 201[16])
    defparam spi_cmd_valid_109.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(spi_bit_counter[2]), .B(n1860), 
         .C(n89[1]), .D(spi_bit_counter[0]), .Z(n1763)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'h0010;
    LUT4 i246_2_lut_rep_18_3_lut_4_lut (.A(spi_bit_counter[2]), .B(n1860), 
         .C(sid_busy), .D(spi_bit_counter[0]), .Z(n1847)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i246_2_lut_rep_18_3_lut_4_lut.init = 16'hfffe;
    PFUMX i1542 (.BLUT(n1868), .ALUT(n1869), .C0(n89[1]), .Z(clk_fast_enable_22));
    sid u_sid (.clk_fast(clk_fast), .sid_data_buf({sid_data_buf}), .\spi_cmd_buf[2] (spi_cmd_buf[2]), 
        .sid_rst_n_c(sid_rst_n_c), .\spi_cmd_buf[0] (spi_cmd_buf[0]), .sid_busy(sid_busy), 
        .\spi_cmd_buf[1] (spi_cmd_buf[1]), .\spi_cmd_buf[7] (spi_cmd_buf[7]), 
        .\spi_cmd_buf[6] (spi_cmd_buf[6]), .\spi_cmd_buf[5] (spi_cmd_buf[5]), 
        .\spi_cmd_buf[4] (spi_cmd_buf[4]), .\spi_cmd_buf[3] (spi_cmd_buf[3]), 
        .n727(n727), .\spi_cmd_buf[8] (spi_cmd_buf[8]), .next_sid_cmd_ack_buf_N_208(next_sid_cmd_ack_buf_N_208), 
        .sid_cmd_ack(sid_cmd_ack), .sid_clk_c(sid_clk_c), .n1906(n1906), 
        .spi_data_out({spi_data_out}), .sid_data_out_0(sid_data_out_0), 
        .n262(n262), .n977(n977), .n263(n263), .sid_rw_c(sid_rw_c), 
        .sid_cs_n_c(sid_cs_n_c), .sid_addr_c(sid_addr_c), .\spi_cmd_buf[12] (spi_cmd_buf[12]), 
        .n724(n724), .\spi_cmd_buf[11] (spi_cmd_buf[11]), .n725(n725), 
        .\spi_cmd_buf[10] (spi_cmd_buf[10]), .n726(n726), .\spi_cmd_buf[9] (spi_cmd_buf[9]), 
        .sid_data_out_1(sid_data_out_1), .n717(n717), .sid_data_out_2(sid_data_out_2), 
        .sid_data_out_3(sid_data_out_3), .sid_data_out_4(sid_data_out_4), 
        .sid_data_out_5(sid_data_out_5), .sid_data_out_6(sid_data_out_6), 
        .sid_data_out_7(sid_data_out_7), .\spi_cmd_buf[14] (spi_cmd_buf[14]), 
        .\spi_cmd_buf[15] (spi_cmd_buf[15]), .n50(n50));   // j:/alfheimsystems/projects/lattice/sid/spi_sid.vhd(119[13:16])
    
endmodule
//
// Verilog Description of module sid
//

module sid (clk_fast, sid_data_buf, \spi_cmd_buf[2] , sid_rst_n_c, \spi_cmd_buf[0] , 
            sid_busy, \spi_cmd_buf[1] , \spi_cmd_buf[7] , \spi_cmd_buf[6] , 
            \spi_cmd_buf[5] , \spi_cmd_buf[4] , \spi_cmd_buf[3] , n727, 
            \spi_cmd_buf[8] , next_sid_cmd_ack_buf_N_208, sid_cmd_ack, 
            sid_clk_c, n1906, spi_data_out, sid_data_out_0, n262, 
            n977, n263, sid_rw_c, sid_cs_n_c, sid_addr_c, \spi_cmd_buf[12] , 
            n724, \spi_cmd_buf[11] , n725, \spi_cmd_buf[10] , n726, 
            \spi_cmd_buf[9] , sid_data_out_1, n717, sid_data_out_2, 
            sid_data_out_3, sid_data_out_4, sid_data_out_5, sid_data_out_6, 
            sid_data_out_7, \spi_cmd_buf[14] , \spi_cmd_buf[15] , n50);
    input clk_fast;
    output [7:0]sid_data_buf;
    input \spi_cmd_buf[2] ;
    output sid_rst_n_c;
    input \spi_cmd_buf[0] ;
    output sid_busy;
    input \spi_cmd_buf[1] ;
    input \spi_cmd_buf[7] ;
    input \spi_cmd_buf[6] ;
    input \spi_cmd_buf[5] ;
    input \spi_cmd_buf[4] ;
    input \spi_cmd_buf[3] ;
    output n727;
    input \spi_cmd_buf[8] ;
    input next_sid_cmd_ack_buf_N_208;
    output sid_cmd_ack;
    input sid_clk_c;
    input n1906;
    output [7:0]spi_data_out;
    input sid_data_out_0;
    output n262;
    input n977;
    output n263;
    output sid_rw_c;
    output sid_cs_n_c;
    output sid_addr_c;
    input \spi_cmd_buf[12] ;
    output n724;
    input \spi_cmd_buf[11] ;
    output n725;
    input \spi_cmd_buf[10] ;
    output n726;
    input \spi_cmd_buf[9] ;
    input sid_data_out_1;
    output n717;
    input sid_data_out_2;
    input sid_data_out_3;
    input sid_data_out_4;
    input sid_data_out_5;
    input sid_data_out_6;
    input sid_data_out_7;
    input \spi_cmd_buf[14] ;
    input \spi_cmd_buf[15] ;
    output n50;
    
    wire clk_fast /* synthesis SET_AS_NETWORK=clk_fast, is_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(107[9:17])
    wire sid_clk_c /* synthesis is_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(108[9:17])
    wire [3:0]n37;
    
    wire clk_fast_enable_50, n1865;
    wire [3:0]n21;
    
    wire clk_fast_enable_37, n594, n1851, clk_fast_enable_9, n1180, 
        next_sid_busy_N_203;
    wire [15:0]n251;
    
    wire clk_fast_enable_17, n1861, n1864, n1699, n1741;
    wire [3:0]reset_clk_counter;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(91[12:29])
    
    wire n836, n1858, n835, clk_fast_enable_44, n831, clk_fast_enable_31;
    wire [1:0]n438;
    
    wire n4_adj_209, n931, n607;
    wire [2:0]next_state_3__N_192;
    
    FD1P3IX reset_clk_counter_344__i0 (.D(n21[0]), .SP(clk_fast_enable_50), 
            .CD(n1865), .CK(clk_fast), .Q(n37[0]));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam reset_clk_counter_344__i0.GSR = "ENABLED";
    FD1P3IX sid_data_buf__i2 (.D(\spi_cmd_buf[2] ), .SP(clk_fast_enable_37), 
            .CD(n594), .CK(clk_fast), .Q(sid_data_buf[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_data_buf__i2.GSR = "ENABLED";
    FD1S3AX sid_rst_n_buf_103 (.D(n1851), .CK(clk_fast), .Q(sid_rst_n_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_rst_n_buf_103.GSR = "ENABLED";
    FD1P3IX sid_data_buf__i0 (.D(\spi_cmd_buf[0] ), .SP(clk_fast_enable_37), 
            .CD(n594), .CK(clk_fast), .Q(sid_data_buf[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_data_buf__i0.GSR = "ENABLED";
    FD1P3JX sid_busy_buf_100 (.D(next_sid_busy_N_203), .SP(clk_fast_enable_9), 
            .PD(n1180), .CK(clk_fast), .Q(sid_busy)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_busy_buf_100.GSR = "ENABLED";
    FD1P3IX sid_data_buf__i1 (.D(\spi_cmd_buf[1] ), .SP(clk_fast_enable_37), 
            .CD(n594), .CK(clk_fast), .Q(sid_data_buf[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_data_buf__i1.GSR = "ENABLED";
    FD1P3IX sid_data_buf__i7 (.D(\spi_cmd_buf[7] ), .SP(clk_fast_enable_37), 
            .CD(n594), .CK(clk_fast), .Q(sid_data_buf[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_data_buf__i7.GSR = "ENABLED";
    FD1P3IX sid_data_buf__i6 (.D(\spi_cmd_buf[6] ), .SP(clk_fast_enable_37), 
            .CD(n594), .CK(clk_fast), .Q(sid_data_buf[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_data_buf__i6.GSR = "ENABLED";
    FD1P3IX sid_data_buf__i5 (.D(\spi_cmd_buf[5] ), .SP(clk_fast_enable_37), 
            .CD(n594), .CK(clk_fast), .Q(sid_data_buf[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_data_buf__i5.GSR = "ENABLED";
    FD1P3IX sid_data_buf__i4 (.D(\spi_cmd_buf[4] ), .SP(clk_fast_enable_37), 
            .CD(n594), .CK(clk_fast), .Q(sid_data_buf[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_data_buf__i4.GSR = "ENABLED";
    FD1P3IX sid_data_buf__i3 (.D(\spi_cmd_buf[3] ), .SP(clk_fast_enable_37), 
            .CD(n594), .CK(clk_fast), .Q(sid_data_buf[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_data_buf__i3.GSR = "ENABLED";
    FD1P3IX sid_addr_buf__i1 (.D(\spi_cmd_buf[8] ), .SP(clk_fast_enable_37), 
            .CD(n594), .CK(clk_fast), .Q(n727)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_addr_buf__i1.GSR = "ENABLED";
    LUT4 i1520_3_lut (.A(n251[0]), .B(n251[3]), .C(next_sid_cmd_ack_buf_N_208), 
         .Z(clk_fast_enable_17)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1520_3_lut.init = 16'hefef;
    FD1P3AX sid_cmd_ack_buf_106 (.D(n1861), .SP(clk_fast_enable_17), .CK(clk_fast), 
            .Q(sid_cmd_ack)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_cmd_ack_buf_106.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(n251[1]), .B(n1864), .C(n251[2]), .D(sid_clk_c), 
         .Z(n1699)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (C (D))) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(285[21:38])
    defparam i1_3_lut_4_lut.init = 16'hf200;
    FD1S3AY state_FSM_i1 (.D(n1741), .CK(clk_fast), .Q(n251[0]));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i1528_2_lut_rep_22_3_lut (.A(n251[1]), .B(n251[2]), .C(n251[0]), 
         .Z(n1851)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam i1528_2_lut_rep_22_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n251[1]), .B(n251[2]), .C(n251[3]), 
         .D(n251[0]), .Z(clk_fast_enable_9)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1S3AX state_FSM_i14 (.D(n251[12]), .CK(clk_fast), .Q(n251[13]));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i14.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_3 (.A(n251[1]), .B(n251[2]), .C(n251[3]), 
         .D(n251[0]), .Z(n1180)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam i1_2_lut_3_lut_4_lut_adj_3.init = 16'h0f0e;
    FD1S3AX state_FSM_i13 (.D(n251[11]), .CK(clk_fast), .Q(n251[12]));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i13.GSR = "ENABLED";
    LUT4 i1382_3_lut_4_lut (.A(n37[1]), .B(n37[0]), .C(reset_clk_counter[2]), 
         .D(reset_clk_counter[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1382_3_lut_4_lut.init = 16'h7f80;
    FD1S3AX state_FSM_i12 (.D(n251[10]), .CK(clk_fast), .Q(n251[11]));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i12.GSR = "ENABLED";
    FD1S3AX state_FSM_i11 (.D(n251[9]), .CK(clk_fast), .Q(n251[10]));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i11.GSR = "ENABLED";
    FD1S3AX state_FSM_i10 (.D(n251[8]), .CK(clk_fast), .Q(n251[9]));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i10.GSR = "ENABLED";
    LUT4 i1375_2_lut_3_lut (.A(n37[1]), .B(n37[0]), .C(reset_clk_counter[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1375_2_lut_3_lut.init = 16'h7878;
    FD1S3IX state_FSM_i9 (.D(n836), .CK(clk_fast), .CD(sid_clk_c), .Q(n251[8]));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i9.GSR = "ENABLED";
    LUT4 i1366_1_lut (.A(n37[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1366_1_lut.init = 16'h5555;
    FD1P3IX state_FSM_i8 (.D(n1906), .SP(n251[6]), .CD(n1858), .CK(clk_fast), 
            .Q(n251[7]));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i8.GSR = "ENABLED";
    FD1S3AX state_FSM_i7 (.D(n835), .CK(clk_fast), .Q(n251[6]));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i7.GSR = "ENABLED";
    FD1P3AX spi_data_out_buf__i0 (.D(sid_data_out_0), .SP(clk_fast_enable_44), 
            .CK(clk_fast), .Q(spi_data_out[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam spi_data_out_buf__i0.GSR = "ENABLED";
    FD1S3AX state_FSM_i6 (.D(n977), .CK(clk_fast), .Q(n262));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3AX state_FSM_i5 (.D(n831), .CK(clk_fast), .Q(n263));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n251[13]), .CK(clk_fast), .Q(n251[3]));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1P3AX sid_rw_buf_104 (.D(n438[1]), .SP(clk_fast_enable_31), .CK(clk_fast), 
            .Q(sid_rw_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_rw_buf_104.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n1699), .CK(clk_fast), .Q(n251[2]));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i3.GSR = "ENABLED";
    LUT4 clk_slow_I_0_1_lut_rep_29 (.A(sid_clk_c), .Z(n1858)) /* synthesis lut_function=(!(A)) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(285[21:38])
    defparam clk_slow_I_0_1_lut_rep_29.init = 16'h5555;
    LUT4 i568_4_lut_4_lut (.A(sid_clk_c), .B(n4_adj_209), .C(n251[3]), 
         .D(n263), .Z(n831)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B (D))) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(285[21:38])
    defparam i568_4_lut_4_lut.init = 16'hd5c0;
    FD1S3AX state_FSM_i2 (.D(n931), .CK(clk_fast), .Q(n251[1]));   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam state_FSM_i2.GSR = "ENABLED";
    LUT4 i2_3_lut_3_lut (.A(sid_clk_c), .B(n251[7]), .C(sid_rw_c), .Z(clk_fast_enable_44)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(285[21:38])
    defparam i2_3_lut_3_lut.init = 16'h4040;
    FD1S3AY sid_cs_n_buf_105 (.D(n607), .CK(clk_fast), .Q(sid_cs_n_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_cs_n_buf_105.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(sid_clk_c), .B(n251[0]), .C(n251[2]), 
         .D(n251[1]), .Z(n931)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(285[21:38])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hdddc;
    FD1P3IX sid_addr_buf__i5 (.D(\spi_cmd_buf[12] ), .SP(clk_fast_enable_37), 
            .CD(n594), .CK(clk_fast), .Q(sid_addr_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_addr_buf__i5.GSR = "ENABLED";
    FD1P3IX sid_addr_buf__i4 (.D(\spi_cmd_buf[11] ), .SP(clk_fast_enable_37), 
            .CD(n594), .CK(clk_fast), .Q(n724)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_addr_buf__i4.GSR = "ENABLED";
    FD1P3IX sid_addr_buf__i3 (.D(\spi_cmd_buf[10] ), .SP(clk_fast_enable_37), 
            .CD(n594), .CK(clk_fast), .Q(n725)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_addr_buf__i3.GSR = "ENABLED";
    LUT4 i71_4_lut_4_lut (.A(sid_clk_c), .B(next_state_3__N_192[2]), .C(n251[6]), 
         .D(clk_fast_enable_31), .Z(n835)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(285[21:38])
    defparam i71_4_lut_4_lut.init = 16'hdc50;
    FD1P3IX sid_addr_buf__i2 (.D(\spi_cmd_buf[9] ), .SP(clk_fast_enable_37), 
            .CD(n594), .CK(clk_fast), .Q(n726)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam sid_addr_buf__i2.GSR = "ENABLED";
    FD1P3AX spi_data_out_buf__i1 (.D(sid_data_out_1), .SP(clk_fast_enable_44), 
            .CK(clk_fast), .Q(spi_data_out[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam spi_data_out_buf__i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(sid_rw_c), .B(sid_cs_n_c), .Z(n717)) /* synthesis lut_function=(A+(B)) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam i1_2_lut.init = 16'heeee;
    FD1P3AX spi_data_out_buf__i2 (.D(sid_data_out_2), .SP(clk_fast_enable_44), 
            .CK(clk_fast), .Q(spi_data_out[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam spi_data_out_buf__i2.GSR = "ENABLED";
    FD1P3AX spi_data_out_buf__i3 (.D(sid_data_out_3), .SP(clk_fast_enable_44), 
            .CK(clk_fast), .Q(spi_data_out[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam spi_data_out_buf__i3.GSR = "ENABLED";
    FD1P3AX spi_data_out_buf__i4 (.D(sid_data_out_4), .SP(clk_fast_enable_44), 
            .CK(clk_fast), .Q(spi_data_out[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam spi_data_out_buf__i4.GSR = "ENABLED";
    FD1P3AX spi_data_out_buf__i5 (.D(sid_data_out_5), .SP(clk_fast_enable_44), 
            .CK(clk_fast), .Q(spi_data_out[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam spi_data_out_buf__i5.GSR = "ENABLED";
    FD1P3AX spi_data_out_buf__i6 (.D(sid_data_out_6), .SP(clk_fast_enable_44), 
            .CK(clk_fast), .Q(spi_data_out[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam spi_data_out_buf__i6.GSR = "ENABLED";
    FD1P3AX spi_data_out_buf__i7 (.D(sid_data_out_7), .SP(clk_fast_enable_44), 
            .CK(clk_fast), .Q(spi_data_out[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=16, LSE_LLINE=119, LSE_RLINE=119 */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(156[9] 184[16])
    defparam spi_data_out_buf__i7.GSR = "ENABLED";
    LUT4 i261_2_lut_rep_32 (.A(n251[3]), .B(next_sid_cmd_ack_buf_N_208), 
         .Z(n1861)) /* synthesis lut_function=(A (B)) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam i261_2_lut_rep_32.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(n251[3]), .B(next_sid_cmd_ack_buf_N_208), .C(\spi_cmd_buf[14] ), 
         .D(\spi_cmd_buf[15] ), .Z(n1741)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam i2_3_lut_4_lut.init = 16'h0008;
    LUT4 i1296_3_lut_rep_33 (.A(n251[0]), .B(next_sid_cmd_ack_buf_N_208), 
         .C(n251[3]), .Z(clk_fast_enable_37)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam i1296_3_lut_rep_33.init = 16'hcaca;
    LUT4 i362_2_lut_3_lut_2_lut (.A(n251[0]), .B(n251[3]), .Z(n594)) /* synthesis lut_function=(!((B)+!A)) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam i362_2_lut_3_lut_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_35 (.A(reset_clk_counter[2]), .B(reset_clk_counter[3]), 
         .Z(n1864)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_35.init = 16'heeee;
    LUT4 i900_1_lut (.A(\spi_cmd_buf[15] ), .Z(n438[1])) /* synthesis lut_function=(!(A)) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(246[21] 265[30])
    defparam i900_1_lut.init = 16'h5555;
    LUT4 i68_2_lut_3_lut (.A(reset_clk_counter[2]), .B(reset_clk_counter[3]), 
         .C(n251[1]), .Z(n50)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i68_2_lut_3_lut.init = 16'he0e0;
    FD1P3IX reset_clk_counter_344__i3 (.D(n21[3]), .SP(clk_fast_enable_50), 
            .CD(n1865), .CK(clk_fast), .Q(reset_clk_counter[3]));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam reset_clk_counter_344__i3.GSR = "ENABLED";
    FD1P3IX reset_clk_counter_344__i2 (.D(n21[2]), .SP(clk_fast_enable_50), 
            .CD(n1865), .CK(clk_fast), .Q(reset_clk_counter[2]));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam reset_clk_counter_344__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_36 (.A(n251[0]), .B(n251[1]), .Z(n1865)) /* synthesis lut_function=(!((B)+!A)) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam i1_2_lut_rep_36.init = 16'h2222;
    LUT4 i1_2_lut_adj_4 (.A(n251[7]), .B(n262), .Z(n836)) /* synthesis lut_function=(A+(B)) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam i1_2_lut_adj_4.init = 16'heeee;
    FD1P3IX reset_clk_counter_344__i1 (.D(n21[1]), .SP(clk_fast_enable_50), 
            .CD(n1865), .CK(clk_fast), .Q(n37[1]));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam reset_clk_counter_344__i1.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut_adj_5 (.A(n251[0]), .B(n251[1]), .C(sid_clk_c), 
         .D(n1864), .Z(clk_fast_enable_50)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (((D)+!C)+!B))) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam i1_3_lut_4_lut_4_lut_adj_5.init = 16'h22e2;
    LUT4 i1179_2_lut_3_lut (.A(\spi_cmd_buf[14] ), .B(\spi_cmd_buf[15] ), 
         .C(next_sid_cmd_ack_buf_N_208), .Z(next_sid_busy_N_203)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(246[21] 265[30])
    defparam i1179_2_lut_3_lut.init = 16'h6060;
    LUT4 i1_4_lut (.A(n251[0]), .B(n251[7]), .C(sid_cs_n_c), .D(n251[3]), 
         .Z(n607)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam i1_4_lut.init = 16'h3332;
    LUT4 i1186_2_lut (.A(\spi_cmd_buf[14] ), .B(\spi_cmd_buf[15] ), .Z(next_state_3__N_192[2])) /* synthesis lut_function=(A+(B)) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(246[21] 265[30])
    defparam i1186_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_6 (.A(\spi_cmd_buf[14] ), .B(\spi_cmd_buf[15] ), 
         .C(next_sid_cmd_ack_buf_N_208), .D(n251[3]), .Z(clk_fast_enable_31)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(246[21] 265[30])
    defparam i1_2_lut_3_lut_4_lut_adj_6.init = 16'h6000;
    LUT4 i1368_2_lut (.A(n37[1]), .B(n37[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1368_2_lut.init = 16'h6666;
    LUT4 i1_3_lut (.A(next_sid_cmd_ack_buf_N_208), .B(\spi_cmd_buf[14] ), 
         .C(\spi_cmd_buf[15] ), .Z(n4_adj_209)) /* synthesis lut_function=((B (C))+!A) */ ;   // j:/alfheimsystems/projects/lattice/sid/sid.vhd(205[9] 314[18])
    defparam i1_3_lut.init = 16'hd5d5;
    
endmodule
//
// Verilog Description of module pll
//

module pll (osc_clk, clk_fast, sid_clk_c, GND_net, n262, n50, n263, 
            n977) /* synthesis NGD_DRC_MASK=1 */ ;
    input osc_clk;
    output clk_fast;
    output sid_clk_c;
    input GND_net;
    input n262;
    input n50;
    input n263;
    output n977;
    
    wire osc_clk /* synthesis is_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(106[9:16])
    wire clk_fast /* synthesis SET_AS_NETWORK=clk_fast, is_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(107[9:17])
    wire sid_clk_c /* synthesis is_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(108[9:17])
    
    EHXPLLJ PLLInst_0 (.CLKI(osc_clk), .CLKFB(clk_fast), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(clk_fast), .CLKOS(sid_clk_c)) /* synthesis FREQUENCY_PIN_CLKOS="0.985248", FREQUENCY_PIN_CLKOP="106.406832", FREQUENCY_PIN_CLKI="17.734472", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=13, LSE_LLINE=129, LSE_RLINE=129 */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(129[10:13])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 6;
    defparam PLLInst_0.CLKOP_DIV = 5;
    defparam PLLInst_0.CLKOS_DIV = 108;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 4;
    defparam PLLInst_0.CLKOS_CPHASE = 107;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 1;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    LUT4 i1_4_lut (.A(sid_clk_c), .B(n262), .C(n50), .D(n263), .Z(n977)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/top_level.vhd(129[10:13])
    defparam i1_4_lut.init = 16'haaa8;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

