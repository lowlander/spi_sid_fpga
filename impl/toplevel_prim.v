// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Sat Sep 19 15:43:43 2020
//
// Verilog Description of module toplevel
//

module toplevel (rst_n, led, sid_pal_clk, sid_ntsc_clk, spi_cs_n, 
            spi_miso, spi_mosi, spi_sck, spi_busy, sid_irq, sid_address, 
            sid_data, sid_cs_n, sid_rw, sid_clk, sid_rst_n);   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(9[8:16])
    input rst_n;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(12[2:7])
    output [7:0]led;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(13[2:5])
    input sid_pal_clk;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(15[2:13])
    input sid_ntsc_clk;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(16[2:14])
    input spi_cs_n;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(18[2:10])
    output spi_miso;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(19[2:10])
    input spi_mosi;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(20[2:10])
    input spi_sck;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(21[2:9])
    output spi_busy;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(22[2:10])
    output sid_irq;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(24[2:9])
    output [4:0]sid_address;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(25[2:13])
    input [7:0]sid_data;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(26[2:10])
    output sid_cs_n;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(27[2:10])
    output sid_rw;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(28[2:8])
    output sid_clk;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(29[2:9])
    output sid_rst_n;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(30[2:11])
    
    wire led_c_1 /* synthesis is_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(13[2:5])
    wire spi_sck_c /* synthesis is_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(21[2:9])
    wire spi_sck_N_22 /* synthesis is_inv_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(13[2:5])
    
    wire GND_net, VCC_net, rst_n_c, led_c_7, led_c_6, led_c_5, led_c_4, 
        led_c_3, led_c_2, led_c_0, spi_cs_n_c, spi_mosi_c, spi_sck_c_enable_8;
    wire [7:0]spi_data_in;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(92[9:20])
    wire [5:0]spi_addr_in;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(93[9:20])
    
    wire spi_sck_c_enable_13, led_1__N_20, spi_sck_c_enable_4, rst_n_N_9, 
        led_7__N_7, spi_sck_c_enable_7, spi_miso_N_27, n304, n303, 
        n302, n301, n300, n299, n298, n297, n296, n295, n294, 
        n293, spi_sck_c_enable_5, n307, n1099, n1170, spi_sck_c_enable_3, 
        spi_sck_c_enable_6, spi_sck_c_enable_9, spi_sck_c_enable_14, spi_sck_c_enable_2, 
        n1172, n1171, spi_sck_c_enable_10, spi_sck_c_enable_11, spi_sck_c_enable_1, 
        n1094, n1095, spi_sck_c_enable_12, spi_sck_c_enable_15, spi_sck_c_enable_16, 
        n1169;
    
    VHI i2 (.Z(VCC_net));
    INV i683 (.A(spi_sck_c), .Z(spi_sck_N_22));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(21[2:9])
    OBZ spi_miso_pad (.I(GND_net), .T(spi_miso_N_27), .O(spi_miso));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(324[3:11])
    FD1S3AX spi_cmd_fifo_wr_clk_36 (.D(led_1__N_20), .CK(spi_sck_N_22), 
            .Q(led_c_1));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(193[3] 256[10])
    defparam spi_cmd_fifo_wr_clk_36.GSR = "ENABLED";
    FD1P3AX spi_data_in_i0_i6 (.D(spi_mosi_c), .SP(spi_sck_c_enable_1), 
            .CK(spi_sck_c), .Q(spi_data_in[5]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_data_in_i0_i6.GSR = "ENABLED";
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(13[2:5])
    FD1P3AX spi_data_in_i0_i1 (.D(spi_mosi_c), .SP(spi_sck_c_enable_2), 
            .CK(spi_sck_c), .Q(led_c_4));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_data_in_i0_i1.GSR = "ENABLED";
    FD1S3AY spi_bit_counter_FSM_i0 (.D(led_1__N_20), .CK(spi_sck_N_22), 
            .Q(n307));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i0.GSR = "ENABLED";
    FD1S3AX spi_bit_counter_FSM_i7 (.D(n301), .CK(spi_sck_N_22), .Q(n300));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i7.GSR = "ENABLED";
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(13[2:5])
    LUT4 i1_2_lut_3_lut (.A(spi_sck_c_enable_13), .B(n300), .C(n301), 
         .Z(spi_sck_c_enable_11)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    FD1S3AX spi_bit_counter_FSM_i5 (.D(n303), .CK(spi_sck_N_22), .Q(n302));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i5.GSR = "ENABLED";
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(13[2:5])
    FD1P3AX spi_data_in_i0_i4 (.D(spi_mosi_c), .SP(spi_sck_c_enable_3), 
            .CK(spi_sck_c), .Q(spi_data_in[3]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_data_in_i0_i4.GSR = "ENABLED";
    FD1P3AX spi_cmd_in_i2 (.D(spi_mosi_c), .SP(spi_sck_c_enable_4), .CK(spi_sck_c), 
            .Q(led_c_3));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_cmd_in_i2.GSR = "ENABLED";
    FD1P3AX spi_cmd_in_i1 (.D(spi_mosi_c), .SP(spi_sck_c_enable_5), .CK(spi_sck_c), 
            .Q(led_c_2));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_cmd_in_i1.GSR = "ENABLED";
    FD1P3AX spi_addr_in__i1 (.D(spi_mosi_c), .SP(spi_sck_c_enable_6), .CK(spi_sck_c), 
            .Q(led_c_6));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_addr_in__i1.GSR = "ENABLED";
    IB spi_sck_pad (.I(spi_sck), .O(spi_sck_c));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(21[2:9])
    IB spi_mosi_pad (.I(spi_mosi), .O(spi_mosi_c));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(20[2:10])
    IB spi_cs_n_pad (.I(spi_cs_n), .O(spi_cs_n_c));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(18[2:10])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(12[2:7])
    OB sid_rst_n_pad (.I(GND_net), .O(sid_rst_n));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(30[2:11])
    OB sid_clk_pad (.I(GND_net), .O(sid_clk));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(29[2:9])
    OB sid_rw_pad (.I(GND_net), .O(sid_rw));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(28[2:8])
    OB sid_cs_n_pad (.I(GND_net), .O(sid_cs_n));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(27[2:10])
    OB sid_address_pad_0 (.I(GND_net), .O(sid_address[0]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(25[2:13])
    OB sid_address_pad_1 (.I(GND_net), .O(sid_address[1]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(25[2:13])
    OB sid_address_pad_2 (.I(GND_net), .O(sid_address[2]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(25[2:13])
    OB sid_address_pad_3 (.I(GND_net), .O(sid_address[3]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(25[2:13])
    OB sid_address_pad_4 (.I(GND_net), .O(sid_address[4]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(25[2:13])
    OB sid_irq_pad (.I(GND_net), .O(sid_irq));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(24[2:9])
    OB spi_busy_pad (.I(GND_net), .O(spi_busy));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(22[2:10])
    FD1S3AX spi_bit_counter_FSM_i10 (.D(n298), .CK(spi_sck_N_22), .Q(n297));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i10.GSR = "ENABLED";
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(13[2:5])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(13[2:5])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(13[2:5])
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(13[2:5])
    LUT4 i553_3_lut_rep_5_4_lut (.A(n299), .B(n1171), .C(n1099), .D(n294), 
         .Z(n1169)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam i553_3_lut_rep_5_4_lut.init = 16'hfffe;
    FD1S3AX spi_bit_counter_FSM_i4 (.D(n304), .CK(spi_sck_N_22), .Q(n303));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i4.GSR = "ENABLED";
    FD1S3AX spi_bit_counter_FSM_i9 (.D(n299), .CK(spi_sck_N_22), .Q(n298));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i9.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(spi_sck_c_enable_13), .B(n300), .C(n1172), 
         .D(n303), .Z(spi_sck_c_enable_12)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    LUT4 i665_3_lut_4_lut (.A(n295), .B(n296), .C(n297), .D(n1169), 
         .Z(spi_sck_c_enable_16)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i665_3_lut_4_lut.init = 16'h0001;
    LUT4 i2_3_lut_4_lut_adj_1 (.A(n295), .B(n296), .C(n297), .D(n1169), 
         .Z(spi_sck_c_enable_1)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i2_3_lut_4_lut_adj_1.init = 16'h0010;
    FD1S3AX spi_bit_counter_FSM_i3 (.D(spi_sck_c_enable_13), .CK(spi_sck_N_22), 
            .Q(n304));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i3.GSR = "ENABLED";
    LUT4 i168_2_lut_rep_8 (.A(n301), .B(n302), .Z(n1172)) /* synthesis lut_function=(A+(B)) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i168_2_lut_rep_8.init = 16'heeee;
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(13[2:5])
    LUT4 i662_3_lut_4_lut (.A(n301), .B(n302), .C(n304), .D(n1094), 
         .Z(spi_sck_c_enable_7)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i662_3_lut_4_lut.init = 16'h0010;
    FD1P3AX spi_addr_in__i5 (.D(spi_mosi_c), .SP(spi_sck_c_enable_7), .CK(spi_sck_c), 
            .Q(spi_addr_in[4]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_addr_in__i5.GSR = "ENABLED";
    FD1S3AX spi_bit_counter_FSM_i2 (.D(spi_sck_c_enable_5), .CK(spi_sck_N_22), 
            .Q(spi_sck_c_enable_13));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i2.GSR = "ENABLED";
    FD1S3AX spi_bit_counter_FSM_i1 (.D(n307), .CK(spi_sck_N_22), .Q(spi_sck_c_enable_5));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i1.GSR = "ENABLED";
    FD1P3AX spi_data_in_i0_i8 (.D(spi_mosi_c), .SP(spi_sck_c_enable_8), 
            .CK(spi_sck_c), .Q(led_c_5));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_data_in_i0_i8.GSR = "ENABLED";
    FD1S3AX spi_bit_counter_FSM_i6 (.D(n302), .CK(spi_sck_N_22), .Q(n301));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i6.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_2 (.A(n299), .B(n1171), .C(led_1__N_20), .Z(spi_sck_c_enable_2)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam i1_2_lut_3_lut_adj_2.init = 16'h1010;
    FD1P3AX spi_data_in_i0_i2 (.D(spi_mosi_c), .SP(spi_sck_c_enable_9), 
            .CK(spi_sck_c), .Q(spi_data_in[1]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_data_in_i0_i2.GSR = "ENABLED";
    LUT4 i293_2_lut (.A(n307), .B(spi_sck_c_enable_5), .Z(spi_sck_c_enable_4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i293_2_lut.init = 16'h2222;
    FD1S3AX spi_bit_counter_FSM_i8 (.D(n300), .CK(spi_sck_N_22), .Q(n299));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i8.GSR = "ENABLED";
    FD1S3AX spi_bit_counter_FSM_i11 (.D(n297), .CK(spi_sck_N_22), .Q(n296));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i11.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_3 (.A(n299), .B(n1171), .C(n293), .D(led_1__N_20), 
         .Z(spi_sck_c_enable_9)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam i2_3_lut_4_lut_adj_3.init = 16'h0010;
    FD1P3AX spi_addr_in__i3 (.D(spi_mosi_c), .SP(spi_sck_c_enable_10), .CK(spi_sck_c), 
            .Q(spi_addr_in[2]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_addr_in__i3.GSR = "ENABLED";
    FD1S3AX spi_bit_counter_FSM_i12 (.D(n296), .CK(spi_sck_N_22), .Q(n295));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i12.GSR = "ENABLED";
    FD1S3AX spi_bit_counter_FSM_i13 (.D(n295), .CK(spi_sck_N_22), .Q(n294));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i13.GSR = "ENABLED";
    FD1S3AX spi_bit_counter_FSM_i14 (.D(n294), .CK(spi_sck_N_22), .Q(n293));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i14.GSR = "ENABLED";
    FD1S3AX spi_bit_counter_FSM_i15 (.D(n293), .CK(spi_sck_N_22), .Q(led_1__N_20));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam spi_bit_counter_FSM_i15.GSR = "ENABLED";
    FD1P3AX spi_addr_in__i2 (.D(spi_mosi_c), .SP(spi_sck_c_enable_11), .CK(spi_sck_c), 
            .Q(spi_addr_in[1]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_addr_in__i2.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n300), .B(spi_sck_c_enable_13), .Z(spi_sck_c_enable_6)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    FD1P3AX spi_addr_in__i4 (.D(spi_mosi_c), .SP(spi_sck_c_enable_12), .CK(spi_sck_c), 
            .Q(spi_addr_in[3]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_addr_in__i4.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n294), .B(n1170), .C(n1099), .D(n295), .Z(spi_sck_c_enable_3)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0100;
    FD1P3AX spi_addr_in__i6 (.D(spi_mosi_c), .SP(spi_sck_c_enable_13), .CK(spi_sck_c), 
            .Q(led_c_7));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_addr_in__i6.GSR = "ENABLED";
    LUT4 i655_3_lut_4_lut (.A(n299), .B(n1171), .C(n294), .D(n1099), 
         .Z(spi_sck_c_enable_14)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam i655_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_rep_7 (.A(n307), .B(n1095), .C(spi_sck_c_enable_5), 
         .Z(n1171)) /* synthesis lut_function=(A+(B+(C))) */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(270[4] 320[13])
    defparam i2_3_lut_rep_7.init = 16'hfefe;
    LUT4 i2_4_lut (.A(n300), .B(n302), .C(n301), .D(spi_sck_c_enable_13), 
         .Z(spi_sck_c_enable_10)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0004;
    GSR GSR_INST (.GSR(led_7__N_7));
    LUT4 i2_3_lut (.A(spi_sck_c_enable_13), .B(n303), .C(n300), .Z(n1094)) /* synthesis lut_function=(A+(B+(C))) */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam i2_3_lut.init = 16'hfefe;
    FD1P3AX spi_data_in_i0_i3 (.D(spi_mosi_c), .SP(spi_sck_c_enable_14), 
            .CK(spi_sck_c), .Q(spi_data_in[2]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_data_in_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_4 (.A(led_1__N_20), .B(n293), .Z(n1099)) /* synthesis lut_function=(A+(B)) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1_2_lut_adj_4.init = 16'heeee;
    LUT4 i3_4_lut (.A(n304), .B(n301), .C(n302), .D(n1094), .Z(n1095)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(270[4] 320[13])
    defparam i3_4_lut.init = 16'hfffe;
    FD1P3AX spi_data_in_i0_i5 (.D(spi_mosi_c), .SP(spi_sck_c_enable_15), 
            .CK(spi_sck_c), .Q(spi_data_in[4]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_data_in_i0_i5.GSR = "ENABLED";
    LUT4 i659_2_lut (.A(rst_n_c), .B(spi_cs_n_c), .Z(led_7__N_7)) /* synthesis lut_function=(!((B)+!A)) */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[7:36])
    defparam i659_2_lut.init = 16'h2222;
    VLO i1 (.Z(GND_net));
    LUT4 i280_2_lut_4_lut (.A(n307), .B(n1095), .C(spi_sck_c_enable_5), 
         .D(n299), .Z(spi_sck_c_enable_8)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(270[4] 320[13])
    defparam i280_2_lut_4_lut.init = 16'h0100;
    LUT4 i652_3_lut (.A(n1169), .B(n295), .C(n296), .Z(spi_sck_c_enable_15)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam i652_3_lut.init = 16'h1010;
    LUT4 i657_2_lut (.A(rst_n_c), .B(spi_cs_n_c), .Z(spi_miso_N_27)) /* synthesis lut_function=((B)+!A) */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(324[3:11])
    defparam i657_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_6_4_lut (.A(n307), .B(n1095), .C(spi_sck_c_enable_5), 
         .D(n299), .Z(n1170)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(270[4] 320[13])
    defparam i1_2_lut_rep_6_4_lut.init = 16'hfffe;
    FD1P3AX spi_data_in_i0_i7 (.D(spi_mosi_c), .SP(spi_sck_c_enable_16), 
            .CK(spi_sck_c), .Q(spi_data_in[6]));   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[3] 322[10])
    defparam spi_data_in_i0_i7.GSR = "ENABLED";
    LUT4 rst_n_I_0_45_1_lut (.A(rst_n_c), .Z(rst_n_N_9)) /* synthesis lut_function=(!(A)) */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(262[7:18])
    defparam rst_n_I_0_45_1_lut.init = 16'h5555;
    TSALL TSALL_INST (.TSALL(GND_net));
    fifo sid_cmd_fifo (.GND_net(GND_net), .led_c_3(led_c_3), .led_c_2(led_c_2), 
         .led_c_7(led_c_7), .\spi_addr_in[4] (spi_addr_in[4]), .\spi_addr_in[3] (spi_addr_in[3]), 
         .\spi_addr_in[2] (spi_addr_in[2]), .\spi_addr_in[1] (spi_addr_in[1]), 
         .led_c_6(led_c_6), .led_c_5(led_c_5), .\spi_data_in[6] (spi_data_in[6]), 
         .\spi_data_in[5] (spi_data_in[5]), .\spi_data_in[4] (spi_data_in[4]), 
         .\spi_data_in[3] (spi_data_in[3]), .\spi_data_in[2] (spi_data_in[2]), 
         .\spi_data_in[1] (spi_data_in[1]), .led_c_4(led_c_4), .led_c_1(led_c_1), 
         .VCC_net(VCC_net), .rst_n_N_9(rst_n_N_9), .led_c_0(led_c_0)) /* synthesis NGD_DRC_MASK=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(146[17:21])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module fifo
//

module fifo (GND_net, led_c_3, led_c_2, led_c_7, \spi_addr_in[4] , 
            \spi_addr_in[3] , \spi_addr_in[2] , \spi_addr_in[1] , led_c_6, 
            led_c_5, \spi_data_in[6] , \spi_data_in[5] , \spi_data_in[4] , 
            \spi_data_in[3] , \spi_data_in[2] , \spi_data_in[1] , led_c_4, 
            led_c_1, VCC_net, rst_n_N_9, led_c_0) /* synthesis NGD_DRC_MASK=1 */ ;
    input GND_net;
    input led_c_3;
    input led_c_2;
    input led_c_7;
    input \spi_addr_in[4] ;
    input \spi_addr_in[3] ;
    input \spi_addr_in[2] ;
    input \spi_addr_in[1] ;
    input led_c_6;
    input led_c_5;
    input \spi_data_in[6] ;
    input \spi_data_in[5] ;
    input \spi_data_in[4] ;
    input \spi_data_in[3] ;
    input \spi_data_in[2] ;
    input \spi_data_in[1] ;
    input led_c_4;
    input led_c_1;
    input VCC_net;
    input rst_n_N_9;
    output led_c_0;
    
    wire led_c_1 /* synthesis is_clock=1 */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(13[2:5])
    
    wire Empty, Full;
    
    FIFO8KB fifo_0_0 (.DI0(led_c_4), .DI1(\spi_data_in[1] ), .DI2(\spi_data_in[2] ), 
            .DI3(\spi_data_in[3] ), .DI4(\spi_data_in[4] ), .DI5(\spi_data_in[5] ), 
            .DI6(\spi_data_in[6] ), .DI7(led_c_5), .DI8(led_c_6), .DI9(\spi_addr_in[1] ), 
            .DI10(\spi_addr_in[2] ), .DI11(\spi_addr_in[3] ), .DI12(\spi_addr_in[4] ), 
            .DI13(led_c_7), .DI14(led_c_2), .DI15(led_c_3), .DI16(GND_net), 
            .DI17(GND_net), .FULLI(Full), .EMPTYI(Empty), .CSW1(VCC_net), 
            .CSW0(VCC_net), .CSR1(VCC_net), .CSR0(VCC_net), .WE(VCC_net), 
            .RE(VCC_net), .ORE(VCC_net), .CLKW(led_c_1), .CLKR(GND_net), 
            .RST(rst_n_N_9), .RPRST(GND_net), .DO9(led_c_0), .EF(Empty), 
            .FF(Full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=21, LSE_LLINE=146, LSE_RLINE=146 */ ;   // j:/alfheimsystems/projects/lattice/sid/toplevel.vhd(146[17:21])
    defparam fifo_0_0.DATA_WIDTH_W = 18;
    defparam fifo_0_0.DATA_WIDTH_R = 18;
    defparam fifo_0_0.REGMODE = "OUTREG";
    defparam fifo_0_0.RESETMODE = "ASYNC";
    defparam fifo_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam fifo_0_0.CSDECODE_W = "0b11";
    defparam fifo_0_0.CSDECODE_R = "0b11";
    defparam fifo_0_0.AEPOINTER = "0b00000010100000";
    defparam fifo_0_0.AEPOINTER1 = "0b00000010110000";
    defparam fifo_0_0.AFPOINTER = "0b01111111000000";
    defparam fifo_0_0.AFPOINTER1 = "0b01111110110000";
    defparam fifo_0_0.FULLPOINTER = "0b10000000000000";
    defparam fifo_0_0.FULLPOINTER1 = "0b01111111110000";
    defparam fifo_0_0.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

