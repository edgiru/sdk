;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Fri Jun 13 08:35:40 2014
;--------------------------------------------------------
	.module rf_configure
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rf_spi_configure_enable
	.globl _rf_set_rx_addr
	.globl _rf_set_tx_addr
	.globl _rf_write_register
	.globl _rf_power_down_param
	.globl _rf_power_up_param
	.globl _FSR_SB_ENDBG
	.globl _FSR_SB_STP
	.globl _FSR_SB_WEN
	.globl _FSR_SB_RDYN
	.globl _FSR_SB_INFEN
	.globl _FSR_SB_RDISMB
	.globl _RFCON_SB_RFCKEN
	.globl _RFCON_SB_RFCSN
	.globl _RFCON_SB_RFCE
	.globl _ADCON_SB_BD
	.globl _PSW_SB_P
	.globl _PSW_SB_F1
	.globl _PSW_SB_OV
	.globl _PSW_SB_RS0
	.globl _PSW_SB_RS1
	.globl _PSW_SB_F0
	.globl _PSW_SB_AC
	.globl _PSW_SB_CY
	.globl _T2CON_SB_T2PS
	.globl _T2CON_SB_I3FR
	.globl _T2CON_SB_I2FR
	.globl _T2CON_SB_T2R1
	.globl _T2CON_SB_T2R0
	.globl _T2CON_SB_T2CM
	.globl _T2CON_SB_T2I1
	.globl _T2CON_SB_T2I0
	.globl _IRCON_SB_EXF2
	.globl _IRCON_SB_TF2
	.globl _IRCON_SB_TICK
	.globl _IRCON_SB_MISCIRQ
	.globl _IRCON_SB_WUOPIRQ
	.globl _IRCON_SB_SPI_2WIRE
	.globl _IRCON_SB_RFIRQ
	.globl _IRCON_SB_RFRDY
	.globl _IEN1_SB_T2EXTRLD
	.globl _IEN1_SB_TICK
	.globl _IEN1_SB_MISCIRQ
	.globl _IEN1_SB_WUOPIRQ
	.globl _IEN1_SB_SPI_2WIRE
	.globl _IEN1_SB_RFIRQ
	.globl _IEN1_SB_RFRDY
	.globl _P3_SB_D7
	.globl _P3_SB_D6
	.globl _P3_SB_D5
	.globl _P3_SB_D4
	.globl _P3_SB_D3
	.globl _P3_SB_D2
	.globl _P3_SB_D1
	.globl _P3_SB_D0
	.globl _IEN0_SB_GLOBAL
	.globl _IEN0_SB_T2
	.globl _IEN0_SB_UART
	.globl _IEN0_SB_T1
	.globl _IEN0_SB_POFIRQ
	.globl _IEN0_SB_T0
	.globl _IEN0_SB_IFP
	.globl _P2_SB_D7
	.globl _P2_SB_D6
	.globl _P2_SB_D5
	.globl _P2_SB_D4
	.globl _P2_SB_D3
	.globl _P2_SB_D2
	.globl _P2_SB_D1
	.globl _P2_SB_D0
	.globl _S0CON_SB_SM0
	.globl _S0CON_SB_SM1
	.globl _S0CON_SB_SM20
	.globl _S0CON_SB_REN0
	.globl _S0CON_SB_TB80
	.globl _S0CON_SB_RB80
	.globl _S0CON_SB_TI0
	.globl _S0CON_SB_RI0
	.globl _P1_SB_D7
	.globl _P1_SB_D6
	.globl _P1_SB_D5
	.globl _P1_SB_D4
	.globl _P1_SB_D3
	.globl _P1_SB_D2
	.globl _P1_SB_D1
	.globl _P1_SB_D0
	.globl _TCON_SB_TF1
	.globl _TCON_SB_TR1
	.globl _TCON_SB_TF0
	.globl _TCON_SB_TR0
	.globl _TCON_SB_IE1
	.globl _TCON_SB_IT1
	.globl _TCON_SB_IE0
	.globl _TCON_SB_IT0
	.globl _P0_SB_D7
	.globl _P0_SB_D6
	.globl _P0_SB_D5
	.globl _P0_SB_D4
	.globl _P0_SB_D3
	.globl _P0_SB_D2
	.globl _P0_SB_D1
	.globl _P0_SB_D0
	.globl _ADCDAT
	.globl _S0REL
	.globl _T2
	.globl _T1
	.globl _T0
	.globl _CRC
	.globl _CC3
	.globl _CC2
	.globl _CC1
	.globl _SPIMDAT
	.globl _SPIMSTAT
	.globl _SPIMCON1
	.globl _SPIMCON0
	.globl _FCR
	.globl _FPCR
	.globl _FSR
	.globl _B
	.globl _ARCON
	.globl _MD5
	.globl _MD4
	.globl _MD3
	.globl _MD2
	.globl _MD1
	.globl _MD0
	.globl _RFCON
	.globl _SPIRDAT
	.globl _SPIRSTAT
	.globl _SPIRCON1
	.globl _SPIRCON0
	.globl _W2CON0
	.globl _W2CON1
	.globl _ACC
	.globl _CCPDATO
	.globl _CCPDATIB
	.globl _CCPDATIA
	.globl _POFCON
	.globl _COMPCON
	.globl _W2DAT
	.globl _W2SADR
	.globl _ADCON
	.globl _RNGDAT
	.globl _RNGCTL
	.globl _ADCDATL
	.globl _ADCDATH
	.globl _ADCCON1
	.globl _ADCCON2
	.globl _ADCCON3
	.globl _PSW
	.globl _WUOPC0
	.globl _WUOPC1
	.globl _TH2
	.globl _TL2
	.globl _CRCH
	.globl _CRCL
	.globl __XPAGE
	.globl _MPAGE
	.globl _T2CON
	.globl _CCH3
	.globl _CCL3
	.globl _CCH2
	.globl _CCL2
	.globl _CCH1
	.globl _CCL1
	.globl _CCEN
	.globl _IRCON
	.globl _SPISDAT
	.globl _SPISSTAT
	.globl _SPISCON1
	.globl _SPISCON0
	.globl _S0RELH
	.globl _IP1
	.globl _IEN1
	.globl _SPISRDSZ
	.globl _RTC2CPT00
	.globl _RTC2CMP1
	.globl _RTC2CMP0
	.globl _RTC2CON
	.globl _PWMCON
	.globl _RSTREAS
	.globl _P3
	.globl _WDSV
	.globl _OPMCON
	.globl _CLKLFCTRL
	.globl _RTC2CPT10
	.globl _RTC2CPT01
	.globl _S0RELL
	.globl _IP0
	.globl _IEN0
	.globl _MEMCON
	.globl _INTEXP
	.globl _WUCON
	.globl _PWRDWN
	.globl _CLKCTRL
	.globl _PWMDC1
	.globl _PWMDC0
	.globl _P2
	.globl _P1CON
	.globl _P0CON
	.globl _S0BUF
	.globl _S0CON
	.globl _P2CON
	.globl _P3DIR
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _DPS
	.globl _P1
	.globl _P3CON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH1
	.globl _DPL1
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _rf_configure_PARM_23
	.globl _rf_configure_PARM_22
	.globl _rf_configure_PARM_21
	.globl _rf_configure_PARM_20
	.globl _rf_configure_PARM_19
	.globl _rf_configure_PARM_18
	.globl _rf_configure_PARM_17
	.globl _rf_configure_PARM_16
	.globl _rf_configure_PARM_15
	.globl _rf_configure_PARM_14
	.globl _rf_configure_PARM_13
	.globl _rf_configure_PARM_12
	.globl _rf_configure_PARM_11
	.globl _rf_configure_PARM_10
	.globl _rf_configure_PARM_9
	.globl _rf_configure_PARM_8
	.globl _rf_configure_PARM_7
	.globl _rf_configure_PARM_6
	.globl _rf_configure_PARM_5
	.globl _rf_configure_PARM_4
	.globl _rf_configure_PARM_3
	.globl _rf_configure_PARM_2
	.globl _rf_configure
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P3CON	=	0x008f
_P1	=	0x0090
_DPS	=	0x0092
_P0DIR	=	0x0093
_P1DIR	=	0x0094
_P2DIR	=	0x0095
_P3DIR	=	0x0096
_P2CON	=	0x0097
_S0CON	=	0x0098
_S0BUF	=	0x0099
_P0CON	=	0x009e
_P1CON	=	0x009f
_P2	=	0x00a0
_PWMDC0	=	0x00a1
_PWMDC1	=	0x00a2
_CLKCTRL	=	0x00a3
_PWRDWN	=	0x00a4
_WUCON	=	0x00a5
_INTEXP	=	0x00a6
_MEMCON	=	0x00a7
_IEN0	=	0x00a8
_IP0	=	0x00a9
_S0RELL	=	0x00aa
_RTC2CPT01	=	0x00ab
_RTC2CPT10	=	0x00ac
_CLKLFCTRL	=	0x00ad
_OPMCON	=	0x00ae
_WDSV	=	0x00af
_P3	=	0x00b0
_RSTREAS	=	0x00b1
_PWMCON	=	0x00b2
_RTC2CON	=	0x00b3
_RTC2CMP0	=	0x00b4
_RTC2CMP1	=	0x00b5
_RTC2CPT00	=	0x00b6
_SPISRDSZ	=	0x00b7
_IEN1	=	0x00b8
_IP1	=	0x00b9
_S0RELH	=	0x00ba
_SPISCON0	=	0x00bc
_SPISCON1	=	0x00bd
_SPISSTAT	=	0x00be
_SPISDAT	=	0x00bf
_IRCON	=	0x00c0
_CCEN	=	0x00c1
_CCL1	=	0x00c2
_CCH1	=	0x00c3
_CCL2	=	0x00c4
_CCH2	=	0x00c5
_CCL3	=	0x00c6
_CCH3	=	0x00c7
_T2CON	=	0x00c8
_MPAGE	=	0x00c9
__XPAGE	=	0x00c9
_CRCL	=	0x00ca
_CRCH	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_WUOPC1	=	0x00ce
_WUOPC0	=	0x00cf
_PSW	=	0x00d0
_ADCCON3	=	0x00d1
_ADCCON2	=	0x00d2
_ADCCON1	=	0x00d3
_ADCDATH	=	0x00d4
_ADCDATL	=	0x00d5
_RNGCTL	=	0x00d6
_RNGDAT	=	0x00d7
_ADCON	=	0x00d8
_W2SADR	=	0x00d9
_W2DAT	=	0x00da
_COMPCON	=	0x00db
_POFCON	=	0x00dc
_CCPDATIA	=	0x00dd
_CCPDATIB	=	0x00de
_CCPDATO	=	0x00df
_ACC	=	0x00e0
_W2CON1	=	0x00e1
_W2CON0	=	0x00e2
_SPIRCON0	=	0x00e4
_SPIRCON1	=	0x00e5
_SPIRSTAT	=	0x00e6
_SPIRDAT	=	0x00e7
_RFCON	=	0x00e8
_MD0	=	0x00e9
_MD1	=	0x00ea
_MD2	=	0x00eb
_MD3	=	0x00ec
_MD4	=	0x00ed
_MD5	=	0x00ee
_ARCON	=	0x00ef
_B	=	0x00f0
_FSR	=	0x00f8
_FPCR	=	0x00f9
_FCR	=	0x00fa
_SPIMCON0	=	0x00fc
_SPIMCON1	=	0x00fd
_SPIMSTAT	=	0x00fe
_SPIMDAT	=	0x00ff
_CC1	=	0xc3c2
_CC2	=	0xc5c4
_CC3	=	0xc7c6
_CRC	=	0xcbca
_T0	=	0x8c8a
_T1	=	0x8d8b
_T2	=	0xcdcc
_S0REL	=	0xbaaa
_ADCDAT	=	0xd4d5
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_SB_D0	=	0x0080
_P0_SB_D1	=	0x0081
_P0_SB_D2	=	0x0082
_P0_SB_D3	=	0x0083
_P0_SB_D4	=	0x0084
_P0_SB_D5	=	0x0085
_P0_SB_D6	=	0x0086
_P0_SB_D7	=	0x0087
_TCON_SB_IT0	=	0x0088
_TCON_SB_IE0	=	0x0089
_TCON_SB_IT1	=	0x008a
_TCON_SB_IE1	=	0x008b
_TCON_SB_TR0	=	0x008c
_TCON_SB_TF0	=	0x008d
_TCON_SB_TR1	=	0x008e
_TCON_SB_TF1	=	0x008f
_P1_SB_D0	=	0x0090
_P1_SB_D1	=	0x0091
_P1_SB_D2	=	0x0092
_P1_SB_D3	=	0x0093
_P1_SB_D4	=	0x0094
_P1_SB_D5	=	0x0095
_P1_SB_D6	=	0x0096
_P1_SB_D7	=	0x0097
_S0CON_SB_RI0	=	0x0098
_S0CON_SB_TI0	=	0x0099
_S0CON_SB_RB80	=	0x009a
_S0CON_SB_TB80	=	0x009b
_S0CON_SB_REN0	=	0x009c
_S0CON_SB_SM20	=	0x009d
_S0CON_SB_SM1	=	0x009e
_S0CON_SB_SM0	=	0x009f
_P2_SB_D0	=	0x00a0
_P2_SB_D1	=	0x00a1
_P2_SB_D2	=	0x00a2
_P2_SB_D3	=	0x00a3
_P2_SB_D4	=	0x00a4
_P2_SB_D5	=	0x00a5
_P2_SB_D6	=	0x00a6
_P2_SB_D7	=	0x00a7
_IEN0_SB_IFP	=	0x00a8
_IEN0_SB_T0	=	0x00a9
_IEN0_SB_POFIRQ	=	0x00aa
_IEN0_SB_T1	=	0x00ab
_IEN0_SB_UART	=	0x00ac
_IEN0_SB_T2	=	0x00ad
_IEN0_SB_GLOBAL	=	0x00af
_P3_SB_D0	=	0x00b0
_P3_SB_D1	=	0x00b1
_P3_SB_D2	=	0x00b2
_P3_SB_D3	=	0x00b3
_P3_SB_D4	=	0x00b4
_P3_SB_D5	=	0x00b5
_P3_SB_D6	=	0x00b6
_P3_SB_D7	=	0x00b7
_IEN1_SB_RFRDY	=	0x00b8
_IEN1_SB_RFIRQ	=	0x00b9
_IEN1_SB_SPI_2WIRE	=	0x00ba
_IEN1_SB_WUOPIRQ	=	0x00bb
_IEN1_SB_MISCIRQ	=	0x00bc
_IEN1_SB_TICK	=	0x00bd
_IEN1_SB_T2EXTRLD	=	0x00bf
_IRCON_SB_RFRDY	=	0x00c0
_IRCON_SB_RFIRQ	=	0x00c1
_IRCON_SB_SPI_2WIRE	=	0x00c2
_IRCON_SB_WUOPIRQ	=	0x00c3
_IRCON_SB_MISCIRQ	=	0x00c4
_IRCON_SB_TICK	=	0x00c5
_IRCON_SB_TF2	=	0x00c6
_IRCON_SB_EXF2	=	0x00c7
_T2CON_SB_T2I0	=	0x00c8
_T2CON_SB_T2I1	=	0x00c9
_T2CON_SB_T2CM	=	0x00ca
_T2CON_SB_T2R0	=	0x00cb
_T2CON_SB_T2R1	=	0x00cc
_T2CON_SB_I2FR	=	0x00cd
_T2CON_SB_I3FR	=	0x00ce
_T2CON_SB_T2PS	=	0x00cf
_PSW_SB_CY	=	0x00d7
_PSW_SB_AC	=	0x00d6
_PSW_SB_F0	=	0x00d5
_PSW_SB_RS1	=	0x00d4
_PSW_SB_RS0	=	0x00d3
_PSW_SB_OV	=	0x00d2
_PSW_SB_F1	=	0x00d1
_PSW_SB_P	=	0x00d0
_ADCON_SB_BD	=	0x00df
_RFCON_SB_RFCE	=	0x00e8
_RFCON_SB_RFCSN	=	0x00e9
_RFCON_SB_RFCKEN	=	0x00ea
_FSR_SB_RDISMB	=	0x00fa
_FSR_SB_INFEN	=	0x00fb
_FSR_SB_RDYN	=	0x00fc
_FSR_SB_WEN	=	0x00fd
_FSR_SB_STP	=	0x00fe
_FSR_SB_ENDBG	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_rf_configure_PARM_2:
	.ds 1
