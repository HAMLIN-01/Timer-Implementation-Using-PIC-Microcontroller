opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNROOT	_main
	FNCALL	intlevel1,_timer_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_value
	global	_PORTD
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTD	set	8
	global	_TMR0
_TMR0	set	1
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_TMR0IE
_TMR0IE	set	93
	global	_TMR0IF
_TMR0IF	set	90
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISD
_TRISD	set	136
	file	"pictimer.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_value:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_timer_isr
?_timer_isr:	; 0 bytes @ 0x0
	global	??_timer_isr
??_timer_isr:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x4
;;Data sizes: Strings 0, constant 0, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       5
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _timer_isr in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _timer_isr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _timer_isr in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _timer_isr in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _timer_isr in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (1) _timer_isr                                            4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; _timer_isr (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       5       1       35.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       5       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       5      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "C:\Users\HP\OneDrive\Documents\PIC\TIMER\pictimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\HP\OneDrive\Documents\PIC\TIMER\pictimer.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2]
	line	20
	
l1071:	
;pictimer.c: 20: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	22
	
l1073:	
;pictimer.c: 22: OPTION_REG=(1<<2);
	movlw	(04h)
	movwf	(129)^080h	;volatile
	line	23
	
l1075:	
;pictimer.c: 23: TMR0=100;
	movlw	(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	24
	
l1077:	
;pictimer.c: 24: TMR0IE=1;
	bsf	(93/8),(93)&7
	line	25
	
l1079:	
;pictimer.c: 25: GIE=1;
	bsf	(95/8),(95)&7
	line	26
	
l1081:	
;pictimer.c: 26: PEIE=1;
	bsf	(94/8),(94)&7
	goto	l1083
	line	28
;pictimer.c: 28: while(1)
	
l691:	
	line	30
	
l1083:	
;pictimer.c: 29: {
;pictimer.c: 30: PORTD = value;
	movf	(_value),w
	movwf	(8)	;volatile
	goto	l1083
	line	31
	
l692:	
	line	28
	goto	l1083
	
l693:	
	line	32
	
l694:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_timer_isr
psect	text55,local,class=CODE,delta=2
global __ptext55
__ptext55:

;; *************** function _timer_isr *****************
;; Defined at:
;;		line 8 in file "C:\Users\HP\OneDrive\Documents\PIC\TIMER\pictimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text55
	file	"C:\Users\HP\OneDrive\Documents\PIC\TIMER\pictimer.c"
	line	8
	global	__size_of_timer_isr
	__size_of_timer_isr	equ	__end_of_timer_isr-_timer_isr
	
_timer_isr:	
	opt	stack 7
; Regs used in _timer_isr: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_timer_isr+0)
	movf	fsr0,w
	movwf	(??_timer_isr+1)
	movf	pclath,w
	movwf	(??_timer_isr+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_timer_isr+3)
	ljmp	_timer_isr
psect	text55
	line	9
	
i1l1063:	
;pictimer.c: 9: if(TMR0IF==1)
	btfss	(90/8),(90)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l688
u1_20:
	line	11
	
i1l1065:	
;pictimer.c: 10: {
;pictimer.c: 11: value=~value;
	comf	(_value),f
	line	12
	
i1l1067:	
;pictimer.c: 12: TMR0=101;
	movlw	(065h)
	movwf	(1)	;volatile
	line	14
	
i1l1069:	
;pictimer.c: 14: TMR0IF=0;
	bcf	(90/8),(90)&7
	goto	i1l688
	line	15
	
i1l687:	
	line	16
	
i1l688:	
	movf	(??_timer_isr+3),w
	movwf	btemp+1
	movf	(??_timer_isr+2),w
	movwf	pclath
	movf	(??_timer_isr+1),w
	movwf	fsr0
	swapf	(??_timer_isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_timer_isr
	__end_of_timer_isr:
;; =============== function _timer_isr ends ============

	signat	_timer_isr,88
psect	text56,local,class=CODE,delta=2
global __ptext56
__ptext56:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
