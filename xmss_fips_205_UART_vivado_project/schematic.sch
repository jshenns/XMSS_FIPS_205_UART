# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 30
property maxzoom 12.5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 30
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new top work:top:NOFILE -nosplit
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol FDRE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin R input.left fillcolor 1
load symbol FDSE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin S input.left fillcolor 1
load symbol accelerator_ethernet_axi_wrapper work:accelerator_ethernet_axi_wrapper:NOFILE HIERBOX pin clk_out1 input.left pin p_2_in input.left pin packet_count_reg[0]_rep__2_0 input.left pin rst output.right pin rx_ready1 input.left pin rx_ready128_out input.left pin rx_ready_reg_0 output.right pin rxd_reg_0 input.left pin state_reg[0]_rep__11_0 input.left pin state_reg[0]_rep__7_0 output.right pin state_reg[1]_rep_0 input.left pin state_reg[2]_rep_0 input.left pin sw0_IBUF input.left pin uart_rx_en output.right pin uart_rx_valid input.left pin uart_rxd_IBUF input.left pin uart_tx_busy input.left pin uart_tx_en output.right pin wr_en_global_reg_0 input.left pinBus A input.left [11:0] pinBus CO output.right [0:0] pinBus D output.right [6:0] pinBus Q input.left [7:0] pinBus data_to_send input.left [6:0] pinBus data_to_send_reg[6] input.left [0:0] pinBus level_i0 input.left [0:0] pinBus packet_count_reg[31]_0 output.right [0:0] pinBus packet_count_reg[31]_1 output.right [0:0] pinBus packet_count_reg[31]_2 output.right [0:0] pinBus t_i_reg[12] output.right [12:0] pinBus tx_data_reg[7]_0 output.right [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol clk_wiz_0 work_library0_1:clk_wiz_0:clk_wiz_0.edf HIERBOX pin clk_in1 input.left pin clk_out1 output.right pin locked output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol uart_rx work:uart_rx:NOFILE HIERBOX pin CLK input.left pin FSM_sequential_fsm_state_reg[1]_0 output.right pin p_2_in output.right pin rx_ready1 output.right pin rx_ready128_out output.right pin rxd_reg_0 output.right pin rxd_reg_0_reg_0 input.left pin sw0_IBUF input.left pin uart_rx_data_reg[0]_0 output.right pin uart_rx_data_reg[0]_1 output.right pin uart_rx_data_reg[2]_0 output.right pin uart_rx_en input.left pin uart_rx_valid output.right pinBus CO input.left [0:0] pinBus Q output.right [7:0] pinBus SR input.left [0:0] pinBus rx_ready_i_6 input.left [0:0] pinBus wr_en_global_i_2 input.left [0:0] pinBus wr_en_global_i_2_0 input.left [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol uart_tx work:uart_tx:NOFILE HIERBOX pin CLK input.left pin packet_count_reg[0]_rep__2 input.left pin state_reg[0]_rep__7 output.right pin sw0_IBUF input.left pin uart_tx_en input.left pin uart_txd_OBUF output.right pinBus D input.left [6:0] pinBus E output.right [0:0] pinBus Q output.right [0:0] pinBus SR input.left [0:0] pinBus data_to_send output.right [6:0] pinBus data_to_send_reg[7]_0 input.left [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol CARRY4 hdi_primitives BOX pin CI input.left pin CYINIT input.left pinBus CO output.right [3:0] pinBus O output.right [3:0] pinBus DI input.left [3:0] pinBus S input.left [3:0] fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load port CLK100MHZ input -pg 1 -lvl 0 -x 0 -y 640
load port led0_g output -pg 1 -lvl 7 -x 2420 -y 820
load port led0_r output -pg 1 -lvl 7 -x 2420 -y 670
load port sw0 input -pg 1 -lvl 0 -x 0 -y 710
load port uart_rxd input -pg 1 -lvl 0 -x 0 -y 1020
load port uart_txd output -pg 1 -lvl 7 -x 2420 -y 920
load inst led0_g_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 2260 -y 820
load inst led0_g_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 2140 -y 820
load inst led0_r_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 2260 -y 670
load inst led0_r_reg FDSE hdi_primitives -attr @cell(#000000) FDSE -pg 1 -lvl 5 -x 2140 -y 670
load inst my_accelerator accelerator_ethernet_axi_wrapper work:accelerator_ethernet_axi_wrapper:NOFILE -autohide -attr @cell(#000000) accelerator_ethernet_axi_wrapper -pinBusAttr A @name A[11:0] -pinBusAttr CO @name CO -pinBusAttr D @name D[6:0] -pinBusAttr Q @name Q[7:0] -pinBusAttr data_to_send @name data_to_send[6:0] -pinBusAttr data_to_send_reg[6] @name data_to_send_reg[6] -pinBusAttr level_i0 @name level_i0 -pinBusAttr packet_count_reg[31]_0 @name packet_count_reg[31]_0 -pinBusAttr packet_count_reg[31]_1 @name packet_count_reg[31]_1 -pinBusAttr packet_count_reg[31]_2 @name packet_count_reg[31]_2 -pinBusAttr t_i_reg[12] @name t_i_reg[12][12:0] -pinBusAttr tx_data_reg[7]_0 @name tx_data_reg[7]_0 -pg 1 -lvl 4 -x 1660 -y 350
load inst my_clk_wiz clk_wiz_0 work_library0_1:clk_wiz_0:clk_wiz_0.edf -autohide -attr @cell(#000000) clk_wiz_0 -pinAttr locked @attr n/c -pg 1 -lvl 2 -x 370 -y 630
load inst my_uart_rx uart_rx work:uart_rx:NOFILE -autohide -attr @cell(#000000) uart_rx -pinBusAttr CO @name CO -pinBusAttr Q @name Q[7:0] -pinBusAttr SR @name SR -pinBusAttr rx_ready_i_6 @name rx_ready_i_6 -pinBusAttr wr_en_global_i_2 @name wr_en_global_i_2 -pinBusAttr wr_en_global_i_2_0 @name wr_en_global_i_2_0 -pg 1 -lvl 3 -x 870 -y 470
load inst my_uart_tx uart_tx work:uart_tx:NOFILE -autohide -attr @cell(#000000) uart_tx -pinBusAttr D @name D[6:0] -pinBusAttr E @name E -pinBusAttr Q @name Q -pinBusAttr SR @name SR -pinBusAttr data_to_send @name data_to_send[6:0] -pinBusAttr data_to_send_reg[7]_0 @name data_to_send_reg[7]_0 -pg 1 -lvl 3 -x 870 -y 810
load inst my_xmss_node/level_i0_i_19 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 3 -x 870 -y 110
load inst my_xmss_node/level_i0_i_20 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 2 -x 370 -y 110
load inst my_xmss_node/level_i0_i_21 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 1 -x 100 -y 30
load inst sw0_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 370 -y 710
load inst uart_rxd_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 870 -y 1020
load inst uart_txd_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 2260 -y 920
load net <const0> -ground -pin led0_g_reg R -pin led0_r_reg D -pin my_xmss_node/level_i0_i_19 CYINIT -pin my_xmss_node/level_i0_i_19 DI[3] -pin my_xmss_node/level_i0_i_19 DI[2] -pin my_xmss_node/level_i0_i_19 DI[1] -pin my_xmss_node/level_i0_i_19 DI[0] -pin my_xmss_node/level_i0_i_20 CYINIT -pin my_xmss_node/level_i0_i_20 DI[3] -pin my_xmss_node/level_i0_i_20 DI[2] -pin my_xmss_node/level_i0_i_20 DI[1] -pin my_xmss_node/level_i0_i_20 DI[0] -pin my_xmss_node/level_i0_i_21 CI -pin my_xmss_node/level_i0_i_21 DI[3] -pin my_xmss_node/level_i0_i_21 DI[2] -pin my_xmss_node/level_i0_i_21 DI[1] -pin my_xmss_node/level_i0_i_21 DI[0]
load net <const1> -power -pin led0_g_reg CE -pin led0_r_reg CE
load net CLK100MHZ -port CLK100MHZ -pin my_clk_wiz clk_in1
netloc CLK100MHZ 1 0 2 NJ 640 NJ
load net clk_out1 -pin led0_g_reg C -pin led0_r_reg C -pin my_accelerator clk_out1 -pin my_clk_wiz clk_out1 -pin my_uart_rx CLK -pin my_uart_tx CLK
netloc clk_out1 1 2 3 550 380 1230 260 2060
load net data_to_send[1] -attr @rip(#000000) data_to_send[0] -pin my_accelerator data_to_send[0] -pin my_uart_tx data_to_send[0]
load net data_to_send[2] -attr @rip(#000000) data_to_send[1] -pin my_accelerator data_to_send[1] -pin my_uart_tx data_to_send[1]
load net data_to_send[3] -attr @rip(#000000) data_to_send[2] -pin my_accelerator data_to_send[2] -pin my_uart_tx data_to_send[2]
load net data_to_send[4] -attr @rip(#000000) data_to_send[3] -pin my_accelerator data_to_send[3] -pin my_uart_tx data_to_send[3]
load net data_to_send[5] -attr @rip(#000000) data_to_send[4] -pin my_accelerator data_to_send[4] -pin my_uart_tx data_to_send[4]
load net data_to_send[6] -attr @rip(#000000) data_to_send[5] -pin my_accelerator data_to_send[5] -pin my_uart_tx data_to_send[5]
load net data_to_send[7] -attr @rip(#000000) data_to_send[6] -pin my_accelerator data_to_send[6] -pin my_uart_tx data_to_send[6]
load net fsm_state[1] -attr @rip(#000000) Q[0] -pin my_accelerator data_to_send_reg[6][0] -pin my_uart_tx Q[0]
netloc fsm_state[1] 1 3 1 1350 440n
load net led0_g -port led0_g -pin led0_g_OBUF_inst O
netloc led0_g 1 6 1 NJ 820
load net led0_g_OBUF -pin led0_g_OBUF_inst I -pin led0_g_reg Q
netloc led0_g_OBUF 1 5 1 NJ 820
load net led0_r -port led0_r -pin led0_r_OBUF_inst O
netloc led0_r 1 6 1 NJ 670
load net led0_r_OBUF -pin led0_r_OBUF_inst I -pin led0_r_reg Q
netloc led0_r_OBUF 1 5 1 NJ 670
load net my_accelerator_n_16 -pin my_accelerator rx_ready_reg_0 -pin my_uart_rx rxd_reg_0_reg_0
netloc my_accelerator_n_16 1 2 3 670 700 1150J 800 1940
load net my_accelerator_n_3 -pin my_accelerator state_reg[0]_rep__7_0 -pin my_uart_tx packet_count_reg[0]_rep__2
netloc my_accelerator_n_3 1 2 3 670 1080 NJ 1080 2000
load net my_control_system/my_xmss_node/t_i[0] -attr @rip(#000000) t_i_reg[12][0] -pin my_accelerator t_i_reg[12][0] -pin my_xmss_node/level_i0_i_21 CYINIT
load net my_control_system/my_xmss_node/t_i[10] -attr @rip(#000000) t_i_reg[12][10] -pin my_accelerator t_i_reg[12][10] -pin my_xmss_node/level_i0_i_19 S[1]
load net my_control_system/my_xmss_node/t_i[11] -attr @rip(#000000) t_i_reg[12][11] -pin my_accelerator t_i_reg[12][11] -pin my_xmss_node/level_i0_i_19 S[2]
load net my_control_system/my_xmss_node/t_i[12] -attr @rip(#000000) t_i_reg[12][12] -pin my_accelerator t_i_reg[12][12] -pin my_xmss_node/level_i0_i_19 S[3]
load net my_control_system/my_xmss_node/t_i[1] -attr @rip(#000000) t_i_reg[12][1] -pin my_accelerator t_i_reg[12][1] -pin my_xmss_node/level_i0_i_21 S[0]
load net my_control_system/my_xmss_node/t_i[2] -attr @rip(#000000) t_i_reg[12][2] -pin my_accelerator t_i_reg[12][2] -pin my_xmss_node/level_i0_i_21 S[1]
load net my_control_system/my_xmss_node/t_i[3] -attr @rip(#000000) t_i_reg[12][3] -pin my_accelerator t_i_reg[12][3] -pin my_xmss_node/level_i0_i_21 S[2]
load net my_control_system/my_xmss_node/t_i[4] -attr @rip(#000000) t_i_reg[12][4] -pin my_accelerator t_i_reg[12][4] -pin my_xmss_node/level_i0_i_21 S[3]
load net my_control_system/my_xmss_node/t_i[5] -attr @rip(#000000) t_i_reg[12][5] -pin my_accelerator t_i_reg[12][5] -pin my_xmss_node/level_i0_i_20 S[0]
load net my_control_system/my_xmss_node/t_i[6] -attr @rip(#000000) t_i_reg[12][6] -pin my_accelerator t_i_reg[12][6] -pin my_xmss_node/level_i0_i_20 S[1]
load net my_control_system/my_xmss_node/t_i[7] -attr @rip(#000000) t_i_reg[12][7] -pin my_accelerator t_i_reg[12][7] -pin my_xmss_node/level_i0_i_20 S[2]
load net my_control_system/my_xmss_node/t_i[8] -attr @rip(#000000) t_i_reg[12][8] -pin my_accelerator t_i_reg[12][8] -pin my_xmss_node/level_i0_i_20 S[3]
load net my_control_system/my_xmss_node/t_i[9] -attr @rip(#000000) t_i_reg[12][9] -pin my_accelerator t_i_reg[12][9] -pin my_xmss_node/level_i0_i_19 S[0]
load net my_uart_rx_n_14 -pin my_accelerator state_reg[2]_rep_0 -pin my_uart_rx uart_rx_data_reg[0]_1
netloc my_uart_rx_n_14 1 3 1 N 620
load net my_uart_rx_n_15 -pin my_accelerator state_reg[0]_rep__11_0 -pin my_uart_rx uart_rx_data_reg[2]_0
netloc my_uart_rx_n_15 1 3 1 1430 580n
load net my_uart_rx_n_16 -pin my_accelerator wr_en_global_reg_0 -pin my_uart_rx FSM_sequential_fsm_state_reg[1]_0
netloc my_uart_rx_n_16 1 3 1 1230 480n
load net my_uart_rx_n_5 -pin my_accelerator state_reg[1]_rep_0 -pin my_uart_rx uart_rx_data_reg[0]_0
netloc my_uart_rx_n_5 1 3 1 N 600
load net my_uart_tx_n_3 -pin my_accelerator packet_count_reg[0]_rep__2_0 -pin my_uart_tx state_reg[0]_rep__7
netloc my_uart_tx_n_3 1 3 1 1410 500n
load net my_xmss_node/level_i0_i_19_n_0 -attr @rip(#000000) CO[3] -pin my_accelerator level_i0[0] -pin my_xmss_node/level_i0_i_19 CO[3]
netloc my_xmss_node/level_i0_i_19_n_0 1 3 1 1370 140n
load net my_xmss_node/level_i0_i_19_n_4 -attr @rip(#000000) O[3] -pin my_accelerator A[11] -pin my_xmss_node/level_i0_i_19 O[3]
load net my_xmss_node/level_i0_i_19_n_5 -attr @rip(#000000) O[2] -pin my_accelerator A[10] -pin my_xmss_node/level_i0_i_19 O[2]
load net my_xmss_node/level_i0_i_19_n_6 -attr @rip(#000000) O[1] -pin my_accelerator A[9] -pin my_xmss_node/level_i0_i_19 O[1]
load net my_xmss_node/level_i0_i_19_n_7 -attr @rip(#000000) O[0] -pin my_accelerator A[8] -pin my_xmss_node/level_i0_i_19 O[0]
load net my_xmss_node/level_i0_i_20_n_0 -attr @rip(#000000) CO[3] -pin my_xmss_node/level_i0_i_19 CI -pin my_xmss_node/level_i0_i_20 CO[3]
netloc my_xmss_node/level_i0_i_20_n_0 1 2 1 550 120n
load net my_xmss_node/level_i0_i_20_n_4 -attr @rip(#000000) O[3] -pin my_accelerator A[7] -pin my_xmss_node/level_i0_i_20 O[3]
load net my_xmss_node/level_i0_i_20_n_5 -attr @rip(#000000) O[2] -pin my_accelerator A[6] -pin my_xmss_node/level_i0_i_20 O[2]
load net my_xmss_node/level_i0_i_20_n_6 -attr @rip(#000000) O[1] -pin my_accelerator A[5] -pin my_xmss_node/level_i0_i_20 O[1]
load net my_xmss_node/level_i0_i_20_n_7 -attr @rip(#000000) O[0] -pin my_accelerator A[4] -pin my_xmss_node/level_i0_i_20 O[0]
load net my_xmss_node/level_i0_i_21_n_0 -attr @rip(#000000) CO[3] -pin my_xmss_node/level_i0_i_20 CI -pin my_xmss_node/level_i0_i_21 CO[3]
netloc my_xmss_node/level_i0_i_21_n_0 1 1 1 300 60n
load net my_xmss_node/level_i0_i_21_n_4 -attr @rip(#000000) O[3] -pin my_accelerator A[3] -pin my_xmss_node/level_i0_i_21 O[3]
load net my_xmss_node/level_i0_i_21_n_5 -attr @rip(#000000) O[2] -pin my_accelerator A[2] -pin my_xmss_node/level_i0_i_21 O[2]
load net my_xmss_node/level_i0_i_21_n_6 -attr @rip(#000000) O[1] -pin my_accelerator A[1] -pin my_xmss_node/level_i0_i_21 O[1]
load net my_xmss_node/level_i0_i_21_n_7 -attr @rip(#000000) O[0] -pin my_accelerator A[0] -pin my_xmss_node/level_i0_i_21 O[0]
load net p_2_in[0] -attr @rip(#000000) D[0] -pin my_accelerator D[0] -pin my_uart_tx D[0]
load net p_2_in[1] -attr @rip(#000000) D[1] -pin my_accelerator D[1] -pin my_uart_tx D[1]
load net p_2_in[2] -attr @rip(#000000) D[2] -pin my_accelerator D[2] -pin my_uart_tx D[2]
load net p_2_in[3] -attr @rip(#000000) D[3] -pin my_accelerator D[3] -pin my_uart_tx D[3]
load net p_2_in[4] -attr @rip(#000000) D[4] -pin my_accelerator D[4] -pin my_uart_tx D[4]
load net p_2_in[5] -attr @rip(#000000) D[5] -pin my_accelerator D[5] -pin my_uart_tx D[5]
load net p_2_in[6] -attr @rip(#000000) D[6] -pin my_accelerator D[6] -pin my_uart_tx D[6]
load net p_2_in_0 -pin my_accelerator p_2_in -pin my_uart_rx p_2_in
netloc p_2_in_0 1 3 1 1270 480n
load net rst -attr @rip(#000000) 0 -pin led0_r_reg S -pin my_accelerator rst -pin my_uart_rx SR[0] -pin my_uart_tx SR[0]
netloc rst 1 2 3 630 980 NJ 980 2040
load net rx_ready1 -pin my_accelerator rx_ready1 -pin my_uart_rx rx_ready1
netloc rx_ready1 1 3 1 1290 520n
load net rx_ready128_out -pin my_accelerator rx_ready128_out -pin my_uart_rx rx_ready128_out
netloc rx_ready128_out 1 3 1 1370 540n
load net rx_ready2 -attr @rip(#000000) packet_count_reg[31]_2[0] -pin my_accelerator packet_count_reg[31]_2[0] -pin my_uart_rx wr_en_global_i_2[0]
netloc rx_ready2 1 2 3 610 300 NJ 300 1940
load net rx_ready227_in -attr @rip(#000000) CO[0] -pin my_accelerator CO[0] -pin my_uart_rx CO[0]
netloc rx_ready227_in 1 2 3 630 400 1210J 760 2020
load net rx_ready229_in -attr @rip(#000000) packet_count_reg[31]_1[0] -pin my_accelerator packet_count_reg[31]_1[0] -pin my_uart_rx wr_en_global_i_2_0[0]
netloc rx_ready229_in 1 2 3 650 760 1190J 840 1920
load net rx_ready231_in -attr @rip(#000000) packet_count_reg[31]_0[0] -pin my_accelerator packet_count_reg[31]_0[0] -pin my_uart_rx rx_ready_i_6[0]
netloc rx_ready231_in 1 2 3 690 420 1310J 780 1980
load net rxd_reg_0 -pin my_accelerator rxd_reg_0 -pin my_uart_rx rxd_reg_0
netloc rxd_reg_0 1 3 1 1390 560n
load net sw0 -port sw0 -pin sw0_IBUF_inst I
netloc sw0 1 0 2 NJ 710 NJ
load net sw0_IBUF -pin led0_g_reg D -pin my_accelerator sw0_IBUF -pin my_uart_rx sw0_IBUF -pin my_uart_tx sw0_IBUF -pin sw0_IBUF_inst O
netloc sw0_IBUF 1 2 3 570 720 1450 860 2080J
load net uart_rx_data[0] -attr @rip(#000000) Q[0] -pin my_accelerator Q[0] -pin my_uart_rx Q[0]
load net uart_rx_data[1] -attr @rip(#000000) Q[1] -pin my_accelerator Q[1] -pin my_uart_rx Q[1]
load net uart_rx_data[2] -attr @rip(#000000) Q[2] -pin my_accelerator Q[2] -pin my_uart_rx Q[2]
load net uart_rx_data[3] -attr @rip(#000000) Q[3] -pin my_accelerator Q[3] -pin my_uart_rx Q[3]
load net uart_rx_data[4] -attr @rip(#000000) Q[4] -pin my_accelerator Q[4] -pin my_uart_rx Q[4]
load net uart_rx_data[5] -attr @rip(#000000) Q[5] -pin my_accelerator Q[5] -pin my_uart_rx Q[5]
load net uart_rx_data[6] -attr @rip(#000000) Q[6] -pin my_accelerator Q[6] -pin my_uart_rx Q[6]
load net uart_rx_data[7] -attr @rip(#000000) Q[7] -pin my_accelerator Q[7] -pin my_uart_rx Q[7]
load net uart_rx_en -pin my_accelerator uart_rx_en -pin my_uart_rx uart_rx_en
netloc uart_rx_en 1 2 3 690 740 1230J 820 1880
load net uart_rx_valid -pin my_accelerator uart_rx_valid -pin my_uart_rx uart_rx_valid
netloc uart_rx_valid 1 3 1 N 660
load net uart_rxd -port uart_rxd -pin uart_rxd_IBUF_inst I
netloc uart_rxd 1 0 3 NJ 1020 NJ 1020 NJ
load net uart_rxd_IBUF -pin my_accelerator uart_rxd_IBUF -pin uart_rxd_IBUF_inst O
netloc uart_rxd_IBUF 1 3 1 1470J 680n
load net uart_tx_busy -attr @rip(#000000) E[0] -pin my_accelerator uart_tx_busy -pin my_uart_tx E[0]
netloc uart_tx_busy 1 3 1 1170 700n
load net uart_tx_data[7] -attr @rip(#000000) tx_data_reg[7]_0[0] -pin my_accelerator tx_data_reg[7]_0[0] -pin my_uart_tx data_to_send_reg[7]_0[0]
netloc uart_tx_data[7] 1 2 3 650 1060 NJ 1060 1900
load net uart_tx_en -pin my_accelerator uart_tx_en -pin my_uart_tx uart_tx_en
netloc uart_tx_en 1 2 3 610 1100 NJ 1100 1960
load net uart_txd -port uart_txd -pin uart_txd_OBUF_inst O
netloc uart_txd 1 6 1 NJ 920
load net uart_txd_OBUF -pin my_uart_tx uart_txd_OBUF -pin uart_txd_OBUF_inst I
netloc uart_txd_OBUF 1 3 3 NJ 920 NJ 920 NJ
load netBundle @p_2_in 7 p_2_in[6] p_2_in[5] p_2_in[4] p_2_in[3] p_2_in[2] p_2_in[1] p_2_in[0] -autobundled
netbloc @p_2_in 1 2 3 590 280 NJ 280 1920
load netBundle @my_control_system/my_xmss_node 13 my_control_system/my_xmss_node/t_i[12] my_control_system/my_xmss_node/t_i[11] my_control_system/my_xmss_node/t_i[10] my_control_system/my_xmss_node/t_i[9] my_control_system/my_xmss_node/t_i[8] my_control_system/my_xmss_node/t_i[7] my_control_system/my_xmss_node/t_i[6] my_control_system/my_xmss_node/t_i[5] my_control_system/my_xmss_node/t_i[4] my_control_system/my_xmss_node/t_i[3] my_control_system/my_xmss_node/t_i[2] my_control_system/my_xmss_node/t_i[1] my_control_system/my_xmss_node/t_i[0] -autobundled
netbloc @my_control_system/my_xmss_node 1 0 5 20 170 280 240 550 240 NJ 240 1960
load netBundle @uart_rx_data 8 uart_rx_data[7] uart_rx_data[6] uart_rx_data[5] uart_rx_data[4] uart_rx_data[3] uart_rx_data[2] uart_rx_data[1] uart_rx_data[0] -autobundled
netbloc @uart_rx_data 1 3 1 1250 380n
load netBundle @data_to_send 7 data_to_send[7] data_to_send[6] data_to_send[5] data_to_send[4] data_to_send[3] data_to_send[2] data_to_send[1] -autobundled
netbloc @data_to_send 1 3 1 1330 420n
load netBundle @my_xmss_node/level_i0_i_19_n_ 4 my_xmss_node/level_i0_i_19_n_4 my_xmss_node/level_i0_i_19_n_5 my_xmss_node/level_i0_i_19_n_6 my_xmss_node/level_i0_i_19_n_7 -autobundled
netbloc @my_xmss_node/level_i0_i_19_n_ 1 3 1 1410 160n
load netBundle @my_xmss_node/level_i0_i_20_n_ 4 my_xmss_node/level_i0_i_20_n_4 my_xmss_node/level_i0_i_20_n_5 my_xmss_node/level_i0_i_20_n_6 my_xmss_node/level_i0_i_20_n_7 -autobundled
netbloc @my_xmss_node/level_i0_i_20_n_ 1 2 2 630J 260 1210
load netBundle @my_xmss_node/level_i0_i_21_n_ 4 my_xmss_node/level_i0_i_21_n_4 my_xmss_node/level_i0_i_21_n_5 my_xmss_node/level_i0_i_21_n_6 my_xmss_node/level_i0_i_21_n_7 -autobundled
netbloc @my_xmss_node/level_i0_i_21_n_ 1 1 3 NJ 80 NJ 80 1430
levelinfo -pg 1 0 100 370 870 1660 2140 2260 2420
pagesize -pg 1 -db -bbox -sgen -130 0 2520 1110
show
zoom 1.2031
scrollpos -154 -194
#
# initialize ictrl to current module top work:top:NOFILE
ictrl init topinfo |
