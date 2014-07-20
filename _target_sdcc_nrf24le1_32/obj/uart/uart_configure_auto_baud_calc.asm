;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Sun Jul 20 08:46:29 2014
;--------------------------------------------------------
	.module uart_configure_auto_baud_calc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uart_calc_actual_baud_rate_from_th1
	.globl _uart_calc_th1_value
	.globl _uart_calc_actual_baud_rate_from_s0rel
	.globl _uart_calc_s0rel_value
	.globl _uart_configure_manual_baud_calc
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
	.globl _uart_configure_auto_baud_calc_PARM_2
	.globl _uart_configure_auto_baud_calc
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
_uart_configure_auto_baud_calc_sloc0_1_0:
	.ds 2
_uart_configure_auto_baud_calc_sloc1_1_0:
	.ds 4
_uart_configure_auto_baud_calc_sloc2_1_0:
	.ds 4
_uart_configure_auto_baud_calc_sloc3_1_0:
	.ds 4
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
_uart_configure_auto_baud_calc_PARM_2:
	.ds 4
_uart_configure_auto_baud_calc_uart_config_options_1_9:
	.ds 1
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
;Allocation info for local variables in function 'uart_configure_auto_baud_calc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_uart_configure_auto_baud_calc_sloc0_1_0'
;sloc1                     Allocated with name '_uart_configure_auto_baud_calc_sloc1_1_0'
;sloc2                     Allocated with name '_uart_configure_auto_baud_calc_sloc2_1_0'
;sloc3                     Allocated with name '_uart_configure_auto_baud_calc_sloc3_1_0'
;baud_rate                 Allocated with name '_uart_configure_auto_baud_calc_PARM_2'
;uart_config_options       Allocated with name '_uart_configure_auto_baud_calc_uart_config_options_1_9'
;calc_br_with_smod_cleared Allocated with name '_uart_configure_auto_baud_calc_calc_br_with_smod_cleared_2_11'
;calc_br_with_smod_set     Allocated with name '_uart_configure_auto_baud_calc_calc_br_with_smod_set_2_11'
;error_calc_br_with_smod_cleared Allocated with name '_uart_configure_auto_baud_calc_error_calc_br_with_smod_cleared_2_11'
;error_calc_br_with_smod_set Allocated with name '_uart_configure_auto_baud_calc_error_calc_br_with_smod_set_2_11'
;s0rel_with_smod_cleared   Allocated with name '_uart_configure_auto_baud_calc_s0rel_with_smod_cleared_3_12'
;s0rel_with_smod_set       Allocated with name '_uart_configure_auto_baud_calc_s0rel_with_smod_set_3_12'
;th1_with_smod_cleared     Allocated with name '_uart_configure_auto_baud_calc_th1_with_smod_cleared_3_15'
;th1_with_smod_set         Allocated with name '_uart_configure_auto_baud_calc_th1_with_smod_set_3_15'
;------------------------------------------------------------
;	src/uart_configure_auto_baud_calc.c:48: void uart_configure_auto_baud_calc(uint8_t uart_config_options, uint32_t baud_rate)
;	-----------------------------------------
;	 function uart_configure_auto_baud_calc
;	-----------------------------------------
_uart_configure_auto_baud_calc:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_uart_configure_auto_baud_calc_uart_config_options_1_9
	movx	@dptr,a