_rf_configure_PARM_3:
	.ds 1
_rf_configure_PARM_4:
	.ds 1
_rf_configure_PARM_5:
	.ds 1
_rf_configure_PARM_6:
	.ds 1
_rf_configure_PARM_7:
	.ds 1
_rf_configure_PARM_8:
	.ds 1
_rf_configure_PARM_9:
	.ds 3
_rf_configure_PARM_10:
	.ds 3
_rf_configure_PARM_11:
	.ds 1
_rf_configure_PARM_12:
	.ds 1
_rf_configure_PARM_13:
	.ds 1
_rf_configure_PARM_14:
	.ds 1
_rf_configure_PARM_15:
	.ds 3
_rf_configure_PARM_16:
	.ds 1
_rf_configure_PARM_17:
	.ds 1
_rf_configure_PARM_18:
	.ds 1
_rf_configure_PARM_19:
	.ds 1
_rf_configure_PARM_20:
	.ds 1
_rf_configure_PARM_21:
	.ds 1
_rf_configure_PARM_22:
	.ds 1
_rf_configure_PARM_23:
	.ds 1
_rf_configure_config_1_31:
	.ds 1
_rf_configure_buffer_1_32:
	.ds 5
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_configure'
;------------------------------------------------------------
;opt_rx_active_mode        Allocated with name '_rf_configure_PARM_2'
;en_aa                     Allocated with name '_rf_configure_PARM_3'
;en_rxaddr                 Allocated with name '_rf_configure_PARM_4'
;setup_aw                  Allocated with name '_rf_configure_PARM_5'
;setup_retr                Allocated with name '_rf_configure_PARM_6'
;rf_ch                     Allocated with name '_rf_configure_PARM_7'
;rf_setup                  Allocated with name '_rf_configure_PARM_8'
;rx_addr_p0                Allocated with name '_rf_configure_PARM_9'
;rx_addr_p1                Allocated with name '_rf_configure_PARM_10'
;rx_addr_p2                Allocated with name '_rf_configure_PARM_11'
;rx_addr_p3                Allocated with name '_rf_configure_PARM_12'
;rx_addr_p4                Allocated with name '_rf_configure_PARM_13'
;rx_addr_p5                Allocated with name '_rf_configure_PARM_14'
;tx_addr                   Allocated with name '_rf_configure_PARM_15'
;rx_pw_p0                  Allocated with name '_rf_configure_PARM_16'
;rx_pw_p1                  Allocated with name '_rf_configure_PARM_17'
;rx_pw_p2                  Allocated with name '_rf_configure_PARM_18'
;rx_pw_p3                  Allocated with name '_rf_configure_PARM_19'
;rx_pw_p4                  Allocated with name '_rf_configure_PARM_20'
;rx_pw_p5                  Allocated with name '_rf_configure_PARM_21'
;dynpd                     Allocated with name '_rf_configure_PARM_22'
;feature                   Allocated with name '_rf_configure_PARM_23'
;config                    Allocated with name '_rf_configure_config_1_31'
;buffer                    Allocated with name '_rf_configure_buffer_1_32'
;------------------------------------------------------------
;	src/rf_configure.c:89: void rf_configure(uint8_t config,
;	-----------------------------------------
;	 function rf_configure
;	-----------------------------------------
_rf_configure:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_rf_configure_config_1_31
	movx	@dptr,a
;	src/rf_configure.c:116: rf_spi_configure_enable();
	lcall	_rf_spi_configure_enable
;	src/rf_configure.c:118: buffer[0] = en_aa;
	mov	dptr,#_rf_configure_PARM_3
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:119: rf_write_register(RF_EN_AA, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_rf_write_register
;	src/rf_configure.c:121: buffer[0] = en_rxaddr;
	mov	dptr,#_rf_configure_PARM_4
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:122: rf_write_register(RF_EN_RXADDR, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_rf_write_register
;	src/rf_configure.c:124: buffer[0] = setup_aw;
	mov	dptr,#_rf_configure_PARM_5
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:125: rf_write_register(RF_SETUP_AW, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_rf_write_register
;	src/rf_configure.c:127: buffer[0] = setup_retr;
	mov	dptr,#_rf_configure_PARM_6
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:128: rf_write_register(RF_SETUP_RETR, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x04
	lcall	_rf_write_register
;	src/rf_configure.c:130: buffer[0] = rf_ch;
	mov	dptr,#_rf_configure_PARM_7
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:131: rf_write_register(RF_RF_CH, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x05
	lcall	_rf_write_register
;	src/rf_configure.c:133: buffer[0] = rf_setup;
	mov	dptr,#_rf_configure_PARM_8
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:134: rf_write_register(RF_RF_SETUP, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_rf_write_register
;	src/rf_configure.c:137: if(rx_addr_p0 != NULL)
	mov	dptr,#_rf_configure_PARM_9
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00102$
;	src/rf_configure.c:139: rf_set_rx_addr(rx_addr_p0, 5, 0);
	mov	dptr,#_rf_set_rx_addr_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_set_rx_addr_PARM_3
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rf_set_rx_addr
	sjmp	00103$
00102$:
;	src/rf_configure.c:143: buffer[0] = RF_RX_ADDR_P0_B0_DEFAULT_VAL;
	mov	dptr,#_rf_configure_buffer_1_32
	mov	a,#0xE7
	movx	@dptr,a
;	src/rf_configure.c:144: buffer[1] = RF_RX_ADDR_P0_B1_DEFAULT_VAL;
	mov	dptr,#(_rf_configure_buffer_1_32 + 0x0001)
	movx	@dptr,a
;	src/rf_configure.c:145: buffer[2] = RF_RX_ADDR_P0_B2_DEFAULT_VAL;
	mov	dptr,#(_rf_configure_buffer_1_32 + 0x0002)
	movx	@dptr,a
;	src/rf_configure.c:146: buffer[3] = RF_RX_ADDR_P0_B3_DEFAULT_VAL;
	mov	dptr,#(_rf_configure_buffer_1_32 + 0x0003)
	movx	@dptr,a
;	src/rf_configure.c:147: buffer[4] = RF_RX_ADDR_P0_B4_DEFAULT_VAL;
	mov	dptr,#(_rf_configure_buffer_1_32 + 0x0004)
	movx	@dptr,a
;	src/rf_configure.c:149: rf_set_rx_addr(buffer, 5, 0);
	mov	dptr,#_rf_set_rx_addr_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_set_rx_addr_PARM_3
	movx	@dptr,a
	mov	dptr,#_rf_configure_buffer_1_32
	mov	b,#0x00
	lcall	_rf_set_rx_addr
00103$:
;	src/rf_configure.c:153: if(rx_addr_p1 != NULL)
	mov	dptr,#_rf_configure_PARM_10
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00105$
;	src/rf_configure.c:155: rf_set_rx_addr(rx_addr_p1, 5, 1);
	mov	dptr,#_rf_set_rx_addr_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_set_rx_addr_PARM_3
	inc	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rf_set_rx_addr
	sjmp	00106$
00105$:
;	src/rf_configure.c:159: buffer[0] = RF_RX_ADDR_P1_B0_DEFAULT_VAL;
	mov	dptr,#_rf_configure_buffer_1_32
	mov	a,#0xC2
	movx	@dptr,a
;	src/rf_configure.c:160: buffer[1] = RF_RX_ADDR_P1_B1_DEFAULT_VAL;
	mov	dptr,#(_rf_configure_buffer_1_32 + 0x0001)
	movx	@dptr,a
;	src/rf_configure.c:161: buffer[2] = RF_RX_ADDR_P1_B2_DEFAULT_VAL;
	mov	dptr,#(_rf_configure_buffer_1_32 + 0x0002)
	movx	@dptr,a
;	src/rf_configure.c:162: buffer[3] = RF_RX_ADDR_P1_B3_DEFAULT_VAL;
	mov	dptr,#(_rf_configure_buffer_1_32 + 0x0003)
	movx	@dptr,a
;	src/rf_configure.c:163: buffer[4] = RF_RX_ADDR_P1_B4_DEFAULT_VAL;
	mov	dptr,#(_rf_configure_buffer_1_32 + 0x0004)
	movx	@dptr,a
;	src/rf_configure.c:165: rf_set_rx_addr(buffer, 5, 1);
	mov	dptr,#_rf_set_rx_addr_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_set_rx_addr_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_rf_configure_buffer_1_32
	mov	b,#0x00
	lcall	_rf_set_rx_addr
00106$:
;	src/rf_configure.c:168: buffer[0] = rx_addr_p2;
	mov	dptr,#_rf_configure_PARM_11
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:169: rf_set_rx_addr(buffer, 1, 2);
	mov	dptr,#_rf_set_rx_addr_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_set_rx_addr_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_rf_configure_buffer_1_32
	mov	b,#0x00
	lcall	_rf_set_rx_addr
;	src/rf_configure.c:171: buffer[0] = rx_addr_p3;
	mov	dptr,#_rf_configure_PARM_12
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:172: rf_set_rx_addr(buffer, 1, 3);
	mov	dptr,#_rf_set_rx_addr_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_set_rx_addr_PARM_3
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_rf_configure_buffer_1_32
	mov	b,#0x00
	lcall	_rf_set_rx_addr
;	src/rf_configure.c:174: buffer[0] = rx_addr_p4;
	mov	dptr,#_rf_configure_PARM_13
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:175: rf_set_rx_addr(buffer, 1, 4);
	mov	dptr,#_rf_set_rx_addr_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_set_rx_addr_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_rf_configure_buffer_1_32
	mov	b,#0x00
	lcall	_rf_set_rx_addr
;	src/rf_configure.c:177: buffer[0] = rx_addr_p5;
	mov	dptr,#_rf_configure_PARM_14
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:178: rf_set_rx_addr(buffer, 1, 5);
	mov	dptr,#_rf_set_rx_addr_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_set_rx_addr_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_rf_configure_buffer_1_32
	mov	b,#0x00
	lcall	_rf_set_rx_addr
;	src/rf_configure.c:181: if(tx_addr != NULL)
	mov	dptr,#_rf_configure_PARM_15
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00108$
;	src/rf_configure.c:183: rf_set_tx_addr(tx_addr, 5);
	mov	dptr,#_rf_set_tx_addr_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rf_set_tx_addr
	sjmp	00109$
00108$:
;	src/rf_configure.c:187: buffer[0] = RF_TX_ADDR_B0_DEFAULT_VAL;
	mov	dptr,#_rf_configure_buffer_1_32
	mov	a,#0xE7
	movx	@dptr,a
;	src/rf_configure.c:188: buffer[1] = RF_TX_ADDR_B1_DEFAULT_VAL;
	mov	dptr,#(_rf_configure_buffer_1_32 + 0x0001)
	movx	@dptr,a
;	src/rf_configure.c:189: buffer[2] = RF_TX_ADDR_B2_DEFAULT_VAL;
	mov	dptr,#(_rf_configure_buffer_1_32 + 0x0002)
	movx	@dptr,a
;	src/rf_configure.c:190: buffer[3] = RF_TX_ADDR_B3_DEFAULT_VAL;
	mov	dptr,#(_rf_configure_buffer_1_32 + 0x0003)
	movx	@dptr,a
;	src/rf_configure.c:191: buffer[4] = RF_TX_ADDR_B4_DEFAULT_VAL;
	mov	dptr,#(_rf_configure_buffer_1_32 + 0x0004)
	movx	@dptr,a
;	src/rf_configure.c:193: rf_set_tx_addr(buffer, 5);
	mov	dptr,#_rf_set_tx_addr_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_configure_buffer_1_32
	mov	b,#0x00
	lcall	_rf_set_tx_addr
00109$:
;	src/rf_configure.c:196: buffer[0] = rx_pw_p0;
	mov	dptr,#_rf_configure_PARM_16
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:197: rf_write_register(RF_RX_PW_P0, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x11
	lcall	_rf_write_register
;	src/rf_configure.c:199: buffer[0] = rx_pw_p1;
	mov	dptr,#_rf_configure_PARM_17
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:200: rf_write_register(RF_RX_PW_P1, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x12
	lcall	_rf_write_register
;	src/rf_configure.c:202: buffer[0] = rx_pw_p2;
	mov	dptr,#_rf_configure_PARM_18
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:203: rf_write_register(RF_RX_PW_P2, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x13
	lcall	_rf_write_register
;	src/rf_configure.c:205: buffer[0] = rx_pw_p3;
	mov	dptr,#_rf_configure_PARM_19
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:206: rf_write_register(RF_RX_PW_P3, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x14
	lcall	_rf_write_register
;	src/rf_configure.c:208: buffer[0] = rx_pw_p4;
	mov	dptr,#_rf_configure_PARM_20
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:209: rf_write_register(RF_RX_PW_P4, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x15
	lcall	_rf_write_register
;	src/rf_configure.c:211: buffer[0] = rx_pw_p5;
	mov	dptr,#_rf_configure_PARM_21
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:212: rf_write_register(RF_RX_PW_P5, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x16
	lcall	_rf_write_register
;	src/rf_configure.c:214: buffer[0] = dynpd;
	mov	dptr,#_rf_configure_PARM_22
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:215: rf_write_register(RF_DYNPD, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x1C
	lcall	_rf_write_register
;	src/rf_configure.c:217: buffer[0] = feature;
	mov	dptr,#_rf_configure_PARM_23
	movx	a,@dptr
	mov	dptr,#_rf_configure_buffer_1_32
	movx	@dptr,a
;	src/rf_configure.c:218: rf_write_register(RF_FEATURE, buffer, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_buffer_1_32
	movx	@dptr,a
	mov	a,#(_rf_configure_buffer_1_32 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x1D
	lcall	_rf_write_register
;	src/rf_configure.c:221: if((config & RF_CONFIG_PWR_UP) != 0)
	mov	dptr,#_rf_configure_config_1_31
	movx	a,@dptr
	mov	r7,a
	jnb	acc.1,00111$
;	src/rf_configure.c:223: rf_power_up_param(opt_rx_active_mode, config);
	mov	dptr,#_rf_configure_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_rf_power_up_param_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r6
	ljmp	_rf_power_up_param
00111$:
;	src/rf_configure.c:227: rf_power_down_param(config);
	mov	dpl,r7
	ljmp	_rf_power_down_param
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)