;	src/uart_configure_auto_baud_calc.c:51: if(((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_1_UART_8_BIT) ||
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xC0
	anl	a,r7
	mov	r6,a
	cjne	r6,#0x40,00147$
	sjmp	00110$
00147$:
;	src/uart_configure_auto_baud_calc.c:52: ((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_3_UART_9_BIT))
	mov	a,#0xC0
	anl	a,r7
	mov	r6,a
	cjne	r6,#0xC0,00148$
	sjmp	00149$
00148$:
	ret
00149$:
00110$:
;	src/uart_configure_auto_baud_calc.c:58: if((uart_config_options & UART_CONFIG_OPTION_CLOCK_MASK) == UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_BR_GEN)
	mov	a,#0x02
	anl	a,r7
	mov	r6,a
	cjne	r6,#0x02,00150$
	sjmp	00151$
00150$:
	ljmp	00108$
00151$:
;	src/uart_configure_auto_baud_calc.c:63: s0rel_with_smod_cleared = uart_calc_s0rel_value(baud_rate, 0);
	mov	dptr,#_uart_configure_auto_baud_calc_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_uart_calc_s0rel_value_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_uart_calc_s0rel_value
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	src/uart_configure_auto_baud_calc.c:64: s0rel_with_smod_set = uart_calc_s0rel_value(baud_rate, 1);
	mov	dptr,#_uart_calc_s0rel_value_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_uart_calc_s0rel_value
	mov	_uart_configure_auto_baud_calc_sloc0_1_0,dpl
	mov	(_uart_configure_auto_baud_calc_sloc0_1_0 + 1),dph
	pop	ar1
	pop	ar2
;	src/uart_configure_auto_baud_calc.c:67: calc_br_with_smod_cleared = uart_calc_actual_baud_rate_from_s0rel(s0rel_with_smod_cleared, false);
	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	push	ar2
	push	ar1
	lcall	_uart_calc_actual_baud_rate_from_s0rel
	mov	_uart_configure_auto_baud_calc_sloc1_1_0,dpl
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),dph
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),b
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
;	src/uart_configure_auto_baud_calc.c:68: calc_br_with_smod_set = uart_calc_actual_baud_rate_from_s0rel(s0rel_with_smod_set, true);
	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_uart_configure_auto_baud_calc_sloc0_1_0
	mov	dph,(_uart_configure_auto_baud_calc_sloc0_1_0 + 1)
	lcall	_uart_calc_actual_baud_rate_from_s0rel
	mov	_uart_configure_auto_baud_calc_sloc2_1_0,dpl
	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 1),dph
	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 2),b
	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 3),a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/uart_configure_auto_baud_calc.c:71: error_calc_br_with_smod_cleared = (calc_br_with_smod_cleared > baud_rate) ? (calc_br_with_smod_cleared - baud_rate) : (baud_rate - calc_br_with_smod_cleared);
	clr	c
	mov	a,r3
	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
	jnc	00115$
	mov	a,_uart_configure_auto_baud_calc_sloc1_1_0
	clr	c
	subb	a,r3
	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
	subb	a,r4
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
	subb	a,r5
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
	subb	a,r6
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
	sjmp	00116$
00115$:
	mov	a,r3
	clr	c
	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
00116$:
;	src/uart_configure_auto_baud_calc.c:72: error_calc_br_with_smod_set = (calc_br_with_smod_set > baud_rate) ? (calc_br_with_smod_set - baud_rate) : (baud_rate - calc_br_with_smod_set);
	clr	c
	mov	a,r3
	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
	jnc	00117$
	mov	a,_uart_configure_auto_baud_calc_sloc2_1_0
	clr	c
	subb	a,r3
	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
	subb	a,r4
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
	subb	a,r5
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
	subb	a,r6
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
	sjmp	00118$
00117$:
	mov	a,r3
	clr	c
	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
00118$:
;	src/uart_configure_auto_baud_calc.c:75: if(error_calc_br_with_smod_cleared < error_calc_br_with_smod_set)
	clr	c
	mov	a,_uart_configure_auto_baud_calc_sloc3_1_0
	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
	jnc	00102$
;	src/uart_configure_auto_baud_calc.c:77: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_CLEAR),
	mov	ar6,r7
	anl	ar6,#0xFB
;	src/uart_configure_auto_baud_calc.c:78: s0rel_with_smod_cleared);
	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	ljmp	_uart_configure_manual_baud_calc
00102$:
;	src/uart_configure_auto_baud_calc.c:82: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_SET),
	mov	ar6,r7
	mov	a,#0xFB
	anl	a,r6
	orl	a,#0x04
	mov	r6,a
;	src/uart_configure_auto_baud_calc.c:83: s0rel_with_smod_set);
	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
	mov	a,_uart_configure_auto_baud_calc_sloc0_1_0
	movx	@dptr,a
	mov	a,(_uart_configure_auto_baud_calc_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	ljmp	_uart_configure_manual_baud_calc
00108$:
;	src/uart_configure_auto_baud_calc.c:91: th1_with_smod_cleared = uart_calc_th1_value(baud_rate, 0);
	mov	dptr,#_uart_configure_auto_baud_calc_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_uart_calc_th1_value_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_uart_calc_th1_value
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	src/uart_configure_auto_baud_calc.c:92: th1_with_smod_set = uart_calc_th1_value(baud_rate, 1);
	mov	dptr,#_uart_calc_th1_value_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_uart_calc_th1_value
	mov	r1,dpl
	pop	ar2
;	src/uart_configure_auto_baud_calc.c:95: calc_br_with_smod_cleared = uart_calc_actual_baud_rate_from_th1(th1_with_smod_cleared, false);
	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r2
	push	ar2
	push	ar1
	lcall	_uart_calc_actual_baud_rate_from_th1
	mov	_uart_configure_auto_baud_calc_sloc3_1_0,dpl
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),dph
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),b
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
	pop	ar1
;	src/uart_configure_auto_baud_calc.c:96: calc_br_with_smod_set = uart_calc_actual_baud_rate_from_th1(th1_with_smod_set, true);
	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r1
	push	ar1
	lcall	_uart_calc_actual_baud_rate_from_th1
	mov	_uart_configure_auto_baud_calc_sloc2_1_0,dpl
	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 1),dph
	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 2),b
	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 3),a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/uart_configure_auto_baud_calc.c:99: error_calc_br_with_smod_cleared = (calc_br_with_smod_cleared > baud_rate) ? (calc_br_with_smod_cleared - baud_rate) : (baud_rate - calc_br_with_smod_cleared);
	clr	c
	mov	a,r3
	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
	jnc	00119$
	mov	a,_uart_configure_auto_baud_calc_sloc3_1_0
	clr	c
	subb	a,r3
	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
	subb	a,r4
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
	subb	a,r5
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
	subb	a,r6
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
	sjmp	00120$
00119$:
	mov	a,r3
	clr	c
	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
00120$:
;	src/uart_configure_auto_baud_calc.c:100: error_calc_br_with_smod_set = (calc_br_with_smod_set > baud_rate) ? (calc_br_with_smod_set - baud_rate) : (baud_rate - calc_br_with_smod_set);
	clr	c
	mov	a,r3
	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
	jnc	00121$
	mov	a,_uart_configure_auto_baud_calc_sloc2_1_0
	clr	c
	subb	a,r3
	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
	subb	a,r4
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
	subb	a,r5
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
	subb	a,r6
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
	sjmp	00122$
00121$:
	mov	a,r3
	clr	c
	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
00122$:
;	src/uart_configure_auto_baud_calc.c:103: if(error_calc_br_with_smod_cleared < error_calc_br_with_smod_set)
	clr	c
	mov	a,_uart_configure_auto_baud_calc_sloc1_1_0
	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
	jnc	00105$
;	src/uart_configure_auto_baud_calc.c:105: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_CLEAR),
	mov	ar6,r7
	anl	ar6,#0xFB
;	src/uart_configure_auto_baud_calc.c:106: (uint16_t)th1_with_smod_cleared);
	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
	mov	a,r2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	ljmp	_uart_configure_manual_baud_calc
00105$:
;	src/uart_configure_auto_baud_calc.c:110: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_SET),
	mov	a,#0xFB
	anl	a,r7
	orl	a,#0x04
	mov	r7,a
;	src/uart_configure_auto_baud_calc.c:111: (uint16_t)th1_with_smod_set);
	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
	mov	a,r1
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	ljmp	_uart_configure_manual_baud_calc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
