; Source code created by SMS Examine V1.2a
; Size: 262144 bytes

.MEMORYMAP
SLOTSIZE $4000
SLOT 0 $0000
SLOT 1 $4000
SLOT 2 $8000
DEFAULTSLOT 2
.ENDME

.ROMBANKMAP
BANKSTOTAL 16
BANKSIZE $4000
BANKS 16
.ENDRO

; RAM access
.DEFINE RingCounter $D2A9
.DEFINE RAM_D305 $D305 ; byte
.DEFINE RAM_D300 $D300 ; byte
.DEFINE RAM_D224 $D224 ; byte
.DEFINE currentact $D238 ; byte
.DEFINE RAM_D239 $D239 ; byte
.DEFINE RAM_D2F8 $D2F8 ; byte
.DEFINE LivesCounter $D240 ; byte
.DEFINE RAM_D216 $D216 ; byte
.DEFINE RAM_D217 $D217 ; byte word
.DEFINE RAM_D236 $D236 ;      word
.DEFINE RAM_D215 $D215 ; byte word
.DEFINE RAM_D211 $D211 ;      word
.DEFINE RAM_D213 $D213 ; byte word
.DEFINE RAM_D2D8 $D2D8 ;      word
.DEFINE sonic_horizontal_pos $D3FF; Sonic's horizontal postion in a level
.DEFINE sonic_vertical_pos   $D402
.DEFINE RAM_DC10 $DC10 ;      word
.DEFINE RAM_DC12 $DC12 ;      word
.DEFINE RAM_DC07 $DC07 ; byte
.DEFINE RAM_DC05 $DC05 ; byte
.DEFINE RAM_DC0E $DC0E ;      word
.DEFINE RAM_DC24 $DC24 ;      word
.DEFINE RAM_DC1A $DC1A ;      word
.DEFINE RAM_DC22 $DC22 ;      word
.DEFINE RAM_DC18 $DC18 ;      word
.DEFINE RAM_DC20 $DC20 ;      word
.DEFINE RAM_DC16 $DC16 ;      word
.DEFINE RAM_DC1E $DC1E ;      word
.DEFINE RAM_DC14 $DC14 ;      word
.DEFINE RAM_DC08 $DC08 ;      word
.DEFINE RAM_DC0A $DC0A ;      word
.DEFINE RAM_DC1C $DC1C ;      word
.DEFINE RAM_D2AF $D2AF ;      word
.DEFINE RAM_D257 $D257 ;      word
.DEFINE RAM_D2AD $D2AD ;      word
.DEFINE RAM_D254 $D254 ;      word
.DEFINE RAM_D2AB $D2AB ;      word
.DEFINE RAM_D2AC $D2AC ; byte
.DEFINE RAM_D28D $D28D ; byte
.DEFINE RAM_D28B $D28B ;      word
.DEFINE RAM_D289 $D289 ;      word
.DEFINE RAM_D2B5 $D2B5 ; byte
.DEFINE RAM_D230 $D230 ; byte
.DEFINE RAM_D20F $D20F ; byte word
.DEFINE RAM_D24C $D24C ; byte
.DEFINE RAM_D24B $D24B ; byte
.DEFINE RAM_D21A $D21A ; byte
.DEFINE RAM_D22D $D22D ; byte
.DEFINE RAM_D2A7 $D2A7 ;      word
.DEFINE RAM_D2A5 $D2A5 ;      word
.DEFINE RAM_D22C $D22C ; byte word
.DEFINE RAM_D219 $D219 ; byte
.DEFINE RAM_D242 $D242 ; byte
.DEFINE RAM_D2DC $D2DC ; byte
.DEFINE RAM_D241 $D241 ; byte
.DEFINE RAM_D22F $D22F ; byte word
.DEFINE RAM_DC04 $DC04 ; byte
.DEFINE RAM_DC06 $DC06 ; byte
.DEFINE RAM_DD02 $DD02 ; byte
.DEFINE RAM_DCD5 $DCD5 ; byte
.DEFINE RAM_DCA8 $DCA8 ; byte
.DEFINE RAM_DC7B $DC7B ; byte
.DEFINE RAM_DC4E $DC4E ; byte


.BANK 0 SLOT 0
.ORG $0000

_START:
	di
	im   1
_LABEL_3_2:
	in   a, ($7E)
	cp   $B0
	jr   nz, _LABEL_3_2
	jp   _LABEL_25E_3


; Data from C to 1F (20 bytes)
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $C3, $AA, $02, $00
.db $00, $00, $00, $00

_RST_20H:
	jp   _LABEL_2C0_7


; Data from 23 to 37 (21 bytes)
.db $00, $00, $00, $00, $00, $C3, $D1, $02, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00

_IRQ_HANDLER:
	jp   _LABEL_3B_11

_LABEL_3B_11:
	di
	push af
	push hl
	push de
	push bc
	in   a, ($BF)
	bit  7, (iy+6)
	jr   z, _LABEL_74_12
	ld   a, (RAM_D241)
	and  a
	jp   nz, _LABEL_17C_13
	ld   a, (RAM_D2DC)
	and  a
	jr   z, _LABEL_74_12
	cp   $FF
	jr   z, _LABEL_74_12
	ld   (RAM_D242), a
	ld   a, $0A
	out  ($BF), a
	ld   a, $8A
	out  ($BF), a
	ld   a, (RAM_D219)
	or   $10
	out  ($BF), a
	ld   a, $80
	out  ($BF), a
	ld   a, $03
	ld   (RAM_D241), a
_LABEL_74_12:
	push ix
	push iy
	ld   hl, (RAM_D22F)
	push hl
	bit  0, (iy+0)
	call nz, _LABEL_148_14
	bit  0, (iy+0)
	call z, _LABEL_B8_23
	ei
	ld   a, $03
	ld   ($FFFE), a
	ld   (RAM_D22F), a
	call _LABEL_C000_52
	call _LABEL_5CA_91
	bit  4, (iy+3)
	call z, _LABEL_B3_94
	call _LABEL_663_95
	pop  hl
	ld   ($FFFE), hl
	ld   (RAM_D22F), hl
	pop  iy
	pop  ix
	pop  bc
	pop  de
	pop  hl
	pop  af
	ret

_LABEL_B3_94:
	res  5, (iy+3)
	ret

_LABEL_B8_23:
	ld   a, (RAM_D21A)
	and  $BF
	out  ($BF), a
	ld   a, $81
	out  ($BF), a
	ld   a, (RAM_D24B)
	neg
	out  ($BF), a
	ld   a, $88
	out  ($BF), a
	ld   a, (RAM_D24C)
	out  ($BF), a
	ld   a, $89
	out  ($BF), a
	bit  5, (iy+0)
	call nz, _LABEL_819_24
	call _LABEL_13A_36
	ld   a, $01
	ld   ($FFFE), a
	ld   (RAM_D22F), a
	ld   a, $02
	ld   ($FFFF), a
	ld   (RAM_D230), a
	bit  1, (iy+0)
	call nz, _LABEL_307_39
	ld   a, $08
	ld   ($FFFE), a
	ld   (RAM_D22F), a
	ld   a, $09
	ld   ($FFFF), a
	ld   (RAM_D230), a
	bit  7, (iy+7)
	call nz, _LABEL_31BA_45
	ld   a, $01
	ld   ($FFFE), a
	ld   (RAM_D22F), a
	ld   a, $02
	ld   ($FFFF), a
	ld   (RAM_D230), a
	ld   a, (RAM_D2AC)
	and  $80
	call z, _LABEL_3280_49
	ld   a, $FF
	ld   (RAM_D2AC), a
	ld   a, (RAM_D21A)
	out  ($BF), a
	ld   a, $81
	out  ($BF), a
	set  0, (iy+0)
	ret

_LABEL_13A_36:
	bit  7, (iy+6)
	jr   nz, _LABEL_144_37
_LABEL_140_15:
	call _LABEL_54E_19
	ret

_LABEL_144_37:
	call Load_Labyrinth_Underwater_Palettes
	ret

_LABEL_148_14:
	bit  7, (iy+6)
	ret  z

Load_Labyrinth_Underwater_Palettes:
	ld   a, (RAM_D2DC)
	and  a
	jr   z, _LABEL_140_15
	cp   $FF
	jr   nz, _LABEL_140_15
	ld   hl, $01DE;Get Labyrinth act 1 and 2's palette
	bit  4, (iy+7)
	jr   z, _LABEL_163_16
	ld   hl, $021E;Get Labyrinth Act 3's palette
_LABEL_163_16:
	call _LABEL_167_17
	ret

_LABEL_167_17:
	ld   b, $20
	ld   a, $00
	out  ($BF), a
	ld   a, $C0
	out  ($BF), a
_LABEL_171_18:
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	djnz _LABEL_171_18
	ret

_LABEL_17C_13:
	cp   $01
	jr   z, _LABEL_19F_96
	cp   $02
	jr   z, _LABEL_198_97
	dec  a
	ld   (RAM_D241), a
	in   a, ($7E)
	ld   c, a
	ld   a, (RAM_D242)
	sub  c
	out  ($BF), a
	ld   a, $8A
	out  ($BF), a
	jp   _LABEL_1D8_98

_LABEL_198_97:
	dec  a
	ld   (RAM_D241), a
	jp   _LABEL_1D8_98

_LABEL_19F_96:
	dec  a
	ld   (RAM_D241), a
	ld   a, $00
	out  ($BF), a
	ld   a, $C0
	out  ($BF), a
	ld   b, $10
	ld   hl, $01DE
	bit  4, (iy+7)
	jr   z, _LABEL_1B9_99
	ld   hl, $021E
_LABEL_1B9_99:
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	nop
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	nop
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	ld   a, (hl)
	inc  hl
	out  ($BE), a
	djnz _LABEL_1B9_99
	ld   a, (RAM_D219)
	and  $EF
	out  ($BF), a
	ld   a, $80
	out  ($BF), a
_LABEL_1D8_98:
	pop  bc
	pop  de
	pop  hl
	pop  af
	ei
	ret


.incbin "Palettes/Labyrinth_Underwater_Palette.bin"

_LABEL_25E_3:
	ld   a, $80
	ld   ($FFFC), a
	ld   a, $00
	ld   ($FFFD), a
	ld   a, $01
	ld   ($FFFE), a
	ld   a, $02
	ld   ($FFFF), a
	ld   hl, $C000
	ld   de, $C001
	ld   bc, $1FEF
	ld   (hl), l
	ldir
	ld   sp, hl
	ld   hl, $02E4
	ld   de, $D219
	ld   b, $0B
	ld   c, $8B
_LABEL_289_4:
	ld   a, (hl)
	ld   (de), a
	inc  hl
	inc  de
	out  ($BF), a
	ld   a, c
	sub  b
	out  ($BF), a
	djnz _LABEL_289_4
	ld   hl, $3F00
	ld   bc, $0040
	ld   a, $E0
	call _LABEL_5B8_5
	call _LABEL_2C0_7
	ld   iy, $D200
	jp   _LABEL_1357_100


; Data from 2AA to 2BF (22 bytes)
.db $F3, $F5, $3E, $03, $32, $FE, $FF, $F1, $32, $D3, $D2, $CD, $12, $40, $3A, $2F
.db $D2, $32, $FE, $FF, $FB, $C9

_LABEL_2C0_7:
	di
	ld   a, $03
	ld   ($FFFE), a
	call _LABEL_C006_8
	ld   a, (RAM_D22F)
	ld   ($FFFE), a
	ei
	ret


; Data from 2D1 to 2EE (30 bytes)
.db $F3, $F5, $3E, $03, $32, $FE, $FF, $F1, $CD, $15, $40, $3A, $2F, $D2, $32, $FE
.db $FF, $FB, $C9, $26, $A2, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $FF

_LABEL_2EF_104:
	bit  0, (iy+0)
	jr   z, _LABEL_2EF_104

	ret


; Data from 2F6 to 306 (17 bytes)
.db $FD, $CB, $00, $D6, $22, "&", $D2, $ED, "S(", $D2, $ED, "C*", $D2, $C9, $C9

_LABEL_307_39:
	ld   a, $00
	out  ($BF), a
	ld   a, $3F
	or   $40
	out  ($BF), a
	ld   b, (iy+10)
	ld   hl, $D001
	ld   de, $0003
	ld   a, b
	and  a
	jr   z, _LABEL_324_40
_LABEL_31E_41:
	ld   a, (hl)
	out  ($BE), a
	add  hl, de
	djnz _LABEL_31E_41
_LABEL_324_40:
	ld   a, (RAM_D2B5)
	ld   b, a
	ld   a, (iy+10)
	ld   c, a
	cp   b
	jr   nc, _LABEL_338_42
	ld   a, b
	sub  c
	ld   b, a
_LABEL_332_43:
	ld   a, $E0
	out  ($BE), a
	djnz _LABEL_332_43
_LABEL_338_42:
	ld   a, c
	and  a
	ret  z

	ld   hl, $D000
	ld   b, (iy+10)
	ld   a, $80
	out  ($BF), a
	ld   a, $3F
	or   $40
	out  ($BF), a
_LABEL_34B_44:
	ld   a, (hl)
	out  ($BE), a
	inc  l
	inc  l
	ld   a, (hl)
	out  ($BE), a
	inc  l
	djnz _LABEL_34B_44
	ld   a, (iy+10)
	ld   (RAM_D2B5), a
	ld   (iy+10), b
	ret


; Data from 360 to 3CD (110 bytes)
.db $F3, $7B, $D3, $BF, $7A, $F6, $40, $D3, $BF, $FB, $7E, $D3, $BE, $23, $0B, $78
.db $B1, $C2, $6A, $03, $C9, $F3, $F5, $7B, $D3, $BF, $7A, $F6, $40, $D3, $BF, $F1
.db $ED, $5B, $2F, $D2, $D5, $32, $FE, $FF, $32, $2F, $D2, $3C, $32, $FF, $FF, $32
.db $30, $D2, $FB, $7E, $2F, $5F, $7E, $BB, $28, $0C, $D3, $BE, $5F, $23, $0B, $78
.db $B1, $C2, $96, $03, $18, $18, $57, $23, $0B, $78, $B1, $28, $11, $7A, $5E, $D3
.db $BE, $1D, $00, $00, $C2, $AF, $03, $23, $0B, $78, $B1, $C2, $93, $03, $F3, $D1
.db $ED, $53, $2F, $D2, $7B, $32, $FE, $FF, $7A, $32, $FF, $FF, $FB, $C9

_LABEL_3CE_105:
	di
_LABEL_3CF_107:
	push af
	ld   a, h
	cp   $40
	jr   c, _LABEL_3DD_106
	sub  $40
	ld   h, a
	pop  af
	inc  a
	jp   _LABEL_3CF_107

_LABEL_3DD_106:
	ld   a, e
	out  ($BF), a
	ld   a, d
	or   $40
	out  ($BF), a
	pop  af
	ld   de, $4000
	add  hl, de
	ld   de, (RAM_D22F)
	push de
	ld   ($FFFE), a
	ld   (RAM_D22F), a
	inc  a
	ld   ($FFFF), a
	ld   (RAM_D230), a
	bit  1, (iy+9)
	jr   nz, _LABEL_403_108
	ei
_LABEL_403_108:
	ld   (RAM_D213), hl
	inc  hl
	inc  hl
	ld   e, (hl)
	inc  hl
	ld   d, (hl)
	inc  hl
	push de
	ld   e, (hl)
	inc  hl
	ld   d, (hl)
	push de
	inc  hl
	ld   c, (hl)
	inc  hl
	ld   b, (hl)
	inc  hl
	ld   (RAM_D211), bc
	ld   (RAM_D215), hl
	exx
	ld   bc, (RAM_D213)
	ld   e, c
	ld   d, b
	pop  hl
	add  hl, bc
	ld   (RAM_D20F), hl
	ld   c, l
	ld   b, h
	pop  hl
	add  hl, de
	ex   de, hl
	exx
_LABEL_42F_110:
	ld   hl, (RAM_D211)
	xor  a
	sbc  hl, bc
	push hl
	ld   d, a
	ld   a, l
	and  $07
	ld   e, a
	ld   hl, $04C2
	add  hl, de
	ld   a, (hl)
	pop  de
	srl  d
	rr   e
	srl  d
	rr   e
	srl  d
	rr   e
	ld   hl, (RAM_D215)
	add  hl, de
	ld   e, a
	ld   a, (hl)
	and  e
	jr   nz, _LABEL_477_109
	exx
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	push hl
	pop  hl
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	push hl
	pop  hl
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	push hl
	pop  hl
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	exx
	dec  bc
	ld   a, b
	or   c
	jp   nz, _LABEL_42F_110
	jp   _LABEL_4AC_111

_LABEL_477_109:
	exx
	ld   a, (de)
	inc  de
	exx
	ld   h, $00
	cp   $F0
	jr   c, _LABEL_488_113
	sub  $F0
	ld   h, a
	exx
	ld   a, (de)
	inc  de
	exx
_LABEL_488_113:
	ld   l, a
	add  hl, hl
	add  hl, hl
	ld   de, (RAM_D20F)
	add  hl, de
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	push hl
	pop  hl
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	push hl
	pop  hl
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	push hl
	pop  hl
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	dec  bc
	ld   a, b
	or   c
	jp   nz, _LABEL_42F_110
_LABEL_4AC_111:
	bit  1, (iy+9)
	jr   nz, _LABEL_4B3_112
	di
_LABEL_4B3_112:
	pop  de
	ld   (RAM_D22F), de
	ld   ($FFFE), de
	ei
	res  1, (iy+9)
	ret


ld      bc,$0402
ex      af,af'
djnz    label_4e8h            ; (+20h)
ld      b,b
add     a,b
label_4cah:
di      
push    af
ld      a,e
out     ($bf),a
ld      a,d
or      $40
out     ($bf),a
pop     af
ld      de,($d22f)
push    de
ld      ($fffe),a
ld      ($d22f),a
inc     a
ld      ($ffff),a
ld      ($d230),a
 ei      
label_4e8h:      
 ld      a,(hl)
cpl     
ld      e,a
label_04ebh:     
ld      a,(hl)
 cp      e
jr      z,label_0504h          ; (+15h)
cp      $ff
jr      z,label_0531h          ; (+3eh)
 out     ($be),a
ld      e,a
ld      a,($d20f)
out     ($be),a
inc     hl
dec     bc
ld      a,b
 or      c
jp      nz,label_04ebh
jr      label_0525h            ; (+21h)
label_0504h:     
ld      d,a
inc     hl
dec     bc
ld      a,b
or      c
jr      z,label_0525h          ; (+1ah)
ld      a,d
ld      e,(hl)
cp      $ff
jr      z,label_0540h          ; (+2fh)
label_511h:   
out     ($be),a
push    af
ld      a,($d20f)
out     ($be),a
pop     af
dec     e
jp      nz,label_511h
label_051eh:    
inc     hl
dec     bc
ld      a,b
or      c
jp      nz,label_4e8h
label_0525h:      
 di      
pop     de
ld      ($d22f),de
ld      ($fffe),de
ei      
ret     
label_0531h:
ld      e,a
in      a,($be)
nop     
inc     hl
dec     bc
in      a,($be)
ld      a,b
or      c
jp      nz,label_04ebh
jr      label_0525h            ; (-1bh)
label_0540h:     
in      a,($be)
push    af
pop     af
in      a,($be)
nop     
dec     e
jp      nz,label_0540h
jp      label_051eh


_LABEL_54E_19:
	ld   a, $08
	ld   ($FFFE), a
	ld   (RAM_D22F), a
	ld   a, $00
	out  ($BF), a
	ld   a, $C0
	out  ($BF), a
	ld   a, (RAM_D22C)
	ld   de, (RAM_D2A5)
	ld   b, $10
	call _LABEL_58C_20
	ld   hl, (RAM_D2A7)
	ld   b, $01
	call _LABEL_5AD_22
	ld   a, (RAM_D22D)
	ld   de, $0002
	ld   b, $0F
	call _LABEL_58C_20
	ld   hl, $0000
	ld   (RAM_D2A5), hl
	ld   a, $01
	ld   ($FFFE), a
	ld   (RAM_D22F), a
	ret

_LABEL_58C_20:
	ld   hl, $D3BD
	cp   $FF
	jr   z, _LABEL_5AA_21
	ld   hl, $D3DF
	cp   $FE
	jr   z, _LABEL_5AA_21
	push bc
	add  a, a
	ld   l, a
	ld   h, $00
	ld   bc, $7400
	add  hl, bc
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	add  hl, bc
	add  hl, de
	pop  bc
_LABEL_5AA_21:
	ld   (RAM_D2A7), hl
_LABEL_5AD_22:
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	djnz _LABEL_5AD_22
	ret

_LABEL_5B8_5:
	ld   e, a
	ld   a, l
	out  ($BF), a
	ld   a, h
	or   $40
	out  ($BF), a
_LABEL_5C1_6:
	ld   a, e
	out  ($BE), a
	dec  bc
	ld   a, b
	or   c
	jr   nz, _LABEL_5C1_6
	ret

_LABEL_5CA_91:
	ld   e, $40
	bit  1, (iy+14)
	jr   z, _LABEL_5D4_92
	ld   e, $C0
_LABEL_5D4_92:
	res  1, (iy+14)
	in   a, ($00)
	and  $80
	jr   nz, _LABEL_5E2_93
	set  1, (iy+14)
_LABEL_5E2_93:
	ld   d, a
	in   a, ($DC)
	and  $7F
	or   e
	or   d
	ld   (iy+3), a
	ret

_LABEL_5ED_132:
	ld   c, (hl)
	inc  hl
	ld   a, (hl)
	inc  hl
	rrca
	rrca
	ld   e, a
	and  $3F
	ld   d, a
	ld   a, e
	and  $C0
	ld   e, a
	ld   b, $00
	ex   de, hl
	sla  c
	add  hl, bc
	ld   bc, $3800
	add  hl, bc
	di
	ld   a, l
	out  ($BF), a
	ld   a, h
	or   $40
	out  ($BF), a
	ei
_LABEL_60F_133:
	ld   a, (de)
	cp   $FF
	ret  z

	out  ($BE), a
	push af
	pop  af
	ld   a, (RAM_D20F)
	out  ($BE), a
	inc  de
	djnz _LABEL_60F_133
	ret

_LABEL_620_101:
	ld   hl, $D000
	ld   e, l
	ld   d, h
	ld   bc, $00BD
	ld   a, $E0
	ld   (de), a
	inc  de
	ld   (de), a
	inc  de
	inc  de
	ldir
	ld   (iy+10), $40
	xor  a
	ld   (RAM_D2B5), a
	ret


; Data from 63A to 662 (41 bytes)
label_063ah:
xor     a
ld      b,$07
ex      de,hl
ld      l,a
ld      h,a
-:
rl      c
jp      nc,+
add     hl,de
+:     
add     hl,hl
djnz    -            ; (-09h)
or      c
ret     z

add     hl,de
ret
     
label_064dh:
xor     a
ld      b,$10
-:
rl      l
rl      h
rla     
cp      c
jp      c,+
sub     c
+:      
ccf     
rl      e
rl      d
djnz    -            ; (-11h)
ex      de,hl
ret 


_LABEL_663_95:
	push hl
	push de
	ld   hl, (RAM_D2D8)
	ld   e, l
	ld   d, h
	add  hl, de
	add  hl, de
	ld   a, l
	add  a, h
	ld   h, a
	add  a, l
	ld   l, a
	ld   de, $0054
	add  hl, de
	ld   (RAM_D2D8), hl
	ld   a, h
	pop  de
	pop  hl
	ret


; Data from 67C to 818 (413 bytes)
.db $ED, $4B, $4B, $D2, $2A, $54, $D2, $ED, $5B, $69, $D2, $A7, $ED, $52, $38, $0A
.db $7D, $81, $4F, $FD, $CB, $00, $B6, $C3, $9D, $06, $7D, $81, $4F, $FD, $CB, $00
.db $F6, $2A, $57, $D2, $ED, $5B, $6B, $D2, $A7, $ED, $52, $38, $10, $7D, $80, $FE
.db $E0, $38, $02, $C6, $20, $47, $FD, $CB, $00, $BE, $C3, $C6, $06, $7D, $80, $FE
.db $E0, $38, $02, $D6, $20, $47, $FD, $CB, $00, $FE, $ED, $43, $4B, $D2, $2A, $54
.db $D2, $CB, $25, $CB, $14, $CB, $25, $CB, $14, $CB, $25, $CB, $14, $4C, $2A, $57
.db $D2, $CB, $25, $CB, $14, $CB, $25, $CB, $14, $CB, $25, $CB, $14, $44, $ED, $43
.db $51, $D2, $2A, $54, $D2, $22, $69, $D2, $2A, $57, $D2, $22, $6B, $D2, $C9, $FD
.db $CB, $00, $6E, $C8, $F3, $3E, $04, $32, $FE, $FF, $32, $2F, $D2, $3E, $05, $32
.db $FF, $FF, $32, $30, $D2, $FB, $3A, $D5, $D2, $87, $4F, $06, $00, $21, $3B, $34
.db $09, $7E, $23, $66, $6F, $22, $11, $D2, $FD, $CB, $02, $46, $CA, $B0, $07, $FD
.db $CB, $00, $76, $20, $07, $06, $00, $0E, $08, $C3, $49, $07, $3A, $4B, $D2, $E6
.db $1F, $C6, $08, $0F, $0F, $0F, $0F, $0F, $E6, $01, $06, $00, $4F, $CD, $13, $09
.db $3A, $4B, $D2, $FD, $CB, $00, $76, $28, $02, $C6, $08, $E6, $1F, $CB, $3F, $CB
.db $3F, $CB, $3F, $4F, $06, $00, $ED, $43, $0F, $D2, $D9, $11, $80, $D1, $D9, $ED
.db $5B, $32, $D2, $06, $07, $7E, $D9, $4F, $06, $00, $2A, $11, $D2, $09, $07, $07
.db $07, $07, $4F, $E6, $0F, $47, $79, $A8, $4F, $7E, $0F, $0F, $0F, $E6, $10, $2A
.db $0F, $D2, $09, $ED, $4B, $49, $D2, $09, $01, $04, $00, $ED, $A0, $12, $1C, $09
.db $ED, $A0, $12, $1C, $0C, $09, $ED, $A0, $12, $1C, $0C, $09, $ED, $A0, $12, $1C
.db $D9, $19, $10, $C1, $FD, $CB, $02, $4E, $CA, $18, $08, $FD, $CB, $00, $7E, $20
.db $07, $06, $06, $0E, $00, $C3, $C7, $07, $06, $00, $48, $CD, $13, $09, $3A, $4C
.db $D2, $E6, $1F, $CB, $3F, $E6, $FC, $4F, $06, $00, $ED, $43, $0F, $D2, $D9, $11
.db $00, $D1, $D9, $06, $09, $7E, $D9, $4F, $06, $00, $2A, $11, $D2, $09, $07, $07
.db $07, $07, $4F, $E6, $0F, $47, $79, $A8, $4F, $7E, $0F, $0F, $0F, $E6, $10, $2A
.db $0F, $D2, $09, $ED, $4B, $49, $D2, $09, $ED, $A0, $12, $1C, $ED, $A0, $12, $1C
.db $ED, $A0, $12, $1C, $ED, $A0, $12, $1C, $D9, $23, $10, $C9, $C9

_LABEL_819_24:
	bit  0, (iy+2)
	jp   z, _LABEL_887_25
	exx
	push hl
	push de
	push bc
	ld   a, (RAM_D24C)
	and  $F8
	ld   b, $00
	add  a, a
	rl   b
	add  a, a
	rl   b
	add  a, a
	rl   b
	ld   c, a
	ld   a, (RAM_D24B)
	bit  6, (iy+0)
	jr   z, _LABEL_840_26
	add  a, $08
_LABEL_840_26:
	and  $F8
	srl  a
	srl  a
	add  a, c
	ld   c, a
	ld   hl, $3800
	add  hl, bc
	set  6, h
	ld   bc, $0040
	ld   d, $7F
	ld   e, $07
	exx
	ld   hl, $D180
	ld   a, (RAM_D24C)
	and  $1F
	srl  a
	srl  a
	srl  a
	ld   c, a
	ld   b, $00
	add  hl, bc
	add  hl, bc
	ld   b, $32
	ld   c, $BE
_LABEL_86D_28:
	exx
	ld   a, l
	out  ($BF), a
	ld   a, h
	out  ($BF), a
	add  hl, bc
	ld   a, h
	cp   d
	jp   nc, _LABEL_90E_27
_LABEL_87A_35:
	exx
	outi
	outi
	jp   nz, _LABEL_86D_28
	exx
	pop  bc
	pop  de
	pop  hl
	exx
_LABEL_887_25:
	bit  1, (iy+2)
	jp   z, _LABEL_90D_29
	ld   a, (RAM_D24C)
	ld   b, $00
	srl  a
	srl  a
	srl  a
	bit  7, (iy+0)
	jr   nz, _LABEL_8A1_30
	add  a, $18
_LABEL_8A1_30:
	cp   $1C
	jr   c, _LABEL_8A7_31
	sub  $1C
_LABEL_8A7_31:
	add  a, a
	add  a, a
	add  a, a
	add  a, a
	rl   b
	add  a, a
	rl   b
	add  a, a
	rl   b
	ld   c, a
	ld   a, (RAM_D24B)
	add  a, $08
	and  $F8
	srl  a
	srl  a
	add  a, c
	ld   c, a
	ld   hl, $3800
	add  hl, bc
	set  6, h
	ex   de, hl
	ld   hl, $D100
	ld   a, (RAM_D24B)
	and  $1F
	add  a, $08
	srl  a
	srl  a
	srl  a
	ld   c, a
	ld   b, $00
	add  hl, bc
	add  hl, bc
	ld   a, e
	and  $C0
	ld   (RAM_D20F), a
	ld   a, e
	out  ($BF), a
	and  $3F
	ld   e, a
	ld   a, d
	out  ($BF), a
	ld   b, $3E
	ld   c, $BE
_LABEL_8F0_33:
	bit  6, e
	jr   nz, _LABEL_8FE_32
	inc  e
	inc  e
	outi
	outi
	jp   nz, _LABEL_8F0_33
	ret

_LABEL_8FE_32:
	ld   a, (RAM_D20F)
	out  ($BF), a
	ld   a, d
	out  ($BF), a
_LABEL_906_34:
	outi
	outi
	jp   nz, _LABEL_906_34
_LABEL_90D_29:
	ret

_LABEL_90E_27:
	sub  e
	ld   h, a
	jp   _LABEL_87A_35


; Data from 913 to A7D (363 bytes)
.db $3A, $32, $D2, $07, $38, $0C, $07, $38, $1F, $07, $38, $36, $07, $38, $51, $C3
.db $95, $09, $3A, $52, $D2, $80, $1E, $00, $CB, $3F, $CB, $1B, $57, $3A, $51, $D2
.db $81, $83, $5F, $21, $00, $C0, $19, $C9, $3A, $52, $D2, $80, $1E, $00, $CB, $3F
.db $CB, $1B, $CB, $3F, $CB, $1B, $57, $3A, $51, $D2, $81, $83, $5F, $21, $00, $C0
.db $19, $C9, $3A, $52, $D2, $80, $1E, $00, $CB, $3F, $CB, $1B, $CB, $3F, $CB, $1B
.db $CB, $3F, $CB, $1B, $57, $3A, $51, $D2, $81, $83, $5F, $21, $00, $C0, $19, $C9
.db $3A, $52, $D2, $80, $1E, $00, $CB, $3F, $CB, $1B, $CB, $3F, $CB, $1B, $CB, $3F
.db $CB, $1B, $CB, $3F, $CB, $1B, $57, $3A, $51, $D2, $81, $83, $5F, $21, $00, $C0
.db $19, $C9, $3A, $52, $D2, $80, $57, $3A, $51, $D2, $81, $5F, $21, $00, $C0, $19
.db $C9, $F3, $3E, $04, $32, $FE, $FF, $32, $2F, $D2, $3E, $05, $32, $FF, $FF, $32
.db $30, $D2, $01, $00, $00, $CD, $13, $09, $11, $00, $38, $06, $06, $C5, $E5, $D5
.db $06, $08, $C5, $E5, $D5, $7E, $D9, $5F, $3A, $D5, $D2, $87, $4F, $06, $00, $21
.db $3B, $34, $09, $7E, $23, $66, $6F, $16, $00, $19, $7E, $0F, $0F, $0F, $E6, $10
.db $4F, $D9, $6E, $26, $00, $29, $29, $29, $29, $ED, $4B, $49, $D2, $09, $EB, $06
.db $04, $7D, $D3, $BF, $7C, $F6, $40, $D3, $BF, $1A, $D3, $BE, $13, $D9, $79, $D9
.db $D3, $BE, $00, $00, $1A, $D3, $BE, $13, $D9, $79, $D9, $D3, $BE, $00, $00, $1A
.db $D3, $BE, $13, $D9, $79, $D9, $D3, $BE, $00, $00, $1A, $D3, $BE, $13, $D9, $79
.db $D9, $D3, $BE, $78, $01, $40, $00, $09, $47, $10, $C6, $D1, $E1, $23, $01, $08
.db $00, $EB, $09, $EB, $C1, $10, $8B, $D1, $E1, $ED, $4B, $32, $D2, $09, $EB, $01
.db $00, $01, $09, $EB, $C1, $05, $C2, $C0, $09, $FB, $C9, $11, $00, $C0, $7E, $2F
.db $FD, $77, $01, $7E, $FD, $BE, $01, $28, $0D, $12, $FD, $77, $01, $23, $13, $0B
.db $78, $B1, $C2, $56, $0A, $C9, $0B, $78, $B1, $C8, $7E, $23, $C5, $46, $12, $13
.db $10, $FC, $C1, $23, $0B, $78, $B1, $C2, $51, $0A, $C9

_LABEL_A7E_144:
	ld   hl, $1616
	call _LABEL_A92_145
	ret


; Data from A85 to A91 (13 bytes)
.db $C9, $E5, $21, $16, $16, $22, $2C, $D2, $E1, $CD, $92, $0A, $C9

_LABEL_A92_145:
	ld   (RAM_D215), hl
	ld   a, $08
	ld   ($FFFE), a
	ld   (RAM_D22F), a
	ld   de, $D3BD
	ld   a, (RAM_D22C)
	call _LABEL_AF9_146
	ld   a, (RAM_D22D)
	call _LABEL_AF9_146
	ld   hl, $FEFF
	ld   (RAM_D22C), hl
	ld   c, (iy+10)
	ld   a, (RAM_D21A)
	or   $40
	ld   (RAM_D21A), a
	res  0, (iy+0)
	call _LABEL_2EF_104
	ld   (iy+10), c
	ld   b, $03
_LABEL_AC9_148:
	call _LABEL_B0C_147
	djnz _LABEL_AC9_148
	ld   b, $10
_LABEL_AD0_158:
	push bc
	ld   de, $D3BD
	ld   a, (RAM_D215)
	call _LABEL_B1A_149
	ld   a, (RAM_D216)
	call _LABEL_B1A_149
	ld   b, $04
_LABEL_AE2_157:
	call _LABEL_B0C_147
	djnz _LABEL_AE2_157
	pop  bc
	djnz _LABEL_AD0_158
	ld   hl, (RAM_D215)
	ld   (RAM_D22C), hl
	ld   a, $01
	ld   ($FFFE), a
	ld   (RAM_D22F), a
	ret

_LABEL_AF9_146:
	add  a, a
	ld   l, a
	ld   h, $00
	ld   bc, $7400
	add  hl, bc
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	add  hl, bc
	ld   bc, $0020
	ldir
	ret

_LABEL_B0C_147:
	ld   a, (iy+10)
	res  0, (iy+0)
	call _LABEL_2EF_104
	ld   (iy+10), a
	ret

_LABEL_B1A_149:
	add  a, a
	ld   l, a
	ld   h, $00
	ld   bc, $7400
	add  hl, bc
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	add  hl, bc
	ld   b, $10
_LABEL_B29_156:
	push bc
	ld   a, (hl)
	and  $0F
	ld   c, a
	ld   a, (de)
	and  $0F
	cp   c
	jr   z, _LABEL_B3A_150
	jr   c, _LABEL_B39_151
	dec  a
	jr   _LABEL_B3A_150

_LABEL_B39_151:
	inc  a
_LABEL_B3A_150:
	ld   b, a
	ld   a, (hl)
	and  $F0
	ld   c, a
	ld   a, (de)
	and  $F0
	cp   c
	jr   z, _LABEL_B4D_152
	jr   c, _LABEL_B4B_153
	sub  $10
	jr   _LABEL_B4D_152

_LABEL_B4B_153:
	add  a, $10
_LABEL_B4D_152:
	or   b
	ld   (de), a
	inc  de
	inc  hl
	ld   a, (hl)
	and  $0F
	ld   c, a
	ld   a, (de)
	and  $0F
	cp   c
	jr   z, _LABEL_B61_154
	jr   c, _LABEL_B60_155
	dec  a
	jr   _LABEL_B61_154

_LABEL_B60_155:
	inc  a
_LABEL_B61_154:
	ld   (de), a
	inc  de
	inc  hl
	pop  bc
	djnz _LABEL_B29_156
	ret


; Data from B68 to BB7 (80 bytes)
checkcurrentact:
ld      a,(currentact);fetch current act
ld      c,a
srl     a
srl     a
srl     a
ld      e,a
ld      d,$00
add     hl,de
ld      a,c
ld      c,$01
and     $07
ret     z

ld      b,a
ld      a,c
-:      
rlca    
djnz    -            ; (-03h)
ld      c,a
ret     
label_0b83h:
di      
ld      a,$05
ld      ($fffe),a
ld      a,($d224)
and     $0f
add     a,a
add     a,a
add     a,a
ld      e,a
ld      d,$00
add     hl,de
ex      de,hl
ld      bc,$2b80
add     hl,bc
ld      a,l
out     ($bf),a
ld      a,h
or      $40
out     ($bf),a
ld      b,$04
-:    
 ld      a,(de)
out     ($be),a
nop     
 nop     
inc     de
ld      a,(de)
out     ($be),a
inc     de
djnz    -            ; (-0ch)
ld      a,($d22f)
ld      ($fffe),a
ei      
ret  


_LABEL_BB8_163:
	xor  a
	ld   (RAM_D24B), a
	ld   (RAM_D24C), a
	ld   (RAM_D300), a
	bit  1, (iy+5)
	jr   z, _LABEL_BD6_164
	ld   c, $00
	ld   a, (RAM_D305)
	rrca
	jr   nc, _LABEL_BD2_165
	ld   c, $06
_LABEL_BD2_165:
	ld   a, c
	ld   (currentact), a
_LABEL_BD6_164:
	ld   a, $FF
	ld   (RAM_D217), a
	ld   c, $01
	ld   a, (currentact)
	cp   $12;is the ending running?
	ret  nc

	cp   $09
	jr   c, _LABEL_BE9_166
	ld   c, $02
_LABEL_BE9_166:
	ld   a, (RAM_D217)
	cp   c
	jp   z, _LABEL_CB2_167
	ld   a, c
	ld   (RAM_D217), a
	dec  a
	jr   nz, _LABEL_C54_168
	ld   a, (RAM_D21A)
	and  $BF
	ld   (RAM_D21A), a
	res  0, (iy+0)
	call _LABEL_2EF_104

; Data from C06 to C53 (78 bytes)
.db $21, $00, $00, $11, $00, $00, $3E, $0C, $CD, $CE, $03, $21, $D0, $4A, $11, $00
.db $20, $3E, $09, $CD, $CE, $03, $21, $54, $B3, $11, $00, $30, $3E, $09, $CD, $CE
.db $03, $21, $62, $69, $01, $9B, $01, $11, $00, $38, $3E, $10, $32, $0F, $D2, $3E
.db $05, $CD, $CA, $04, $21, $FD, $6A, $01, $70, $01, $11, $00, $38, $AF, $32, $0F
.db $D2, $3E, $05, $CD, $CA, $04, $21, $0A, $0B, $CD, $86, $0A, $18, $5B

_LABEL_C54_168:
	ld   a, (RAM_D21A)
	and  $BF
	ld   (RAM_D21A), a
	res  0, (iy+0)
	call _LABEL_2EF_104

; Data from C63 to CB1 (79 bytes)
.db $21, $1A, $17, $11, $00, $00, $3E, $0C, $CD, $CE, $03, $21, $A7, $51, $11, $00
.db $20, $3E, $09, $CD, $CE, $03, $21, $54, $B3, $11, $00, $30, $3E, $09, $CD, $CE
.db $03, $21, $6D, $6C, $01, $56, $01, $11, $00, $38, $3E, $10, $32, $0F, $D2, $3E
.db $05, $CD, $CA, $04, $21, $C3, $6D, $01, $98, $01, $11, $00, $38, $AF, $32, $0F
.db $D2, $3E, $05, $CD, $CA, $04, $21, $0C, $0D, $CD, $86, $0A, $3E, $07, $DF

_LABEL_CB2_167:
	call _LABEL_E25_169

; Data from CB5 to E24 (368 bytes)
.db $3A, $38, $D2, $87, $4F, $06, $00, $21, $65, $11, $09, $7E, $23, $66, $6F, $3E
.db $10, $32, $0F, $D2, $CD, $ED, $05, $3A, $38, $D2, $4F, $87, $81, $5F, $16, $00
.db $21, $AA, $0E, $19, $5E, $23, $56, $23, $ED, $53, $11, $D2, $7E, $A7, $28, $0E
.db $3D, $87, $5F, $16, $00, $21, $5D, $11, $19, $7E, $23, $66, $6F, $E9, $3E, $01
.db $32, $0F, $D2, $01, $2C, $01, $C5, $CD, $25, $0E, $21, $0F, $D2, $35, $20, $22
.db $2A, $11, $D2, $5E, $23, $56, $23, $4E, $23, $46, $23, $ED, $43, $15, $D2, $7E
.db $23, $A7, $20, $04, $EB, $C3, $08, $0D, $32, $0F, $D2, $22, $11, $D2, $ED, $53
.db $13, $D2, $2A, $15, $D2, $E5, $5C, $26, $00, $54, $ED, $4B, $13, $D2, $CD, $05
.db $2F, $E1, $22, $15, $D2, $C1, $0B, $78, $B1, $C8, $FD, $CB, $03, $4E, $28, $0C
.db $FD, $7E, $03, $E6, $B0, $FE, $B0, $CA, $FB, $0C, $37, $C9, $FD, $CB, $0E, $46
.db $28, $EE, $FD, $CB, $03, $56, $20, $E8, $3A, $79, $D2, $3D, $20, $E2, $3A, $38
.db $D2, $3C, $FE, $13, $38, $01, $AF, $32, $38, $D2, $FD, $7E, $03, $3C, $20, $FA
.db $C3, $DB, $0B, $21, $00, $00, $22, $0F, $D2, $21, $DC, $00, $11, $32, $00, $06
.db $00, $CD, $25, $0E, $FD, $7E, $03, $FE, $FF, $C2, $F3, $0C, $C5, $01, $11, $0E
.db $CD, $7C, $0E, $C1, $2B, $10, $EA, $21, $00, $00, $22, $0F, $D2, $21, $F6, $FF
.db $11, $50, $00, $06, $72, $CD, $25, $0E, $FD, $7E, $03, $FE, $FF, $C2, $F3, $0C
.db $C5, $01, $19, $0E, $CD, $7C, $0E, $C1, $23, $10, $EA, $C3, $F3, $0C, $21, $00
.db $00, $22, $0F, $D2, $21, $90, $00, $11, $C0, $00, $06, $80, $CD, $25, $0E, $FD
.db $7E, $03, $FE, $FF, $C2, $F3, $0C, $C5, $01, $21, $0E, $CD, $7C, $0E, $C1, $1B
.db $10, $EA, $C3, $F3, $0C, $21, $00, $00, $22, $0F, $D2, $21, $88, $00, $11, $00
.db $00, $06, $30, $CD, $25, $0E, $FD, $7E, $03, $FE, $FF, $C2, $F3, $0C, $C5, $01
.db $21, $0E, $CD, $7C, $0E, $C1, $13, $10, $EA, $C3, $F3, $0C, $85, $10, $04, $01
.db $97, $10, $04, $00, $A9, $10, $04, $01, $BB, $10, $04, $00, $DF, $10, $04, $00

_LABEL_E25_169:
	push hl
	push de
	push bc
	ld   hl, (RAM_D20F)
	push hl
	res  0, (iy+0)
	call _LABEL_2EF_104

; Data from E33 to 10F5 (707 bytes)
.db $FD, $36, $0A, $00, $3A, $40, $D2, $6F, $26, $00, $0E, $0A, $CD, $4D, $06, $7D
.db $87, $C6, $80, $32, $BF, $D2, $0E, $0A, $CD, $3A, $06, $EB, $3A, $40, $D2, $6F
.db $26, $00, $A7, $ED, $52, $7D, $87, $C6, $80, $32, $C0, $D2, $3E, $FF, $32, $C1
.db $D2, $0E, $48, $06, $97, $21, $00, $D0, $11, $BF, $D2, $CD, $A6, $2F, $22, $36
.db $D2, $E1, $22, $0F, $D2, $C1, $D1, $E1, $C9, $E5, $D5, $69, $60, $3A, $10, $D2
.db $87, $87, $5F, $16, $00, $19, $4E, $23, $46, $23, $3A, $0F, $D2, $BE, $38, $09
.db $23, $7E, $32, $10, $D2, $AF, $32, $0F, $D2, $D1, $E1, $E5, $D5, $CD, $05, $2F
.db $2A, $0F, $D2, $34, $D1, $E1, $C9, $E0, $0E, $00, $EF, $0E, $00, $3A, $0F, $01
.db $FE, $0E, $00, $0D, $0F, $00, $DA, $0F, $02, $1C, $0F, $00, $2B, $0F, $00, $E4
.db $0F, $03, $67, $0F, $00, $76, $0F, $00, $EE, $0F, $00, $85, $0F, $00, $94, $0F
.db $00, $F8, $0F, $00, $A3, $0F, $00, $B2, $0F, $00, $B2, $0F, $00, $19, $10, $60
.db $68, $1E, $07, $10, $60, $68, $1E, $E0, $0E, $00, $00, $00, $2B, $10, $60, $60
.db $1E, $07, $10, $60, $60, $1E, $EF, $0E, $00, $00, $00, $3D, $10, $70, $60, $1E
.db $07, $10, $70, $60, $1E, $FE, $0E, $00, $00, $00, $4F, $10, $90, $50, $1E, $07
.db $10, $90, $50, $1E, $0D, $0F, $00, $00, $00, $61, $10, $80, $48, $1E, $07, $10
.db $80, $48, $1E, $1C, $0F, $00, $00, $00, $73, $10, $80, $30, $1E, $07, $10, $80
.db $30, $1E, $2B, $0F, $00, $00, $00, $DF, $10, $68, $50, $08, $DF, $10, $68, $50
.db $08, $DF, $10, $68, $4E, $08, $DF, $10, $68, $4E, $08, $DF, $10, $68, $4D, $08
.db $DF, $10, $68, $4D, $08, $DF, $10, $68, $4E, $08, $DF, $10, $68, $4E, $08, $3A
.db $0F, $00, $00, $00, $F1, $10, $58, $68, $1E, $07, $10, $58, $68, $1E, $67, $0F
.db $00, $00, $00, $03, $11, $68, $78, $1E, $07, $10, $68, $78, $1E, $76, $0F, $00
.db $00, $00, $15, $11, $70, $58, $1E, $07, $10, $70, $58, $1E, $85, $0F, $00, $00
.db $00, $27, $11, $78, $48, $1E, $07, $10, $78, $48, $1E, $94, $0F, $00, $00, $00
.db $39, $11, $68, $28, $1E, $07, $10, $68, $28, $1E, $A3, $0F, $00, $00, $00, $4B
.db $11, $80, $28, $1E, $4B, $11, $80, $26, $08, $4B, $11, $80, $26, $08, $4B, $11
.db $80, $25, $08, $4B, $11, $80, $25, $08, $4B, $11, $80, $26, $08, $4B, $11, $80
.db $26, $08, $B2, $0F, $00, $00, $00, $DF, $10, $90, $40, $08, $DA, $0F, $00, $00
.db $00, $DF, $10, $88, $30, $08, $E4, $0F, $00, $00, $00, $DF, $10, $70, $60, $08
.db $EE, $0F, $00, $00, $00, $85, $10, $68, $40, $08, $97, $10, $68, $40, $08, $F8
.db $0F, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
.db $FF, $FF, $FF, $FF, $FF, $FF, $00, $02, $FF, $FF, $FF, $FF, $FE, $22, $24, $26
.db $28, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $04, $06, $08, $FF, $FF, $FF, $FF, $FF
.db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $40, $42, $44, $46, $48, $FF
.db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $4A, $4C, $FF, $FF
.db $FF, $FF, $6A, $6C, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $60, $62
.db $64, $66, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
.db $FE, $FE, $0E, $FF, $FF, $FF, $2A, $2C, $2E, $FF, $FF, $FF, $FF, $FF, $FF, $FF
.db $FF, $FF, $10, $12, $14, $16, $FF, $FF, $30, $32, $34, $36, $FF, $FF, $FF, $FF
.db $FF, $FF, $FF, $FF, $10, $12, $14, $18, $FF, $FF, $30, $32, $34, $38, $FF, $FF
.db $FF, $FF, $FF, $FF, $FF, $FF, $50, $54, $56, $58, $FF, $FF, $70, $74, $76, $78
.db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $52, $54, $56, $58, $FF, $FF, $72, $74
.db $76, $78, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $50, $54, $56, $58, $FF, $FF
.db $70, $74, $76, $78, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $5A, $5C, $5E, $FF
.db $FF, $FF, $7A, $7C, $7E, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00, $02
.db $FF, $FF, $FF

_LABEL_10F6_172:
	rst  $38

; Data from 10F7 to 1356 (608 bytes)
.db $20, $22, $04, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $0A, $0C, $0E, $FF
.db $FF, $FF, $2A, $2C, $2E, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $68, $6A
.db $6C, $FF, $FF, $FF, $FE, $FE, $6E, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
.db $06, $08, $4A, $4C, $FF, $FF, $FE, $FE, $4E, $3E, $FF, $FF, $FE, $40, $42, $44
.db $FF, $FF, $60, $62, $64, $66, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
.db $FF, $FF, $FF, $FF, $46, $48, $26, $28, $FF, $FF, $1A, $1C, $3A, $3C, $FF, $FF
.db $FF, $FF, $FF, $FF, $FF, $FF, $78, $0D, $C3, $0D, $EA, $0D, $78, $0D, $89, $11
.db $89, $11, $89, $11, $98, $11, $98, $11, $98, $11, $A7, $11, $A7, $11, $A7, $11
.db $B6, $11, $B6, $11, $B6, $11, $C5, $11, $C5, $11, $C5, $11, $D4, $11, $D4, $11
.db $D4, $11, $0C, $13, $46, $62, $44, $44, $51, $EB, $47, $40, $43, $43, $EB, $EB
.db $FF, $0C, $13, $35, $62, $40, $37, $46, $44, $EB, $EB, $EB, $EB, $EB, $EB, $FF
.db $0C, $13, $41, $81, $51, $46, $43, $44, $EB, $EB, $EB, $EB, $EB, $EB, $FF, $0C
.db $13, $6F, $1E, $1F, $DE, $9F, $5E, $7F, $AF, $4F, $EB, $EB, $EB, $FF, $0C, $13
.db $AE, $2E, $9F, $1E, $8F, $EB, $1F, $9F, $1E, $5E, $7F, $EB, $FF, $0C, $13, $AE
.db $6E, $DE, $EB, $1F, $1E, $AE, $3E, $EB, $EB, $EB, $EB, $FF, $3A, $1A, $D2, $E6
.db $BF, $32, $1A, $D2, $FD, $CB, $00, $86, $CD, $EF, $02, $F3, $21, $31, $2A, $11
.db $00, $00, $3E, $09, $CD, $CE, $03, $21, $5B, $6F, $01, $2B, $00, $11, $00, $38
.db $AF, $32, $0F, $D2, $3E, $05, $CD, $CA, $04, $AF, $32, $4B, $D2, $32, $4C, $D2
.db $21, $0F, $10, $22, $2C, $D2, $FB, $06, $78, $3A, $1A, $D2, $F6, $40, $32, $1A
.db $D2, $FD, $CB, $00, $86, $CD, $EF, $02, $10, $EF, $3A, $7E, $D2, $A7, $20, $19
.db $01, $B4, $00, $C5, $FD, $CB, $00, $86, $CD, $EF, $02, $C1, $0B, $78, $B1, $C8
.db $FD, $CB, $03, $6E, $C2, $3A, $12, $A7, $C9, $F5, $06, $10, $FD, $CB, $00, $86
.db $CD, $EF, $02, $21, $4C, $D2, $34, $10, $F3, $F1, $21, $C8, $12, $0E, $10, $CD
.db $19, $46, $21, $D0, $12, $CD, $ED, $05, $21, $DD, $12, $CD, $ED, $05, $3E, $09
.db $32, $17, $D2, $06, $3C, $C5, $FD, $CB, $00, $86, $CD, $EF, $02, $FD, $36, $0A
.db $00, $21, $17, $D2, $11, $BF, $D2, $06, $01, $CD, $BC, $49, $EB, $21, $00, $D0
.db $0E, $74, $06, $67, $CD, $A6, $2F, $22, $36, $D2, $C1, $FD, $CB, $03, $7E, $28
.db $0E, $10, $D2, $3E, $1A, $EF, $21, $17, $D2, $7E, $A7, $C8, $35, $18, $C4, $21
.db $12, $D3, $CD, $68, $0B, $79, $2F, $4F, $7E, $A1, $77, $21, $7E, $D2, $35, $37
.db $C9, $12, $80, $81, $FF, $13, $90, $91, $FF, $0B, $0C, $67, $68, $69, $6A, $6B
.db $6C, $6D, $6E, $00, $8F, $FF, $0B, $0D, $77, $78, $79, $7A, $7B, $7C, $7D, $7E
.db $00, $9F, $FF, $2A, $B6, $D2, $11, $07, $13, $19, $7E, $A7, $37, $C8, $FD, $77
.db $03, $3A, $24, $D2, $E6, $1F, $C0, $2A, $B6, $D2, $23, $22, $B6, $D2, $A7, $C9
.db $F7, $F7, $F7, $F7, $DF, $F7, $FF, $FF, $D7, $F7, $F7, $F7, $FF, $DF, $F7, $F7
.db $DF, $F7, $F7, $F7, $F7, $F7, $F7, $F7, $DF, $F7, $F7, $F7, $F7, $F7, $F7, $F7
.db $F7, $F7, $DF, $F7, $F5, $F5, $F5, $F5, $F5, $00, $F7, $F7, $DF, $F7, $DF, $FF
.db $FF, $FF, $FF, $F7, $F7, $DF, $F7, $DF, $F7, $DF, $F7, $F7, $F7, $F7, $F7, $FF
.db $FF, $F7, $DF, $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7, $00

_LABEL_1357_100:
	set  0, (iy+0)
	ei
_LABEL_135C_162:
	ld   a, $01
	ld   ($FFFE), a
	ld   (RAM_D22F), a
	ld   a, $02
	ld   ($FFFF), a
	ld   (RAM_D230), a
	res  0, (iy+2)
	res  1, (iy+2)
	call _LABEL_620_101
	call _LABEL_1CC5_102
	call nc, _LABEL_A7E_144
	ld   a, $03
	ld   (LivesCounter), a
	ld   a, $05
	ld   (RAM_D2F8), a
	ld   a, $1C
	ld   (RAM_D239), a
	xor  a
	ld   (currentact), a
	ld   (RAM_D224), a
	ld   (iy+13), a
	ld   hl, $D279
	ld   b, $08
	call _LABEL_1410_159
	ld   hl, $D200
	ld   b, $0E
	call _LABEL_1410_159
	ld   hl, $D2BB
	ld   b, $04
	call _LABEL_1410_159
	ld   hl, $D306
	ld   b, $18
	call _LABEL_1410_159
	call _LABEL_620_101
	call _LABEL_42D8_160
	res  1, (iy+5)
	jr   c, _LABEL_13C6_161
	set  1, (iy+5)
_LABEL_13C6_161:
	ld   a, (currentact)
	cp   $13
	jp   nc, _LABEL_135C_162
	res  0, (iy+2)
	res  1, (iy+2)
	call _LABEL_620_101
	call _LABEL_BB8_163
	bit  1, (iy+5)
	jr   z, _LABEL_13E5_170
	jp   c, _LABEL_135C_162
_LABEL_13E5_170:
	call _LABEL_A7E_144

; Data from 13E8 to 140F (40 bytes)
.db $CD, $20, $06, $FD, $CB, $05, $46, $20, $06, $FD, $CB, $06, $66, $20, $0C, $06
.db $3C, $FD, $CB, $00, $86, $CD, $EF, $02, $10, $F7, $E7, $CD, $15, $14, $A7, $CA
.db $5C, $13, $3D, $28, $B9, $C3, $E5, $13

_LABEL_1410_159:
	ld   (hl), a
	inc  hl
	djnz _LABEL_1410_159
	ret


; Data from 1415 to 1CC4 (2224 bytes)
.incbin "Sonic1.gg.dat.5"

_LABEL_1CC5_102:
	rst  $20
	ld   a, (RAM_D21A)
	and  $BF
	ld   (RAM_D21A), a
	res  0, (iy+0)
	call _LABEL_2EF_104
	xor  a
	ld   (RAM_D24B), a
	ld   (RAM_D24C), a
	ld   hl, $FA74
	ld   de, $0000
	ld   a, $0C
	call _LABEL_3CE_105
	ld   hl, $F600
	ld   de, $2000
	ld   a, $04
	call _LABEL_3CE_105
	ld   hl, $1212
	ld   (RAM_D22C), hl
	set  1, (iy+0)
	ld   a, $00
	out  ($BF), a
	ld   a, $38
	or   $40
	out  ($BF), a
	ld   bc, $0380
_LABEL_1D09_114:
	ld   a, $70
	out  ($BE), a
	push af
	pop  af
	xor  a
	out  ($BE), a
	dec  bc
	ld   a, b
	or   c
	jr   nz, _LABEL_1D09_114
	ld   a, (RAM_D21A)
	or   $40
	ld   (RAM_D21A), a
	res  0, (iy+0)
	call _LABEL_2EF_104
	ld   hl, $002C
	ld   (RAM_D213), hl
_LABEL_1D2C_129:
	call _LABEL_1E73_115
	call _LABEL_1E81_116
	call _LABEL_1EFA_118
	bit  7, (iy+3)
	jp   z, _LABEL_1E39_126
	ld   l, $2C
	ld   bc, $1F1E
	ld   de, $0004
	call _LABEL_1EB8_127
	ld   a, l
	cp   $6C
	jp   c, _LABEL_1D2C_129
	ld   hl, $1F30
	ld   (RAM_D217), hl
	ld   b, $08
	call _LABEL_1EE5_130
_LABEL_1D58_131:
	call _LABEL_1E73_115
	call _LABEL_1E81_116
	call _LABEL_1EFA_118
	bit  7, (iy+3)
	jp   z, _LABEL_1E39_126
	ld   l, $6C
	ld   bc, $1F1E
	ld   de, $0004
	call _LABEL_1EB8_127
	ld   a, l
	cp   $AC
	jp   c, _LABEL_1D58_131
	xor  a
	ld   (RAM_D20F), a
	ld   hl, $1FA1
	call _LABEL_5ED_132
	call _LABEL_1E67_134
	ld   hl, $1F30
	ld   (RAM_D217), hl
	ld   b, $08
	call _LABEL_1EE5_130
	ld   hl, $1F42
	ld   (RAM_D217), hl
	ld   b, $0A
	call _LABEL_1EE5_130
	ld   hl, $1F54
	ld   (RAM_D217), hl
	ld   b, $08
	call _LABEL_1EE5_130
_LABEL_1DA7_135:
	call _LABEL_1E73_115
	bit  7, (iy+3)
	jp   z, _LABEL_1E39_126
	ld   l, $6C
	ld   bc, $1F66
	ld   de, $FFFC
	call _LABEL_1EB8_127
	ld   a, l
	cp   $6C
	jp   nc, _LABEL_1DA7_135
	ld   hl, $1F54
	ld   (RAM_D217), hl
	ld   b, $08
	call _LABEL_1EE5_130
_LABEL_1DCD_136:
	call _LABEL_1E73_115
	bit  7, (iy+3)
	jp   z, _LABEL_1E39_126
	ld   l, $2C
	ld   bc, $1F66
	ld   de, $FFFC
	call _LABEL_1EB8_127
	ld   a, l
	cp   $2C
	jp   nz, _LABEL_1DCD_136
	ld   hl, $1F54
	ld   (RAM_D217), hl
	ld   b, $08
	call _LABEL_1EE5_130
	ld   hl, $1F42
	ld   (RAM_D217), hl
	ld   b, $0A
	call _LABEL_1EE5_130
	ld   hl, $1F78
	ld   (RAM_D217), hl
	ld   b, $14
	call _LABEL_1EE5_130
	ld   a, $08
	ld   ($FFFE), a
	ld   (RAM_D22F), a
	ld   a, $09
	ld   ($FFFF), a
	ld   (RAM_D230), a
	call _LABEL_23C00_137
	ld   a, $01
	ld   ($FFFE), a
	ld   (RAM_D22F), a
	ld   a, $02
	ld   ($FFFF), a
	ld   (RAM_D230), a
	ld   hl, $1F78
	ld   (RAM_D217), hl
	ld   b, $50
	call _LABEL_1EE5_130
	and  a
	ret

_LABEL_1E39_126:
	ld   hl, $1616
	ld   (RAM_D22C), hl
	scf
	ret


; Data from 1E41 to 1E66 (38 bytes)
.db $CD, $81, $1E, $3A, $13, $D2, $C6, $08, $32, $13, $D2, $C6, $18, $FE, $C8, $38
.db $E7, $AF, $32, $0F, $D2, $21, $A1, $1F, $CD, $ED, $05, $CD, $67, $1E, $21, $2C
.db $00, $22, $13, $D2, $18, $C5

_LABEL_1E67_134:
	in   a, ($00)
	rlca
	rlca
	ret  nc

	ld   hl, $1F9C
	call _LABEL_5ED_132
	ret

_LABEL_1E73_115:
	res  0, (iy+0)
	call _LABEL_2EF_104
	ld   hl, $D000
	ld   (RAM_D236), hl
	ret

_LABEL_1E81_116:
	ld   a, (RAM_D213)
	add  a, $18
	ld   c, a
	cp   $48
	ret  c

	cp   $C8
	ret  nc

	ld   hl, $3A52
	ld   a, c
	srl  a
	srl  a
	srl  a
	sub  $09
	ld   c, a
	ld   b, $00
	add  hl, bc
	add  hl, bc
	ld   b, $06
	ld   de, $0040
_LABEL_1EA3_117:
	ld   a, l
	out  ($BF), a
	ld   a, h
	or   $40
	out  ($BF), a
	ld   a, c
	out  ($BE), a
	add  a, $10
	ld   c, a
	add  hl, de
	xor  a
	out  ($BE), a
	djnz _LABEL_1EA3_117
	ret

_LABEL_1EB8_127:
	push de
	push bc
	ld   a, (RAM_D213)
	sub  l
	srl  a
	srl  a
	ld   e, a
	ld   d, $00
	ld   hl, $1F0B
	add  hl, de
	ld   l, (hl)
	ld   h, d
	bit  7, l
	jr   z, _LABEL_1ED0_128
	dec  h
_LABEL_1ED0_128:
	ld   bc, $0046
	add  hl, bc
	ex   de, hl
	pop  bc
	ld   hl, (RAM_D213)
	call _LABEL_2F05_119
	pop  de
	ld   hl, (RAM_D213)
	add  hl, de
	ld   (RAM_D213), hl
	ret

_LABEL_1EE5_130:
	push bc
	call _LABEL_1E73_115
	ld   hl, (RAM_D213)
	ld   de, $0046
	ld   bc, (RAM_D217)
	call _LABEL_2F05_119
	pop  bc
	djnz _LABEL_1EE5_130
	ret

_LABEL_1EFA_118:
	ld   de, $0047
	ld   hl, (RAM_D213)
	ld   bc, $0018
	add  hl, bc
	ld   bc, $1F8A
	call _LABEL_2F05_119
	ret


; Data from 1F0B to 2F04 (4090 bytes)
.incbin "Sonic1.gg.dat.7"

_LABEL_2F05_119:
	ld   a, h
	and  a
	ret  nz

	ld   a, l
	cp   $D0
	ret  nc

	ld   a, d
	cp   $FF
	jr   nz, _LABEL_2F17_120
	ld   a, e
	cp   $E8
	ret  c

	jr   _LABEL_2F1D_121

_LABEL_2F17_120:
	and  a
	ret  nz

	ld   a, e
	cp   $A8
	ret  nc

_LABEL_2F1D_121:
	ld   h, e
	exx
	ld   hl, (RAM_D236)
	exx
	ld   d, $03
_LABEL_2F25_125:
	ld   a, (bc)
	inc  a
	jr   z, _LABEL_2F55_122
	push hl
	ld   e, $06
_LABEL_2F2C_124:
	ld   a, (bc)
	cp   $FE
	jr   nc, _LABEL_2F43_123
	ld   a, l
	exx
	ld   (hl), a
	inc  l
	exx
	ld   a, h
	exx
	ld   (hl), a
	inc  l
	exx
	ld   a, (bc)
	exx
	ld   (hl), a
	inc  l
	inc  (iy+10)
	exx
_LABEL_2F43_123:
	ld   a, $08
	add  a, l
	ld   l, a
	inc  bc
	dec  e
	jp   nz, _LABEL_2F2C_124
	pop  hl
	ld   a, $10
	add  a, h
	ld   h, a
	dec  d
	jp   nz, _LABEL_2F25_125
_LABEL_2F55_122:
	exx
	ld   (RAM_D236), hl
	exx
	ret


; Data from 2F5B to 31B9 (607 bytes)
label_2f5bh:
  ld      hl,($D211)
  ld      bc,($D215)
  add     hl,bc
  ld      bc,($d257)
  and     a
  sbc     hl,bc
  ex      de,hl
  ld      hl,($d20f)
  ld      bc,($d213)
  add     hl,bc
  ld      bc,($d254)
  and     a
  sbc     hl,bc
  ld      c,a
  ld      a,h
  and     a
  ret     nz
  
  ld      a,d
  cp      $ff
  jr      nz,+         ; (+07h)
  ld      a,e
  cp      $f0
  ret     c

  jp      label_2f90h
  
+:
  and     a
  ret     nz

  ld      a,e
  cp      $c0
  ret     nc
  
label_2f90h:
  ld      h,c
  ld      bc,($d236)
  ld      a,l
  ld      (bc),a
  inc     c
  ld      a,e
  ld      (bc),a
  inc     c
  ld      a,h
  ld      (bc),a
  inc     c
  ld      ($d236),bc
  inc     (iy+$0a)
  ret   
  
label_2fa6h:
  ld      a,(de)
  cp      $ff
  ret     z 
  
  cp      $fe
  jr      z,+          ; (+09h)
  ld      (hl),c
inc     l
ld      (hl),b
inc     l
ld      (hl),a
inc     l
inc     (iy+$0a)
+:     
inc     de
ld      a,c
add     a,$08
ld      c,a
jp      label_2fa6h
bit     0,(iy+$05)
ret     nz

bit     0,(iy+$08);check to see if Sonic is invincible
jp      nz,Destroybadniklogic;if so, jump to destroy badnik routine
ld      a,($d415);get Sonic's current state
rrca    
jp      c,Destroybadniklogic
and     $02
jp      nz,Destroybadniklogic

label_2fd7h: ;checks Sonic's invulnerable statuses, such as if he has a shield, rings etc. Used during collision routines such as colliding with traps and badniks.
bit     0,(iy+$09)
ret     nz

bit     6,(iy+$06);Is sonic in his invulnerable state?
ret     nz;if so, return

bit     0,(iy+$08);Is sonic invincible?
ret     nz;if so, return

bit     5,(iy+$06);Does Sonic have a shield?
jr      nz,label_3058h         ; (+6ch)
ld      a,(RingCounter)
and     a
jr      nz,label_301eh 

label_2ff2h:        ; Death Routine
set     0,(iy+$05)
ld      hl,$d415
set     7,(hl)
ld      hl,$fffc
xor     a
ld      ($d407),a
ld      ($d408),hl
ld      a,$60
ld      ($d281),a
res     6,(iy+06)
res     5,(iy+06)
res     6,(iy+06)
res     0,(iy+08);clear invincible flag
ld      a,$0A;play death jingle
rst     $18
ret     

label_301eh:
xor     a
ld      (RingCounter),a;clear ring counter
call    $7cb6
jr      c,label_3058h          ; (+31h)
push    ix
push    hl
pop     ix
ld      (ix+00),$55
ld      (ix+$11),$06
ld      (ix+$12),$00
ld      hl,(sonic_horizontal_pos);update Sonic's horizontal postion in the level
ld      (ix+02),l
ld      (ix+03),h
ld      hl,(sonic_vertical_pos);update Sonic's vertical position in the level.
ld      (ix+05),l
ld      (ix+06),h
ld      (ix+$0a),$00
ld      (ix+$0b),$fc
ld      (ix+$0c),$ff
pop     ix

label_3058h:  
ld      hl,$d415
ld      de,$fffc
xor     a
bit     4,(hl)
jr      z,+          ; (+03h)
ld      de,$fffe

+:   
ld      ($d407),a
ld      ($d408),de
bit     1,(hl)
jr      z,+          ; (+0ah)
ld      a,(hl)
or      $12
ld      (hl),a
xor     a
ld      de,$0002
jr      label_3081h            ; (+06h)

+:
res     1,(hl)
xor     a
ld      de,$fffe

label_3081h:    ;Sonic's End of Act Logic?
ld      ($d404),a
ld      ($d405),de
res     5,(iy+$06);clear the shield flag
set     6,(iy+$06);make Sonic move to the right and stop timer
ld      (iy+$03),$ff
ld      a,$11;play hurt sfx
rst     $28
ret

Destroybadniklogic: ;Smoke puff logic
ld      (ix+$00),$0A;load Smoke Puff object
ld      a,($d20f)
ld      e,a
ld      d,$00
ld      l,(ix+$02)
ld      h,(ix+$03)
add     hl,de
ld      (ix+$02),l
ld      (ix+$03),h
ld      a,($d210)
ld      e,a
ld      l,(ix+$05)
ld      h,(ix+$06)
add     hl,de
ld      (ix+$05),l
ld      (ix+$06),h
xor     a
ld      (ix+$0f),a
ld      (ix+$10),a
ld      a,$01
rst     $28;play explosion sfx
ld      de,$0100
ld      c,$00
call    label_33A8h
ret 

label_30d3h:
ld      a,($d232)
cp      $80
jr      z,+          ; (+0fh)
cp      $40
jr      z,label_3115h          ; (+37h)
cp      $20
jr      z,label_313eh          ; (+5ch)
cp      $10
jr      z,label_3164h          ; (+7eh)
jp      label_318dh


+:   
ld      l,(ix+$05)
ld      h,(ix+$06)
add     hl,de
ld      a,l
add     a,a
rl      h
add     a,a
rl      h
and     $80
ld      l,a
ex      de,hl
ld      l,(ix+$02)
ld      h,(ix+$03)
add     hl,bc
ld      a,l
add     a,a
rl      h
add     a,a
rl      h
add     a,a
rl      h
ld      l,h
ld      h,$00
add     hl,de
ld      de,$c000
add     hl,de
ret     

label_3115h:
ld      l,(ix+$05)
ld      h,(ix+$06)
add     hl,de
ld      a,l
add     a,a
rl      h
and     $c0
ld      l,a
ex      de,hl
ld      l,(ix+$02)
ld      h,(ix+$03)
add     hl,bc
ld      a,l
add     a,a
rl      h
add     a,a
rl      h
add     a,a
rl      h
ld      l,h
ld      h,$00
add     hl,de
ld      de,$c000
add     hl,de
ret     

label_313eh:
ld      l,(ix+$05)
ld      h,(ix+$06)
add     hl,de
ld      a,l
and     $e0
ld      l,a
ex      de,hl
ld      l,(ix+$02)
ld      h,(ix+$03)
add     hl,bc
ld      a,l
add     a,a
rl      h
add     a,a
rl      h
add     a,a
rl      h
ld      l,h
ld      h,$00
add     hl,de
ld      de,$c000
add     hl,de
ret     

label_3164h:
ld      l,(ix+$05)
ld      h,(ix+$06)
add     hl,de
ld      a,l
srl     h
rra     
and     $f0
ld      l,a
ex      de,hl
ld      l,(ix+$02)
ld      h,(ix+$03)
add     hl,bc
ld      a,l
add     a,a
rl      h
add     a,a
rl      h
add     a,a
rl      h
ld      l,h
ld      h,$00
add     hl,de
ld      de,$c000
add     hl,de
ret     

label_318dh:
ld      l,(ix+$05)
ld      h,(ix+$06)
add     hl,de
ld      a,l
rlca    
rl      h
rlca    
rl      h
rlca    
rl      h
ex      de,hl
ld      l,(ix+$02)
ld      h,(ix+$03)
add     hl,bc
ld      a,l
rlca    
rl      h
rlca    
rl      h
rlca    
rl      h
ld      l,h
ld      h,$00
ld      e,h
add     hl,de
ld      de,$c000
add     hl,de
ret     


_LABEL_31BA_45:
	ld   de, (RAM_D289)
	ld   hl, (RAM_D28B)
	and  a
	sbc  hl, de
	ret  z

	ld   hl, $3680
	ex   de, hl
	bit  0, (iy+6)
	jp   nz, _LABEL_320A_46
	ld   a, e
	out  ($BF), a
	ld   a, d
	or   $40
	out  ($BF), a
	ld   a, (RAM_D28D)
	ld   e, a
	xor  a
	ld   c, $BE
_LABEL_31DF_47:
	outi
	outi
	outi
	out  ($BE), a
	outi
	outi
	outi
	out  ($BE), a
	outi
	outi
	outi
	out  ($BE), a
	outi
	outi
	outi
	out  ($BE), a
	dec  e
	jp   nz, _LABEL_31DF_47
	ld   hl, (RAM_D289)
	ld   (RAM_D28B), hl
	ret

_LABEL_320A_46:
	ld   bc, $011D
	add  hl, bc
	ld   a, e
	out  ($BF), a
	ld   a, d
	or   $40
	out  ($BF), a
	exx
	push bc
	ld   b, $10
	exx
	ld   de, $FFFA
	ld   c, $BE
	xor  a
_LABEL_3221_48:
	outi
	outi
	outi
	out  ($BE), a
	add  hl, de
	outi
	outi
	outi
	out  ($BE), a
	add  hl, de
	outi
	outi
	outi
	out  ($BE), a
	add  hl, de
	outi
	outi
	outi
	out  ($BE), a
	add  hl, de
	exx
	dec  b
	exx
	jp   nz, _LABEL_3221_48
	exx
	pop  bc
	exx
	ld   hl, (RAM_D289)
	ld   (RAM_D28B), hl
	ret


; Data from 3255 to 327F (43 bytes)
.db $F3, $7B, $D3, $BF, $7A, $F6, $40, $D3, $BF, $06, $20, $7E, $D3, $BE, $00, $00
.db $00, $00, $23, $7E, $D3, $BE, $00, $00, $00, $00, $23, $7E, $D3, $BE, $00, $00
.db $00, $00, $23, $7E, $D3, $BE, $23, $10, $E2, $FB, $C9

_LABEL_3280_49:
	ld   hl, (RAM_D2AB)
	ld   a, l
	and  $F8
	ld   l, a
	ld   de, (RAM_D254)
	ld   a, e
	and  $F8
	ld   e, a
	xor  a
	sbc  hl, de
	ret  c

	or   h
	ret  nz

	ld   a, l
	cp   $08
	ret  c

	ld   d, a
	ld   a, (RAM_D24B)
	and  $F8
	ld   e, a
	add  hl, de
	srl  h
	rr   l
	srl  h
	rr   l
	srl  h
	rr   l
	ld   a, l
	and  $1F
	add  a, a
	ld   c, a
	ld   hl, (RAM_D2AD)
	ld   a, l
	and  $F8
	ld   l, a
	ld   de, (RAM_D257)
	ld   a, e
	and  $F8
	ld   e, a
	xor  a
	sbc  hl, de
	ret  c

	or   h
	ret  nz

	ld   a, l
	cp   $C0
	ret  nc

	ld   d, $00
	ld   a, (RAM_D24C)
	and  $F8
	ld   e, a
	add  hl, de
	srl  h
	rr   l
	srl  h
	rr   l
	srl  h
	rr   l
	ld   a, l
	cp   $1C
	jr   c, _LABEL_32E7_50
	sub  $1C
_LABEL_32E7_50:
	ld   l, a
	ld   h, $00
	ld   b, h
	rrca
	rrca
	ld   h, a
	and  $C0
	ld   l, a
	ld   a, h
	xor  l
	ld   h, a
	add  hl, bc
	ld   bc, $3800
	add  hl, bc
	ld   de, (RAM_D2AF)
	ld   b, $02
_LABEL_32FF_51:
	ld   a, l
	out  ($BF), a
	ld   a, h
	or   $40
	out  ($BF), a
	ld   a, (de)
	out  ($BE), a
	inc  de
	nop
	nop
	ld   a, (de)
	out  ($BE), a
	inc  de
	nop
	nop
	ld   a, (de)
	out  ($BE), a
	inc  de
	nop
	nop
	ld   a, (de)
	out  ($BE), a
	inc  de
	ld   a, b
	ld   bc, $0040
	add  hl, bc
	ld   b, a
	djnz _LABEL_32FF_51
	ret


; Data from 3326 to 3FFF (3290 bytes)
label_3326h:
    bit     0,(iy+$05)
	scf
	ret     nz
	
	ld      l,(ix+$02)
	ld      h,(ix+$03)
	ld      c,(ix+$0d)
	ld      b,$00
	add     hl,bc
	ld      de,(sonic_horizontal_pos);set Sonic's current horizontal pos. in the level
	xor     a
	sbc     hl,de
	ret     c
	
	ld      l,(ix+$02)
	ld      h,(ix+$03)
	ld      a,($D215)
	ld      c,a
	add     hl,bc
	ex      de,hl
	ld      a,($D40A)
	ld      c,a
	add     hl,bc
	xor     a
	sbc     hl,de
	ret     c
	
	ld      l,(ix+$05)
	ld      h,(ix+$06)
	ld      c,(ix+$0E)
	add     hl,bc
	ld      de,(sonic_vertical_pos)
	xor     a
	sbc     hl,de
	ret     c
	
	ld      l,(ix+$05)
	ld      h,(ix+$06)
	ld      a,($D216)
	ld      c,a
	add     hl,bc
	ex      de,hl
	ld      a,($D40B)
	ld      c,a
	add     hl,bc
	xor     a
	sbc     hl,de
	ret
label_337ch:	
	ld      c,a
    ld      a,(RingCounter)
    add     a,c
    ld      c,a
    and     $0f
    cp      $0a
    jr      c,+          ; (+04h)
    ld      a,c
    add     a,$06
    ld      c,a
 +:       
    ld      a,c
    cp      $a0
    jr      c,+          ; (+10h)
    sub     $a0
    ld      (RingCounter),a
    ld      a,(LivesCounter)
    inc     a
    ld      (LivesCounter),a
    ld      a,$09;play extra life sfx
    rst     $28
    ret     

 +:  
    ld      (RingCounter),a;update the ring counter as sonic collects rings!
    ld      a,$02
    rst     $28;play ring sfx $02
    ret
	
label_33A8h:	
	ld      hl,$D2BE
    ld      a,e
    add     a,(hl)
    daa     
    ld      (hl),a
    dec     hl
    ld      a,d
    adc     a,(hl)
    daa     
    ld      (hl),a
    dec     hl
    ld      a,c
    adc     a,(hl)
    daa     
    ld      (hl),a
    ld      c,a
    dec     hl
    ld      a,$00
    adc     a,(hl)
    daa     
    ld      (hl),a
    ld      hl,$D2F8
    ld      a,c
    cp      (hl)
    ret     c

    ld      a,(hl)
    and     a
    ret     z

    add     a,$05
    daa     
    ld      (hl),a
    ld      hl,$D240
    inc     (hl);give Sonic an extra life
    ld      a,$09;play jingle
    rst     $28
    ret 
	
	bit     0,(iy+$05)
	ret     nz
	
	ld      hl,$D2D1
    bit     0,(iy+$07)
    jr      nz,label_3409h         ; (+26h)
    ld      a,(hl)
    inc     a
    cp      $3c
jr      c,+          ; (+01h)
xor     a
+:     
ld      (hl),a
dec     hl
ccf     
ld      a,(hl)
adc     a,$00
daa     
cp      $60
jr      c,+          ; (+01h)
xor     a
 +:  
ld      (hl),a
dec     hl
ccf     
ld      a,(hl)
adc     a,$00
daa     
cp      $10
jr      c,+          ; (+06h)
push    hl
call    label_2ff2h
pop     hl
xor     a
+:   
ld      (hl),a
ret     

label_3409h:
ld      a,(hl)
inc     a
cp      $3c
jr      c,+          ; (+01h)
xor     a
+:     
ld      (hl),a
dec     hl
ccf     
ld      a,(hl)
sbc     a,$00
daa     
cp      $60
jr      c,+          ; (+02h)
ld      a,$59
+:     
ld      (hl),a
dec     hl
ccf     
ld      a,(hl)
sbc     a,$00
daa     
cp      $60
ld      (hl),a
ret     c

xor     a
ld      (hl),a
inc     hl
ld      (hl),a
inc     hl
ld      (hl),a
ld      a,$01
ld      ($D283),a;load act passed screen
set     2,(iy+$09)
ret     
.incbin "C.bin"


.BANK 1 SLOT 1
.ORG $0000


; Data from 4000 to 42D7 (728 bytes)
.db $03, $03, $02, $02, $01, $01, $00, $00, $FF, $FF, $FE, $FE, $FD, $FD, $FC, $FC
.db $FB, $FB, $FA, $FA, $F9, $F9, $F8, $F8, $10, $10, $10, $10, $10, $10, $10, $11
.db $11, $11, $11, $11, $12, $12, $12, $12, $12, $12, $12, $12, $12, $11, $11, $11
.db $11, $11, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $11
.db $11, $11, $11, $11, $12, $12, $12, $12, $13, $13, $13, $14, $14, $15, $15, $15
.db $16, $16, $16, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $16, $16, $16
.db $15, $15, $15, $14, $14, $13, $13, $13, $12, $12, $12, $12, $11, $11, $11, $11
.db $11, $10, $10, $10, $10, $10, $10, $10, $08, $08, $08, $08, $08, $08, $08, $09
.db $09, $09, $09, $09, $0A, $0A, $0A, $0A, $0B, $0B, $0B, $0C, $0C, $0D, $0D, $0D
.db $0E, $0E, $0E, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0E, $0E, $0E
.db $0D, $0D, $0D, $0C, $0C, $0B, $0B, $0B, $0A, $0A, $0A, $0A, $09, $09, $09, $09
.db $09, $08, $08, $08, $08, $08, $08, $08, $10, $10, $10, $10, $10, $10, $10, $10
.db $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10
.db $10, $10, $10, $10, $10, $10, $10, $10, $10, $11, $12, $13, $14, $15, $16, $17
.db $18, $19, $19, $1A, $1A, $1A, $1B, $1B, $1B, $1B, $1B, $1A, $1A, $1A, $19, $19
.db $18, $17, $16, $14, $11, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10
.db $10, $10, $10, $10, $10, $10, $10, $10, $11, $11, $12, $12, $13, $13, $14, $14
.db $15, $15, $16, $16, $17, $17, $18, $18, $18, $18, $17, $17, $16, $16, $15, $15
.db $14, $14, $13, $13, $12, $12, $11, $11, $10, $10, $10, $10, $10, $10, $10, $10
.db $10, $10, $10, $10, $10, $10, $10, $10, $08, $08, $09, $09, $0A, $0A, $0B, $0B
.db $0C, $0C, $0D, $0D, $0E, $0E, $0F, $0F, $10, $10, $10, $10, $10, $10, $10, $10
.db $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10
.db $10, $10, $10, $10, $10, $10, $10, $10, $0F, $0F, $0E, $0E, $0D, $0D, $0C, $0C
.db $0B, $0B, $0A, $0A, $09, $09, $08, $08, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
.db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
.db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $08, $08, $08, $08, $09, $09, $09, $09
.db $0A, $0A, $0A, $0A, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0A, $0A, $0A, $0A
.db $09, $09, $09, $09, $08, $08, $08, $08, $10, $10, $10, $10, $10, $10, $10, $10
.db $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10
.db $10, $10, $10, $10, $10, $10, $10, $10, $08, $08, $08, $08, $08, $08, $08, $08
.db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
.db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $09, $09, $09, $09
.db $0A, $0A, $0A, $0A, $0B, $0B, $0B, $0B, $0C, $0C, $0C, $0C, $0D, $0D, $0D, $0D
.db $0E, $0E, $0E, $0E, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0E, $0E, $0E, $0E
.db $0D, $0D, $0D, $0D, $0C, $0C, $0C, $0C, $0B, $0B, $0B, $0B, $0A, $0A, $0A, $0A
.db $09, $09, $09, $09, $08, $08, $08, $08, $07, $07, $06, $06, $05, $05, $04, $04
.db $03, $03, $02, $02, $01, $01, $00, $00, $00, $00, $01, $01, $02, $02, $03, $03
.db $04, $04, $05, $05, $06, $06, $07, $07, $08, $08, $08, $08, $09, $09, $09, $09
.db $0A, $0A, $0A, $0A, $0B, $0B, $0C, $0C, $0C, $0C, $0B, $0B, $0A, $0A, $0A, $0A
.db $09, $09, $09, $09, $08, $08, $08, $08, $80, $80, $80, $80, $80, $80, $80, $80
.db $80, $80, $80, $80, $80, $80, $80, $80, $10, $10, $10, $10, $10, $10, $10, $10
.db $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10
.db $10, $10, $10, $10, $10, $10, $10, $10, $80, $80, $80, $80, $80, $80, $80, $80
.db $80, $80, $80, $80, $80, $80, $80, $80, $16, $16, $16, $16, $16, $16, $16, $16
.db $16, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16
.db $16, $16, $16, $16, $16, $16, $16, $16

_LABEL_42D8_160:
	ld   a, (RAM_D21A)
	and  $BF
	ld   (RAM_D21A), a
	res  0, (iy+0)
	call _LABEL_2EF_104
	ld   hl, $1500
	ld   de, $0000
	ld   a, $09
	call _LABEL_3CE_105
	
	ld      hl,$436f
	ld      de,$2000
	ld      a,$09
	call    _LABEL_3CE_105
	ld      hl,$6738
	ld      de,$3800
	ld      bc,$012d
	xor     a
	ld      ($d20f),a
	ld      ($d24b),a
	ld      ($d24c),a
	ld      a,$05
    call    label_4cah
	in      a,($00)
	rlca
	rlca
	jr      nc,+         ; (+06h)
    ld      hl,$4456
    call    _LABEL_5ED_132
+:   
    ld      hl,$445b
    call    _LABEL_5ED_132
	ld      hl,$0909
	ld      ($d22c),hl
	set     1,(iy+00)
	ld      a,$06
	rst     $18
	ld      hl,$0000
	ld      ($d217),hl
	ld      a,$01
	ld      ($d210),a
	ld      hl,$43e7
	ld      ($d211),hl
label_4345h:	
	ld      a,($d21a)
	or      $40
	ld      ($d21a),a
	res     0,(iy+00)
	call    _LABEL_2EF_104
	ld      a,($d217)
	inc     a
	cp      $64
	jr      c,+
	ld      hl,$d218
	inc     (hl)
	xor     a

+:  
    ld      ($d217),a
	ld      hl,$43bd
	cp      $40
	 jr      c,+          ; (+03h)
ld      hl,$43d2
+:     
xor     a
ld      ($d20f),a
call    _LABEL_5ED_132
ld      hl,$d210
dec     (hl)
jr      nz,+         ; (+16h)
ld      hl,($d211)
ld      e,(hl)
inc     hl
ld      d,(hl)
inc     hl
ld      a,(hl)
inc     hl
and     a
jr      z,label_43bbh          ; (+34h)
ld      ($d210),a
ld      ($d211),hl
ld      ($d213),de
+:  
ld      hl,$d000
ld      ($d236),hl
ld      hl,$0088
ld      de,$0020
ld      bc,($d213)
call    _LABEL_2F05_119
bit     7,(iy+$03)
jp      nz,label_4345h
res     0,(iy+$0e)
ld      a,($d218)
cp      $05
jr      nz,+         ; (+04h)
set     0,(iy+$0e)
+:
scf     
label_43bbh:     
rst     $20
ret     

.incbin "43bd-44A6.bin"

ld      a,(currentact)
cp      $13;are we on the end of game score tally screen?
jp      z,label_466dh;if not, jump
ld      a,($d21a)
and     $bf
ld      ($d21a),a
res     0,(iy+00)
call    _LABEL_2EF_104
ld      hl,$b354
ld      de,$3000
ld      a,$09
call    _LABEL_3CE_105
ld      hl,$2a31
ld      de,$0000
ld      a,$09
call    _LABEL_3CE_105
ld      hl,$6865
ld      bc,$0084
ld      de,$3800
ld      a,(currentact)
cp      $1c;are we in the first special stage?
jr      c,+          ; (+09h)
ld      hl,$68e9
ld      bc,$0079
ld      de,$3800
+:     
xor     a
ld      ($d20f),a
ld      a,$05
call    label_4cah
ld      hl,$464f
ld      c,$13
ld      a,($d279)
and     a
call    nz,label_4619h
ld      a,(currentact)
cp      $1c
jr      nc,label_4540h         ; (+37h)
ld      a,$17
ld      ($d2bf),a
ld      a,$05
ld      ($d2c0),a
ld      a,(currentact)
ld      e,a
ld      d,$00
ld      hl,$4ab6
add     hl,de
ld      e,(hl)
ld      hl,$4a9e
add     hl,de
ld      b,$04
-:
push    bc
push    hl
ld      de,$d2c0
ld      a,(de)
inc     a
ld      (de),a
inc     de
ldi     
ldi     
ld      a,$ff
ld      (de),a
ld      hl,$d2bf
call    _LABEL_5ED_132
pop     hl
pop     bc
inc     hl
inc     hl
djnz    -           ; (-1ch)
label_4540h:      
               xor     a
ld      ($d24b),a
ld      ($d24c),a
ld      hl,$0b0a
ld      ($d22c),hl
ld      a,(currentact)
cp      $1c
jr      c,+          ; (+12h)
ld      hl,$d27b
inc     (hl)
bit     2,(iy+09)
jr      nz,+         ; (+08h)
ld      hl,$d27c
inc     (hl)
ld      hl,$d27f
inc     (hl)
+: 
bit     2,(iy+$09)
call    nz,label_4657h
bit     3,(iy+$09)
call    nz,label_4664h
ld      hl,$448b
ld      de,$4461
ld      b,$0e
-:   
ld      a,($d2cf);get current minutes
cp      (hl)
jr      nz,label_458ch         ; (+0ah)
inc     hl;increase the minutes on the clock
ld      a,($d2d0)
cp      (hl)
jr      nc,label_4598h         ; (+0fh)
inc     hl
jr      label_4590h            ; (+04h)
label_458ch:    
jr      nc,label_4598h         ; (+0ah)
inc     hl
inc     hl
label_4590h:      
inc     de
inc     de
inc     de
djnz    -            ; (-19h)
ld      de,$4461
label_4598h:   
ld      hl,$d213
ld      (hl),$00
inc     hl
ex      de,hl
ld      a,(currentact)
cp      $1c
jr      c,+          ; (+03h)
ld      hl,$48a5
+:     
ldi     
ldi     
ldi     
set     1,(iy+00)
ld      b,$78
-:    
push    bc
ld      a,($d21a)
or      $40
ld      ($d21a),a
res     0,(iy+00)
call    _LABEL_2EF_104
call    label_48a9h
pop     bc
djnz    -            ; (-16h)
label_45cbh: 
res     0,(iy+00h)
call    _LABEL_2EF_104
call    label_48a9h
call    label_4845h
ld      a,(currentact)
cp      $1c
call    c,label_4870h
ld      a,($d217)
inc     a
ld      ($d217),a
and     $03
jr      nz,+         ; (+03h)
ld      a,$02
rst     $28
+:   
ld      hl,($d213)
ld      de,($d215)
ld      a,(RingCounter)
or      h
or      l
or      d
or      e
jp      nz,label_45cbh
ld      b,$b4
-:
push    bc
res     0,(iy+00)
call    _LABEL_2EF_104
call    label_48a9h
pop     bc
ld      a,(iy+03)
and     $b0
cp      $b0
jr      nz,+         ; (+02h)
djnz    -            ; (-17h)
+:
ret     
label_4619h:
ld      b,a
push    bc
ld      de,$d2bf
ld      b,a
ld      a,c
sub     b
ld      (de),a
inc     de
ld      bc,$0004
ldir    
ld      (de),a
inc     de
ld      bc,$0004
ldir    
pop     bc
xor     a
ld      ($d20f),a
-:   
push    bc
ld      hl,$d2bf
call    _LABEL_5ED_132
ld      hl,$d2c4
call    _LABEL_5ED_132
ld      hl,$d2bf
inc     (hl)
inc     (hl)
ld      hl,$d2c4
inc     (hl)
inc     (hl)
pop     bc
djnz    -            ; (-1ah)
ret     

inc     de
xor     l
xor     (hl)
rst     $38
inc     d
cp      l
cp      (hl)
rst     $38
label_4657h:       
xor     a
ld      (RingCounter),a
res     3,(iy+$09)
res     2,(iy+$09)
ret     

label_4664h:
ld      hl,$d27e
inc     (hl)
res     3,(iy+$09)
ret     
label_466dh:
ld      a,$ff
ld      ($d2f8),a
ld      c,$00
ld      a,($d279)
cp      $06
jr      c,+          ; (+02h)
ld      c,$05
+:   
ld      a,($d27a)
cp      $12
jr      c,+          ; (+05h)
ld      a,c
add     a,$05
daa     
ld      c,a
+:   
ld      a,($d27b)
cp      $08
jr      c,+          ; (+05h)
ld      a,c
add     a,$05
daa     
ld      c,a
+:    
ld      a,($d27c)
cp      $08
jr      c,+          ; (+05h)
ld      a,c
add     a,$05
daa     
ld      c,a
+:   
ld      a,($d27d)
and     a
jr      nz,+         ; (+05h)
ld      a,c
add     a,$0a
daa     
ld      c,a
+:      
ld      a,c
cp      $30
jr      nz,+         ; (+08h)
ld      a,c
add     a,$0a
daa     
add     a,$0a
daa     
ld      c,a
+:   
ld      hl,$d2fa
ld      (hl),c
inc     hl
ld      (hl),$00
inc     hl
ld      (hl),$00
ld      hl,$49fa
call    _LABEL_5ED_132
ld      hl,$4a0c
call    _LABEL_5ED_132
ld      hl,$4a1e
call    _LABEL_5ED_132
ld      hl,$4a30
call    _LABEL_5ED_132
ld      hl,$4a3d
call    _LABEL_5ED_132
ld      hl,$4a4a
call    _LABEL_5ED_132
ld      hl,$4a57
call    _LABEL_5ED_132
ld      hl,$4a68
call    _LABEL_5ED_132
xor     a
ld      ($d217),a
ld      bc,$00b4
call    label_479eh
label_46fdh:   
ld      bc,$003c
call    label_479eh
ld      a,($d279)
and     a
jr      z,+          ; (+12h)
dec     a
ld      ($d279),a
ld      de,$0000
ld      c,$02
call    label_33A8h
ld      a,$02
rst     $28;play ring sound effect
jp      label_46fdh
+:    
ld      bc,$00b4
call    label_479eh
ld      a,$01
ld      ($d217),a
ld      hl,$4a78
call    _LABEL_5ED_132
ld      bc,$00b4
call    label_479eh
label_4732h:  
ld      bc,$001e
call    label_479eh
ld      a,($d240)
and     a
jr      z,+          ; (+12h)
dec     a
ld      ($d240),a
ld      de,$5000
ld      c,$00
call    label_33A8h
ld      a,$02
rst     $28
jp      label_4732h
+:  
ld      bc,$00b4
call    label_479eh
ld      a,$02
ld      ($d217),a
ld      hl,$4a88
call    _LABEL_5ED_132
ld      hl,$4a64
call    _LABEL_5ED_132
ld      bc,$00b4
call    label_479eh
label_476dh:   
ld      bc,$001e
call    label_479eh
ld      a,($d2fa)
and     a
jr      z,label_4797h          ; (+1eh)
dec     a
ld      c,a
and     $0f
cp      $0a
jr      c,+          ; (+04h)
ld      a,c
sub     $06
ld      c,a
+:      
ld      a,c
ld      ($d2fa),a
ld      de,$0000
ld      c,$01
call    label_33A8h
ld      a,$02
rst     $28
jp      label_476dh
label_4797h:   
ld      bc,$01e0
call    label_479eh
ret     
label_479eh:
push    bc
res     0,(iy+00)
call    _LABEL_2EF_104
ld      (iy+$0a),$00
ld      hl,$d000
ld      ($d236),hl
ld      hl,$d2bb
ld      de,$d2bf
ld      b,$04
call    label_49bch
ex      de,hl
ld      hl,($d236)
ld      c,$80
ld      b,$70
call    label_2fa6h
ld      ($d236),hl
ld      a,($d217)
and     a
jr      nz,label_4803h         ; (+34h)
ld      hl,$d279
ld      de,$d2bf
ld      b,$01
call    label_49bch
ex      de,hl
ld      hl,($d236)
ld      c,$80
ld      b,$50
call    label_2fa6h
ld      ($d236),hl
ld      hl,$4a98
ld      de,$d2bf
ld      b,$03
call    label_49bch
ex      de,hl
ld      hl,($d236)
ld      c,$90
ld      b,$50
call    label_2fa6h
ld      ($d236),hl
jr      label_483dh            ; (+3ah)
label_4803h:      
dec     a
jr      nz,label_4824h         ; (+1eh)
call    label_4973h
ld      hl,$4a9b
ld      de,$d2bf
ld      b,$03
call    label_49bch
ex      de,hl
ld      hl,($d236)
ld      c,$90
ld      b,$50
call    label_2fa6h
ld      ($d236),hl
jr      label_483dh            ; (+19h)
label_4824h:   
ld      hl,$d2fa
ld      de,$d2bf
ld      b,$03
call    label_49bch
ex      de,hl
ld      hl,($d236)
ld      c,$90
ld      b,$50
call    label_2fa6h
ld      ($d236),hl
label_483dh:      
pop     bc
dec     bc
ld      a,b
or      c
jp      nz,label_479eh
ret     
label_4845h:
ld      hl, $D2A9
ld      a,(hl)
and     a
ret     z

dec     a
ld      c,a
and     $0f
cp      $0a
jr      c,+          ; (+04h)
ld      a,c
sub     $06
ld      c,a
+:      
ld      (hl),c
ld      de,$0100
ld      c,$00
ld      a,(currentact)
cp      $1c
jr      c,+          ; (+08h)
ld      a,($d27f)
ld      d,a
ld      a,($d280)
ld      e,a
+:   
call    label_33A8h
ret     
label_4870h:
ld      hl,($d213)
ld      de,($d215)
ld      a,h
or      l
or      d
or      e
ret     z

ld      b,$03
ld      hl,$d215
scf     
-:     
 ld      a,(hl)
sbc     a,$00
ld      c,a
and     $0f
cp      $0a
jr      c,+          ; (+04h)
ld      a,c
sub     $06
ld      c,a
+:    
ld      a,c
cp      $a0
jr      c,+          ; (+02h)
sub     $60
+:    
ld      (hl),a
ccf     
dec     hl
djnz    -            ; (-1ah)
ld      de,$0100
ld      c,$00
call    label_33A8h
ret     

nop     
nop     
nop     
nop     
label_48a9h: 
ld      (iy+$0a),$00
ld      hl,$d000
ld      ($d236),hl
ld      hl,$d2bb
ld      de,$d2bf
ld      b,$04
call    label_49bch
ex      de,hl
ld      hl,($d236)
ld      c,$80
ld      b,$58
ld      a,(currentact)
cp      $1c
jr      c,+          ; (+04h)
ld      c,$80
ld      b,$50
+:   
call    label_2fa6h
ld      ($d236),hl
ld      hl,RingCounter
ld      de,$d2bf
ld      b,$01
call    label_49bch
ex      de,hl
ld      hl,($d236)
ld      c,$88
ld      b,$80
ld      a,(currentact)
cp      $1c
jr      c,+          ; (+04h)
ld      c,$80
ld      b,$68
+:   
call    label_2fa6h
ld      ($d236),hl
ld      a,(currentact)
cp      $1c
jr      c,label_4911h          ; (+0fh)
ld      hl,$d27f
ld      de,$d2bf
ld      b,$02
call    label_49bch
ld      b,$68
jr      +            ; (+0dh)
label_4911h:   
ld      hl,$445f
ld      de,$d2bf
ld      b,$02
call    label_49bch
ld      b,$80
+:    
ld      c,$a0
ex      de,hl
ld      hl,($d236)
call    label_2fa6h
ld      ($d236),hl
call    label_4973h
ld      a,(currentact)
cp      $1c
jr      nc,label_4959h         ; (+25h)
ld      hl,$d213
ld      de,$d2bf
ld      b,$04
call    label_49bch
ex      de,hl
ld      hl,($d236)
ld      c,$80
ld      b,$70
ld      a,(currentact)
cp      $1c
jr      c,+          ; (+04h)
ld      c,$78
ld      b,$78
+:  
call    label_2fa6h
ld      ($d236),hl
ret     
label_4959h:
ld      hl,$d27e
ld      de,$d2bf
ld      b,$01
call    label_49bch
ex      de,hl
ld      hl,($d236)
ld      c,$98
ld      b,$80
call    label_2fa6h
ld      ($d236),hl
ret     
label_4973h:
ld      a,($d240)
ld      l,a
ld      h,$00
ld      c,$0a
call    label_064dh
ld      a,l
add     a,a
add     a,$80
ld      ($d2bf),a
ld      c,$0a
call    label_063ah
ex      de,hl
ld      a,($d240)
ld      l,a
ld      h,$00
and     a
sbc     hl,de
ld      a,l
add     a,a
add     a,$80
ld      ($d2c0),a
ld      a,$ff
ld      ($d2c1),a
ld      c,$50
ld      b,$97
ld      a,(currentact)
cp      $13
jr      nz,+         ; (+04h)
ld      c,$80
ld      b,$50
 +:   
ld      hl,($d236)
ld      de,$d2bf
call    label_2fa6h
ld      ($d236),hl
ret     

label_49bch:     
ld      a,(hl)
and     $f0
jr      nz,label_49dch         ; (+1bh)
ld      a,$fe
ld      (de),a
inc     de
ld      a,(hl)
and     $0f
jr      nz,label_49e8h         ; (+1eh)
ld      a,$fe
ld      (de),a
inc     hl
inc     de
djnz    label_49bch            ; (-15h)
ld      a,$ff
ld      (de),a
dec     de
ld      a,$80
ld      (de),a
ld      hl,$d2bf
ret     

label_49dch: 
ld      a,(hl)
rrca    
 rrca    
rrca    
rrca    
and     $0f
add     a,a
add     a,$80
ld      (de),a
inc     de
label_49e8h:       
ld      a,(hl)
and     $0f
add     a,a
add     a,$80
ld      (de),a
inc     hl
inc     de
djnz    label_49dch            ; (-17h)
ld      a,$ff
ld      (de),a
ld      hl,$d2bf
ret

; Data from 42F2 to 7FFF (15630 bytes)
.incbin "49fa-4ad9.bin"
res     1,(iy+$08);clear invincible flag
bit     7,(ix+$18)
call    nz,label_50a4h
set     7,(iy+$07)
bit     0,(iy+$05)
jp      nz,label_56dfh
ld      a,($d413)
and     a
call    nz,label_5257h
res     5,(ix+$18)
bit     6,(iy+$06)
call    nz,label_5388h
ld      a,($d286)
and     a
call    nz,label_5936h
bit     0,(iy+$07)
call    nz,label_537eh
bit     0,(iy+$08)
call    nz,label_525ch
bit     4,(ix+$18)
call    nz,label_5276h
ld      a,($d285)
and     a
call    nz,label_552ch
ld      a,($d284)
and     a
jp      nz,label_5395h
bit     6,(iy+$08)
jp      nz,label_541eh
bit     7,(iy+$08)
call    nz,label_5543h
bit     4,(ix+$18)
jp      z,label_4b61h
ld      hl,$4ff3
ld      de,$d20f
ld      bc,$0009
ldir    
ld      hl,$0100
ld      ($d23a),hl
ld      hl,$fdc0
ld      ($d23c),hl
ld      hl,$000e
ld      ($d23e),hl
jp      label_4bebh
label_4b61h:   
ld      a,(ix+$15)
and     a
jr      nz,label_4bbfh         ; (+58h)
bit     0,(iy+$07)
label_4b6bh:     
jr      nz,+         ; (+26h)
label_4b6dh:
ld      hl,$4fe1
ld      de,$d20f
ld      bc,$0009
ldir    
ld      hl,$0300
ld      ($d23a),hl
ld      hl,$fd00
ld      ($d23c),hl
ld      hl,$0038
ld      ($d23e),hl
ld      hl,($dc0c)
ld      ($dc0a),hl
jp      label_4bebh
+:  
bit     7,(ix+$18)
jr      nz,label_4b6dh         ; (-2ch)
ld      hl,$4fea
ld      de,$0d20f
ld      bc,$0009
ldir    
ld      hl,$0c00
ld      ($d23a),hl
ld      hl,$fd00
ld      ($d23c),hl
ld      hl,$0038
ld      ($d23e),hl
ld      hl,($dc0c)
ld      ($dc0a),hl
jp      label_4bebh
label_4bbfh:  
ld      hl,$4ffc
ld      de,$0d20f
ld      bc,$0009
ldir    
ld      hl,$0600
ld      ($d23a),hl
ld      hl,$fd00
ld      ($d23c),hl
ld      hl,$0038
ld      ($d23e),hl
ld      hl,($dc0c)
inc     hl
ld      ($dc0a),hl
ld      a,($d224)
and     $03
call    z,label_5253h
label_4bebh: 
bit     1,(iy+03)
call    z,label_533fh
bit     1,(iy+03)
call    nz,label_5361h
ld      a,$05
ld      ($ffff),a
ld      ($d230),a
ld      bc,$0008
ld      de,$0010
ld      a,(currentact)
cp      $0f
jr      nz,+         ; (+03h)
ld      de,$0008
+:  
call    label_30d3h
ld      e,(hl)
ld      d,$00
ld      a,($d2d5)
add     a,a
ld      l,a
ld      h,d
ld      bc,$a200
add     hl,bc
ld      a,(hl)
inc     hl
ld      h,(hl)
ld      l,a
add     hl,de
add     hl,bc
ld      a,(hl)
cp      $1d
jr      nc,label_4c44h         ; (+18h)
add     a,a
ld      l,a
ld      h,d
ld      de,$5beb
add     hl,de
ld      a,(hl)
inc     hl
ld      h,(hl)
ld      l,a
ld      de,$4c44
ld      a,$02
ld      ($ffff),a
ld      ($d230),a
push    de
jp      (hl)
label_4c44h:   
ld      hl,(sonic_vertical_pos)
ld      de,$0024
add     hl,de
ex      de,hl
ld      hl,($d273)
ld      bc,$00c0
add     hl,bc
xor     a
sbc     hl,de
call    c,label_2ff2h
ld      hl,$0000
ld      a,(iy+03)
cp      $ff
jr      nz,+         ; (+12h)
ld      de,($d404)
ld      a,e
or      d
jr      nz,+         ; (+0ah)
ld      a,($d415)
rlca    
jr      nc,+         ; (+04h)
ld      hl,($d294)
inc     hl
+:   
ld      ($d294),hl
bit     7,(iy+06)
call    nz,label_5366h
ld      (ix+$14),$05
ld      hl,($d294)
ld      de,$0168
and     a
sbc     hl,de
call    nc,label_5383h
ld      a,(iy+03)
cp      $fe
push    af
call    z,$5144
pop     af
call    nz,label_523ah
bit     0,(ix+$18)
jp      nz,label_55d1h
ld      a,(ix+$0e)
cp      $20
jr      z,+          ; (+11h)
bit     2,(ix+$18)
jp      nz,+
ld      hl,(sonic_vertical_pos)
ld      de,$fff5
add     hl,de
ld      (sonic_vertical_pos),hl
+: 
ld      (ix+$0d),$10
ld      (ix+$0e),$20
ld      hl,($d404)
ld      b,(ix+09)
ld      c,$00
ld      e,c
ld      d,c
bit     3,(iy+03)
jp      z,label_5168h
bit     2,(iy+03)
jp      z,label_51c3h
ld      a,h
or      l
or      b
jr      z,label_4d3ch          ; (+5ch)
ld      (ix+$14),$01
bit     7,b
jr      nz,label_4d18h         ; (+30h)
ld      de,($d213)
ld      a,e
cpl     
ld      e,a
ld      a,d
cpl     
ld      d,a
inc     de
ld      c,$ff
push    hl
push    de
ld      de,($d23a)
xor     a
sbc     hl,de
pop     de
pop     hl
jr      c,label_4d3ch          ; (+3ah)
ld      de,($d20f)
ld      a,e
cpl     
ld      e,a
ld      a,d
cpl     
ld      d,a
inc     de
ld      c,$ff
ld      a,($d217)
ld      (ix+$14),a
jp      label_4d3ch
label_4d18h:
ld      de,($d213)
ld      c,$00
push    hl
push    de
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
inc     hl
ld      de,($d23a)
xor     a
sbc     hl,de
pop     de
pop     hl
jr      c,label_4d3ch          ; (+0ah)
ld      de,($d20f)
ld      a,($d217)
ld      (ix+$14),a
label_4d3ch:
ld      a,b
and     a
jp      m,label_4d59h
add     hl,de
adc     a,c
ld      c,a
jp      p,label_4d63h
ld      a,($d404)
or      (ix+08)
or      (ix+09)
jr      z,label_4d63h          ; (+11h)
ld      c,$00
ld      l,c
ld      h,c
jp      label_4d63h
label_4d59h:      
add     hl,de
adc     a,c
ld      c,a
jp      m,label_4d63h
ld      c,$00
ld      l,c
ld      h,c
label_4d63h:       
ld      a,c
ld      ($d404),hl
ld      ($d406),a
label_4d6ah:  
ld      hl,($d407)
ld      b,(ix+$0c)
ld      c,$00
ld      e,c
ld      d,c
bit     7,(ix+$18)
call    nz,label_531ch
bit     0,(ix+$18)
jp      nz,label_56aah
ld      a,($d288)
and     a
jr      nz,label_4d9ah         ; (+12h)
bit     7,(ix+$18)
jr      z,label_4dbeh          ; (+30h)
bit     3,(ix+$18)
jr      nz,label_4d9ah         ; (+06h)
bit     5,(iy+$03)
jr      z,label_4dbeh          ; (+24h)
label_4d9ah: 
bit     5,(iy+$03)
jr      nz,label_4dc5h         ; (+25h)
label_4da0h:   
ld      a,($d288)
and     a
call    z,label_530ah
ld      hl,($d23c)
ld      b,$ff
ld      c,$00
ld      e,c
ld      d,c
ld      a,($d288)
dec     a
ld      ($d288),a
set     2,(ix+$18)
jp      label_4ddfh
label_4dbeh:  
res     3,(ix+$18)
jp      label_4dc9h
label_4dc5h: 
set     3,(ix+$18)
label_4dc9h:
xor     a
ld      ($d288),a
label_4dcdh:    
bit     7,h
jr      nz,label_4dd9h         ; (+08h)
ld      a,($d216)
cp      h
jr      z,label_4ddfh          ; (+08h)
jr      c,label_4ddfh          ; (+06h)
label_4dd9h: 
ld      de,($d23e)
ld      c,$00
label_4ddfh: 
bit     0,(iy+$06)
jr      z,label_4df7h          ; (+12h)
push    hl
ld      a,e
 cpl     
ld      e,a
ld      a,d
cpl     
ld      d,a
ld      a,c
cpl     
ld      hl,$0001
add     hl,de
ex      de,hl
adc     a,$00
ld      c,a
pop     hl
label_4df7h:      
add     hl,de
ld      a,b
adc     a,c
ld      ($d407),hl
ld      ($d409),a
push    hl
ld      a,e
cpl     
ld      l,a
ld      a,d
cpl     
ld      h,a
ld      a,c
cpl     
ld      de,$0001
add     hl,de
adc     a,$00
ld      ($d2e7),hl
ld      ($d2e9),a
pop     hl
bit     2,(ix+$18)
call    nz,label_5527h
ld      a,h
and     a
jp      p,label_4e29h
ld      a,h
cpl     
ld      h,a
ld      a,l
cpl     
ld      l,a
inc     hl
label_4e29h:   
ld      de,$0100
ex      de,hl
and     a
sbc     hl,de
jr      nc,label_4e49h         ; (+17h)
ld      a,($d415)
and     $85
jr      nz,label_4e49h         ; (+10h)
bit     7,(ix+$0c)
jr      z,label_4e45h          ; (+06h)
ld      (ix+$14),$13
jr      label_4e49h            ; (+04h)
label_4e45h:  
ld      (ix+$14),$01
label_4e49h:    
ld      bc,$0008
ld      de,$0008
call    label_30d3h
ld      a,(hl)
and     $7f
cp      $79
call    nc,label_500ah
label_4e5ah:   
ld      a,($d286)
and     a
call    nz,label_543eh
bit     6,(iy+$06)
call    nz,label_5447h
bit     2,(iy+$08)
call    nz,label_5468h
ld      a,($d411)
cp      $0a
call    z,label_547eh
ld      l,(ix+$14)
ld      c,l
ld      h,$00
add     hl,hl
ld      de,$5c65
add     hl,de
ld      e,(hl)
inc     hl
ld      d,(hl)
ld      ($d40e),de
ld      a,($d2e0)
sub     c
call    nz,label_54a8h
ld      a,($d410)
label_4e93h:    
ld      h,$00
ld      l,a
add     hl,de
ld      a,(hl)
and     a
jp      p,label_4ea4h
inc     hl
ld      a,(hl)
ld      ($d410),a
jp      label_4e93h
label_4ea4h:       
ld      d,a
ld      bc,$4000
bit     1,(ix+$18)
jr      z,label_4eb1h          ; (+03h)
ld      bc,$5800
label_4eb1h: 
bit     5,(iy+$06)
call    nz,label_5491h
ld      a,($d2fd)
and     a
call    nz,label_5063h
ld      a,d
rrca    
rrca    
ld      e,a
and     $c0
ld      l,a
ld      a,e
xor     l
ld      h,a
ld      e,l
ld      d,h
add     hl,hl
add     hl,de
add     hl,bc
ld      ($d289),hl
ld      a,$10
ld      ($d28d),a
ld      hl,$5c25
bit     0,(iy+$06)
call    nz,label_54a3h
ld      a,($d2fd)
and     a
call    nz,label_5069h
ld      ($d40c),hl
ld      c,$0a
ld      a,($d405)
and     a
jp      p,label_4ef7h
neg     
ld      c,$f6
label_4ef7h:     
cp      $0a
jr      c,label_4effh          ; (+04h)
ld      a,c
ld      ($d405),a
label_4effh:    
ld      c,$0c
ld      a,($d408)
and     a
jp      p,label_4f0ch
neg     
ld      c,$f4
label_4f0ch:     
cp      $0c
jr      c,label_4f14h          ; (+04h)
ld      a,c
ld      ($d408),a
label_4f14h:  
bit     7,(iy+06)
call    nz,label_54adh
bit     0,(iy+08)
call    nz,label_50a9h
ld      a,($d2e2)
and     a
call    nz,label_54bah
ld      a,($d322)
and     a
call    nz,label_506dh
bit     2,(ix+$18)
call    nz,label_5005h
bit     1,(iy+$06)
jr      nz,label_4f97h         ; (+5ah)
ld      hl,($d26d)
ld      bc,$0030
add     hl,bc
ex      de,hl
ld      hl,(sonic_horizontal_pos)
and     a
sbc     hl,de
jr      nc,label_4f65h         ; (+18h)
ld      (sonic_horizontal_pos),de
ld      a,($d406)
and     a
jp      p,label_4f97h
xor     a
ld      ($d404),a
ld      ($d405),a
ld      ($d406),a
jp      label_4f97h
label_4f65h:   
ld      hl,($d26f)
ld      de,$00d0
add     hl,de
ex      de,hl
ld      hl,(sonic_horizontal_pos)
ld      c,$10
add     hl,bc
and     a
sbc     hl,de
jr      c,label_4f97h          ; (+1fh)
ex      de,hl
scf     
sbc     hl,bc
ld      (sonic_horizontal_pos),hl
ld      a,($d406)
and     a
jp      m,label_4f97h
ld      hl,($d405)
or      h
or      l
jr      z,label_4f97h          ; (+0ah)
xor     a
ld      ($d404),a
ld      ($d405),a
ld      ($d406),a
label_4f97h:   
ld      a,($d415)
ld      ($d2ba),a
ld      a,($d411)
ld      ($d2e0),a
ld      d,$01
ld      c,$30
cp      $01
jr      z,label_4fb7h          ; (+0ch)
ld      d,$04
ld      c,$46
cp      $09
jr      z,label_4fb7h          ; (+04h)
inc     (ix+$13)
ret     
label_4fb7h:
ld      a,($d2e1)
ld      b,a
ld      hl,($d404)
bit     7,h
jr      z,label_4fc9h          ; (+07h)
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
inc     hl
label_4fc9h:     
srl     h
rr      l
ld      a,l
add     a,b
ld      ($d2e1),a
ld      a,h
adc     a,d
adc     a,(ix+$13)
ld      ($d410),a
cp      c
ret     c

sub     c
ld      ($d410),a
ret     
.incbin "4fe1-5004.bin"
label_5005h:
ld      (ix+$0e),$19
ret     
label_500ah:
ex      de,hl
ld      hl,(sonic_vertical_pos)
ld      bc,($d257)
and     a
sbc     hl,bc
ret     c

ld      bc,$0010
and     a
 sbc     hl,bc
ret     c

ld      hl,(sonic_horizontal_pos)
ld      bc,$0008
add     hl,bc
ld      a,(de)
ld      c,a
ld      a,l
rrca    
rrca    
rrca    
rrca    
and     $01
inc     a
ld      b,a
ld      a,c
and     b
ret     z

ld      a,l
and     $f0
ld      l,a
ld      ($d2ab),hl
ld      ($d31e),hl
ld      a,c
xor     b
ld      (de),a
ld      hl,(sonic_vertical_pos)
ld      bc,$0008
add     hl,bc
ld      a,l
and     $e0
add     a,$08
ld      l,a
ld      ($d2ad),hl
ld      ($d320),hl
ld      a,$06
ld      ($d322),a
ld      hl,$5c5d
ld      ($d2af),hl
ld      a,$01
call    label_337ch
ret     
label_5063h:
dec     a
ld      d,a
ld      bc,$7000
ret     
label_5069h:
ld      hl,$0000
ret     
label_506dh:
dec     a
ld      ($d322),a
ld      hl,($d31e)
ld      ($d20f),hl
ld      hl,($d320)
ld      ($d211),hl
ld      hl,$0000
ld      ($d213),hl
ld      hl,$fffe
ld      ($d215),hl
cp      $03
jr      c,label_509eh          ; (+11h)
ld      a,$b2
call    label_2f5bh
ld      hl,$0008
ld      ($d213),hl
ld      hl,$0002
ld      ($d215),hl
label_509eh:     
ld      a,$5a
call    label_2f5bh
ret     
label_50a4h:
set     1,(iy+$08)
ret     
label_50a9h:
ld      hl,(sonic_horizontal_pos)
ld      bc,($d405)
ld      de,$0005
add     hl,de
add     hl,bc
ld      ($d20f),hl
ld      hl,(sonic_vertical_pos)
ld      bc,($d408)
ld      de,$0009
add     hl,de
add     hl,bc
ld      ($d211),hl
ld      hl,$d2f4
ld      a,$94
call    label_50d8h
ld      hl,$d2f5
ld      a,$96
call    label_50d8h
ret     
label_50d8h:
push    hl
push    af
ld      e,(hl)
ld      d,$00
ld      hl,$5114
add     hl,de
ld      e,(hl)
bit     7,e
jr      z,+          ; (+01h)
dec     d
+:
ld      ($d213),de
inc     hl
ld      d,$00
ld      e,(hl)
ld      hl,$0000
bit     7,e
jr      z,+          ; (+01h)
dec     d
+:   
ld      a,($d415)
and     $05
jr      z,+          ; (+03h)
ld      hl,$fffc
+:     
add     hl,de
ld      ($d215),hl
pop     af
call    label_2f5bh
pop     hl
ld      a,(hl)
add     a,$02
cp      $30
jr      c,+          ; (+01h)
xor     a
+:       
ld      (hl),a
ret     
.incbin "5114-5149.bin"
ld      a,($d415)
rlca    
ret     nc

ld      (ix+$14),$0c
ld      de,($d2b8)
bit     7,d
jr      nz,+         ; (+07h)
ld      hl,$0030
and     a
sbc     hl,de
ret     c
+:
inc     de
ld      ($d2b8),de
ret     
label_5168h:
 res     1,(ix+$18)
bit     7,b
jr      nz,label_5198h         ; (+28h)
ld      de,($d20f)
ld      c,$00
ld      (ix+$14),$01
push    hl
exx     
pop     hl
ld      de,($d23a)
xor     a
sbc     hl,de
exx     
jp      c,label_4d3ch
ld      b,a
ld      e,a
ld      d,a
ld      c,a
ld      hl,($d23a)
ld      a,($d217)
ld      (ix+$14),a
jp      label_4d3ch
label_5198h:  
set     1,(ix+$18)
ld      (ix+$14),$0a
push    hl
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
inc     hl
ld      de,$0100
and     a
sbc     hl,de
pop     hl
ld      de,($d211)
ld      c,$00
jp      nc,label_4d3ch
res     1,(ix+$18)
ld      (ix+$14),$01
jp      label_4d3ch
label_51c3h:
set     1,(ix+$18)
ld      a,l
or      h
jr      z,+          ; (+04h)
bit     7,b
jr      z,label_520dh          ; (+3eh)
+: 
ld      de,($d20f)
ld      a,e
cpl     
ld      e,a
ld      a,d
cpl     
ld      d,a
inc     de
ld      c,$ff
ld      (ix+$14),$01
push    hl
exx     
pop     hl
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
inc     hl
ld      de,($d23a)
xor     a
sbc     hl,de
exx     
jp      c,label_4d3ch
ld      e,a
ld      d,a
ld      c,a
ld      hl,($d23a)
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
inc     hl
ld      b,$ff
ld      a,($d217)
ld      (ix+$14),a
jp      label_4d3ch
label_520dh: 
res     1,(ix+$18)
ld      (ix+$14),$0a
ld      de,($d211)
ld      a,e
cpl     
ld      e,a
ld      a,d
cpl     
ld      d,a
inc     de
ld      c,$ff
push    hl
exx     
pop     hl
ld      bc,$0100
and     a
sbc     hl,bc
exx     
jp      nc,label_4d3ch
set     1,(ix+$18)
ld      (ix+$14),$01
jp      label_4d3ch
label_523ah:
bit     0,(ix+$18)
ret     nz

ld      hl,($d2b8)
ld      a,h
or      l
ret     z

bit     7,h
jr      z,+          ; (+05h)
inc     hl
ld      ($d2b8),hl
ret     
+:
dec     hl
ld      ($d2b8),hl
ret     
label_5253h:
dec     (ix+$15)
ret     
label_5257h:
dec     a
ld      ($d413),a
ret     
label_525ch:
ld      a,($d224)
and     $03
ret     nz

ld      hl,$d287
dec     (hl)
ret     nz

res     0,(iy+08)
ld      a,($d2d3)
cp      $09
ret     z

ld      a,($d2f7)
rst     $18
ret     
label_5276h:
ld      a,($d2d5)
cp      $03
ret     nz

ld      a,(currentact);get the current level
cp      $0b;check to see if we're in Labyrinth act 3
ret     z;if not, then return

ld      hl,($d296);load the underwater timer
inc     hl
ld      ($d296),hl
ld      de,$0300
and     a
sbc     hl,de
ret     c

ld      a,$05
sub     h
jr      nc,label_52beh         ; (+29h)
res     5,(iy+06)
res     6,(iy+06)
res     0,(iy+08)
set     3,(iy+08)
set     0,(iy+05)
ld      a,$c0
ld      ($d281),a
ld      a,$0a;play death jingle
rst     $18
call    $91f4
call    $91f4
call    $91f4
call    $91f4
xor     a
label_52beh:     
ld      e,a
add     a,a
add     a,$80
ld      ($d2bf),a
ld      a,$ff
ld      ($d2c0),a
ld      d,$00
ld      hl,$5304
add     hl,de
ld      a,($d224)
and     (hl)
jr      nz,+         ; (+03h)
ld      a,$1a;play button sfx
rst     $28
+:  
ld      a,($d224)
rrca    
ret     nc

ld      hl,(sonic_horizontal_pos)
ld      de,($d254)
and     a
sbc     hl,de
ld      a,l
add     a,$04
ld      c,a
ld      hl,(sonic_vertical_pos)
ld      de,($d257)
and     a
sbc     hl,de
ld      a,l
add     a,$ec
ld      b,a
ld      hl,$d03c
ld      de,$d2bf
call    label_2fa6h
ret     

ld      bc,$0f07
rra     
ccf     
ld      a,a
label_530ah:
ld      a,$10
ld      ($d288),a
ld      a,$00;play jumping sound
rst     $28
ret     

xor     a
ld      ($d3fe),a
ld      (sonic_horizontal_pos),de
ret     
label_531ch:
exx     
ld      hl,(sonic_vertical_pos)
ld      ($d2da),hl
exx     
bit     2,(ix+$18)
ret     z

res     2,(ix+$18)
bit     0,(iy+07)
ret     nz

exx     
ld      hl,(sonic_vertical_pos)
ld      de,$fff5
add     hl,de
ld      (sonic_vertical_pos),hl
exx     
ret     
label_533fh:
bit     2,(ix+$18)
ret     nz

bit     0,(ix+$18)
ret     nz

bit     7,(ix+$18)
ret     z

set     0,(ix+$18)
ld      hl,($d404)
ld      a,l
or      h
jr      z,+          ; (+03h)
ld      a,$06;play jumping from ramp sfx
rst     $28
+: 
set     2,(iy+$07)
ret     
label_5361h:
res     2,(iy+$07)
ret     

label_5366h:
ld      hl,($d2dd)
ld      de,(sonic_vertical_pos)
and     a
sbc     hl,de
jp      c,label_584fh
ld      hl,$0000
ld      ($d296),hl
res     4,(ix+$18)
ret     
label_537eh:
set     2,(ix+$18)
ret     
label_5383h:
ld      (ix+$14),$0d
ret     
label_5388h:
ld      (iy+03),$ff
ld      a,($d415)
and     $fa
ld      ($d415),a
ret     
label_5395h:
dec     a
ld      ($d284),a
jr      z,label_53c0h          ; (+25h)
cp      $14
jr      c,label_53b5h          ; (+16h)
xor     a
ld      l,a
ld      h,a
ld      ($d404),a
ld      ($d405),hl
ld      ($d407),a
ld      ($d408),hl
ld      (ix+$14),$0f
jp      label_4e5ah
label_53b5h:  
res     1,(ix+$18)
ld      (ix+$14),$0e
jp      label_4e5ah
label_53c0h:  
ld      hl,($d2d6)
ld      b,(hl)
inc     hl
ld      c,(hl)
inc     hl
ld      a,(hl)
and     a
jr      z,label_53ech          ; (+21h)
jp      m,label_53d7h
ld      ($d2d4),a
set     4,(iy+06)
jr      label_53dbh            ; (+04h)
label_53d7h: 
set     2,(iy+$0d)
label_53dbh:     
ld      a,$01
ld      ($d283),a;set End of act flag
ld      hl,$0000;clear sonic's current position
ld      (sonic_horizontal_pos),hl
ld      (sonic_vertical_pos),hl
jp      label_4e5ah
label_53ech:     
ld      a,b
ld      h,$00
ld      b,$05
-:     
add     a,a
rl      h
djnz    -            ; (-05h)
ld      l,a
ld      de,$0008
add     hl,de
ld      (sonic_horizontal_pos),hl
ld      a,c
ld      h,$00
add     a,a
rl      h
add     a,a
rl      h
add     a,a
rl      h
add     a,a
rl      h
add     a,a
rl      h
ld      l,a
ld      (sonic_vertical_pos),hl
xor     a
ld      ($d3fe),a
ld      ($d401),a
jp      label_4e5ah
label_541eh:      
xor     a
ld      l,a
ld      h,a
ld      ($d407),hl
ld      ($d409),a
ld      (ix+$14),$16
ld      a,($d410)
cp      $12
jp      c,label_4e5ah
res     6,(iy+08)
set     2,(ix+$18)
jp      label_4e5ah
label_543eh:
dec     a
ld      ($d286),a
ld      (ix+$14),$11
ret     
label_5447h:
ld      (ix+$0d),$14
ld      (ix+$14),$10
bit     7,(ix+$0c)
ret     nz

bit     7,(ix+$18)
ret     z

res     6,(iy+06)
xor     a
ld      ($d404),a
ld      ($d405),a
ld      ($d406),a
ret     
label_5468h:
ld      a,($d415)
and     $fa
ld      ($d415),a
ld      (ix+$14),$14
ld      hl,$d2f6
dec     (hl)
ret     nz

res     2,(iy+$08)
ret     
label_547eh:
ld      a,($d413)
and     a
ret     nz

bit     7,(ix+$18)
ret     z

ld      a,$03
rst     $28;play skid sfx
ld      a,$3c
ld      ($d413),a
ret     
label_5491h:
ld      a,($d224)
rrca    
ret     c

ld      bc,$5800
ld      d,$23
ld      a,($d415)
and     $05
ret     z

inc     d
ret     
label_54a3h:
ld      de,$000e
add     hl,de
ret     
label_54a8h:
ld      (ix+$13),$00
ret     
label_54adh:
bit     4,(ix+$18)
ret     z

ld      a,($d224)
and     a
call    z,$91f4
ret     
label_54bah:
dec     a
ld      ($d2e2),a
ld      c,(iy+$0a)
ld      hl,($d236)
push    bc
push    hl
ld      hl,$d000
ld      ($d236),hl
ld      de,($d257)
ld      hl,($d2e5)
ld      ($d211),hl
and     a
sbc     hl,de
ex      de,hl
ld      bc,($d254)
ld      hl,($d2e3)
ld      ($d20f),hl
and     a
sbc     hl,bc
cp      $06
jr      c,label_54efh          ; (+04h)
cp      $0a
jr      c,label_54f7h          ; (+08h)
label_54efh:      
push    af
ld      bc,$5515
call    _LABEL_2F05_119
pop     af
label_54f7h:   
ld      hl,$000c
ld      ($d213),hl
ld      c,a
ld      b,$00
ld      hl,$fff0
add     hl,bc
ld      ($d215),hl
ld      a,$50
call    label_2f5bh
pop     hl
pop     bc
ld      ($d236),hl
ld      (iy+$0a),c
ret     

nop     
ld      (bc),a
inc     b
ld      b,$ff
rst     $38
jr      nz,label_553fh         ; (+22h)
inc     h
ld      h,$ff
rst     $38
rst     $38
rst     $38
rst     $38
rst     $38
rst     $38
rst     $38
label_5527h:
ld      (ix+$14),$09
ret     
label_552ch:
dec     a
ld      ($d285),a
ret     nz

ld      a,($d2f7)
rst     $18
ld      c,(iy+$0a)
res     0,(iy+$00)
call    _LABEL_2EF_104
label_553fh:   
ld      (iy+$0a),c
ret     
label_5543h:
ld      (iy+03),$fb
ld      hl,(sonic_horizontal_pos)
ld      de,$1b60
and     a
sbc     hl,de
ret     nc

ld      (iy+03),$ff
ld      hl,($d404)
ld      a,l
or      h
ret     nz

res     1,(ix+$18)
pop     hl
set     1,(ix+$18)
ld      (ix+$14),$18
ld      hl,$d2f9
bit     0,(iy+$0d)
jr      nz,label_55aeh         ; (+3dh)
ld      (hl),$50
call    $7cb6h
jp      c,label_4e5ah
push    ix
push    hl
pop     ix
xor     a
ld      (ix+00),$54
ld      (ix+$11),a
ld      (ix+$18),a
ld      (ix+01),a
ld      hl,(sonic_horizontal_pos)
ld      (ix+02),l
ld      (ix+03),h
ld      (ix+04),a
ld      hl,(sonic_vertical_pos)
ld      de,$000e
add     hl,de
ld      (ix+05),l
ld      (ix+06),h
pop     ix
set     0,(iy+$0d)
jp      label_4e5ah
label_55aeh:  
bit     1,(iy+$0d)
jr      nz,label_55beh         ; (+0ah)
dec     (hl)
jp      nz,label_4e5ah
set     1,(iy+$0d)
ld      (hl),$8c
label_55beh: 
ld      (ix+$14),$17
ld      a,(hl)
and     a
jr      z,label_55cah          ; (+04h)
dec     (hl)
jp      label_4e5ah
label_55cah: 
ld      (ix+$14),$19
jp      label_4e5ah
label_55d1h:
ld      a,(ix+$0e)
cp      $15
jr      z,label_55e2h          ; (+0ah)
ld      hl,(sonic_vertical_pos)
ld      de,$000b
add     hl,de
ld      (sonic_vertical_pos),hl
label_55e2h: 
ld      (ix+$0d),$10
ld      (ix+$0e),$15
ld      hl,($d404)
ld      b,(ix+$09)
ld      c,$00
ld      e,c
ld      d,c
ld      a,h
or      l
or      b
jp      z,label_565ch
ld      (ix+$14),$09
bit     2,(iy+03)
jr      nz,label_5624h         ; (+20h)
bit     1,(iy+03)
jr      z,label_5624h          ; (+1ah)
bit     7,(ix+$18)
jp      z,label_561ch
bit     7,b
jr      nz,label_564ah         ; (+35h)
res     0,(ix+$18)
jp      label_520dh
label_561ch:   
ld      de,$fff0
ld      c,$ff
jp      label_4d3ch
label_5624h:  
bit     3,(iy+03)
jr      nz,label_564ah         ; (+20h)
bit     1,(iy+03)
jr      z,label_564ah          ; (+1ah)
bit     7,(ix+$18)
jp      z,label_5642h
bit     7,b
jr      z,label_564ah          ; (+0fh)
res     0,(ix+$18)
jp      label_520dh
label_5642h:   
ld      de,$0010
ld      c,$00
jp      label_4d3ch
label_564ah:   
ld      de,$0004
ld      c,$00
ld      a,b
and     a
jp      m,label_4d3ch
ld      de,$fffc
ld      c,$ff
jp      label_4d3ch
label_565ch: 
bit     7,(ix+$18)
jr      z,label_5683h          ; (+21h)
ld      (ix+$14),$07
res     0,(ix+$18)
ld      de,($d2b8)
bit     7,d
jr      z,label_567bh          ; (+09h)
ld      hl,$ffd8
and     a
sbc     hl,de
jp      nc,label_4d6ah
label_567bh:      
dec     de
ld      ($d2b8),de
jp      label_4d6ah
label_5683h: 
ld      (ix+$14),$09
push    de
push    hl
bit     7,b
jr      z,label_5694h          ; (+07h)
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
inc     hl
label_5694h: 
ld      de,($d23a)
xor     a
sbc     hl,de
pop     hl
pop     de
jp      c,label_4d3ch
ld      c,a
ld      e,c
ld      d,c
ld      (ix+$14),$09
jp      label_4d3ch
label_56aah:
bit     7,(ix+$18)
jr      z,label_56d1h          ; (+21h)
bit     3,(ix+$18)
jr      nz,label_56bch         ; (+06h)
bit     5,(iy+03)
jr      z,label_56d1h          ; (+15h)
label_56bch: 
bit     5,(iy+03)
jr      nz,label_56d8h         ; (+16h)
res     0,(ix+$18)
ld      a,($d404)
and     $f8
ld      ($d404),a
jp      label_4da0h
label_56d1h:  
res     3,(ix+$18)
jp      label_4dcdh
label_56d8h: 
set     3,(ix+$18)
jp      label_4dcdh
label_56dfh:
set     5,(ix+$18)
set     1,(ix+$18)
ld      a,($d281)
cp      $60
jr      z,label_5751h          ; (+63h)
ld      hl,($d257)
ld      de,$00c0
add     hl,de
ld      de,(sonic_vertical_pos)
sbc     hl,de
jr      nc,label_5713h         ; (+16h)
bit     2,(iy+06)
jr      nz,label_5713h         ; (+10h)
ld      a,$01
ld      ($d27d),a
ld      hl,$0d240
dec     (hl)
set     2,(iy+06)
jp      label_5751h
label_5713h:     
xor     a
ld      hl,$0080
bit     3,(iy+08)
jr      nz,label_5742h         ; (+25h)
ld      de,($d407)
bit     7,d
jr      nz,label_572dh         ; (+08h)
ld      hl,$0600
and     a
sbc     hl,de
jr      c,label_5748h          ; (+1bh)
label_572dh:      
ex      de,hl
ld      b,(ix+$0c)
ld      a,h
cp      $80
jr      nc,label_573ah         ; (+04h)
cp      $08
jr      nc,label_573fh         ; (+05h)
label_573ah:   
ld      de,$0020
ld      c,$00
label_573fh:      
add     hl,de
ld      a,b
adc     a,c
label_5742h:   
ld      ($d407),hl
ld      ($d409),a
label_5748h:       
xor     a
ld      l,a
ld      h,a
ld      ($d404),hl
ld      ($d406),a
label_5751h: 
ld      (ix+$14),$0b
bit     3,(iy+08)
jp      z,label_4e5ah
ld      (ix+$14),$15
jp      label_4e5ah
bit     7,(iy+06)
ret     nz

res     4,(ix+$18)
ret     

bit     0,(iy+05)
jp      z,label_2fd7h
ret     

ld      a,(ix+02)
add     a,$08
and     $1f
cp      $1a
ret     c

ld      a,($d415)
rrca    
jr      c,label_5788h          ; (+03h)
and     $02
ret     z
label_5788h:
ld      l,(ix+07)
ld      h,(ix+08)
bit     7,(ix+09)
ret     nz

ld      de,$0301
and     a
sbc     hl,de
ret     c

ld      l,(ix+08)
ld      h,(ix+09)
add     hl,hl
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
inc     hl
ld      (ix+$0a),$00
ld      (ix+$0b),l
ld      (ix+$0c),h
ld      a,$05;play jumping from ramp sfx
rst     $28
ret     

ld      a,(ix+02)
add     a,$08
and     $1f
cp      $10
ret     c

ld      (ix+07),$00
ld      (ix+08),$f8
ld      (ix+09),$ff
set     1,(ix+$18)
ld      a,$04
rst     $28
ret     

ld      a,(ix+02)
add     a,$08
and     $1f
cp      $10
ret     c

bit     7,(ix+$18)
ret     z

ld      a,($d2ba)
and     $80
ret     nz

res     6,(iy+06)
ld      (ix+$0a),$00
ld      (ix+$0b),$f4
ld      (ix+$0c),$ff
ld      a,$04
rst     $28
ret     

ld      a,(ix+02)
add     a,$08
and     $1f
cp      $10
ret     nc

res     6,(iy+06)
ld      (ix+07),$00
ld      (ix+08),$08
ld      (ix+09),$00
res     1,(ix+$18)
ld      a,$04
rst     $28
ret     

bit     7,(ix+$18)
ret     z

ld      hl,($d3fe)
ld      a,($d400)
ld      de,$fe80
add     hl,de
adc     a,$ff
ld      ($d3fe),hl
ld      ($d400),a
ret     
bit     7,(ix+$18)
ret     z

ld      hl,($d3fe)
ld      a,($d400)
ld      de,$0200
add     hl,de
adc     a,$00
ld      ($d3fe),hl
ld      ($d400),a
ret     

label_584fh:
bit     4,(ix+$18)
jr      nz,label_5858h         ; (+03h)
ld      a,$12
rst     $28;play splash sfx
label_5858h: 
set     4,(ix+$18)
ret     

ld      a,(ix+02)
add     a,$08
and     $1f
cp      $08
ret     c

cp      $18
ret     nc

bit     7,(ix+$18)
ret     z

ld      a,($d2ba)
and     $80
ret     nz

res     6,(iy+06)
ld      (ix+$0a),$00
ld      (ix+$0b),$f4
ld      (ix+$0c),$ff
ld      a,$04
rst     $28
ret     

bit     7,(ix+$0c)
ret     nz

ld      a,$05
rst     $28
ret     

bit     4,(iy+06)
ret     nz

ld      a,(sonic_horizontal_pos)
add     a,$08
and     $1f
cp      $08
ret     c

cp      $18
ret     nc

ld      hl,(sonic_horizontal_pos)
ld      bc,$0008
add     hl,bc
ld      a,l
add     a,a
rl      h
add     a,a
rl      h
add     a,a
rl      h
ld      e,h
ld      hl,(sonic_vertical_pos)
ld      bc,$0010
add     hl,bc
ld      a,l
add     a,a
rl      h
add     a,a
rl      h
add     a,a
rl      h
ld      d,h
ld      hl,$58ea
ld      b,$05
label_58cdh:     
ld      a,(hl)
inc     hl
cp      e
jr      nz,label_58e3h         ; (+11h)
ld      a,(hl)
cp      d
jr      nz,label_58e3h         ; (+0dh)
inc     hl
ld      ($d2d6),hl
ld      a,$50
ld      ($d284),a
ld      a,$06
rst     $28
ret 
label_58e3h:
inc     hl
inc     hl
inc     hl
inc     hl
djnz    label_58cdh            ; (-1ch)
ret  

.incbin "58ea-5902.bin"
ld      hl,($d404)
ld      a,($d406)
ld      de,$fff8
add     hl,de
adc     a,$ff
ld      ($d404),hl
ld      ($d406),a
bit     4,(ix+$18)
jr      nz,label_591eh         ; (+03h)
ld      a,$12;play splash sfx
rst     $28
label_591eh:  
set     4,(ix+$18)
ret     

xor     a
ld      hl,$0005
ld      ($d404),a
ld      ($d405),hl
res     1,(ix+$18)
label_5931h:     
ld      a,$06
ld      ($d286),a
label_5936h:
ld      a,(iy+03)
or      $0f
ld      (iy+03),a
ld      hl,$0004
ld      ($d408),hl
res     0,(ix+$18)
res     2,(ix+$18)
ret     

xor     a
ld      hl,$0006
ld      ($d404),a
ld      ($d405),hl
res     1,(ix+$18)
jr      label_5931h            ; (-2ch)
xor     a
ld      hl,$fffb
ld      ($d404),a
ld      ($d405),hl
set     1,(ix+$18)
jr      label_5931h            ; (-3ch)
xor     a
ld      hl,$fffa
ld      ($d404),a
ld      ($d405),hl
set     1,(ix+$18)
jr      label_5931h            ; (-4ch)
ld      a,($d2e2)
cp      $08
ret     nc

call    label_59d6h
ld      de,$0001
ld      hl,($d407)
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
ld      a,($d409)
cpl     
add     hl,de
adc     a,$00
and     a
jp      p,label_59a3h
ld      de,$ffc8
add     hl,de
adc     a,$ff
label_59a3h:   
ld      ($d407),hl
ld      ($d409),a
ld      bc,$0008
ld      hl,(sonic_horizontal_pos)
add     hl,bc
ld      a,l
and     $e0
ld      l,a
ld      ($d2e3),hl
ld      bc,$0010
ld      hl,(sonic_vertical_pos)
add     hl,bc
ld      a,l
and     $e0
ld      l,a
ld      ($d2e5),hl
ld      a,$10
ld      ($d2e2),a
ld      de,$0010
ld      c,$00
call    label_33A8h
ld      a,$07;play bumper sfx
rst     $28
ret     

label_59d6h: 
ld      hl,($d404)
ld      a,($d406)
ld      c,a
and     $80
ld      b,a
ld      a,(sonic_horizontal_pos)
add     a,$08
and     $1f
sub     $10
and     $80
cp      b
jr      z,label_59f7h          ; (+09h)
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
ld      a,c
cpl     
ld      c,a
label_59f7h:  
ld      de,$0001
ld      a,c
add     hl,de
adc     a,$00
ld      e,l
ld      d,h
ld      c,a
sra     c
rr      d
rr      e
add     hl,de
adc     a,c
ld      ($d404),hl
ld      ($d406),a
ret     

;---collision with vertical spring in special stage---
ld      (ix+$0a),$00;set Sonic in the air
ld      (ix+$0b),$f6;set sonic's vertical velocity
ld      (ix+$0c),$ff
ld      a,$04;play spring sfx
rst     $28
ret     

ld      (ix+$0a),$00
ld      (ix+$0b),$f4
ld      (ix+$0c),$ff
ld      a,$04
rst     $28
ret     

ld      (ix+$0a),$00;set Sonic in the air
ld      (ix+$0b),$f2
ld      (ix+$0c),$ff
ld      a,$04
rst     $28
ret     

ld      a,($d2b1)
and     a
ret     nz

call    label_5a82h
ld      de,$0001
ld      hl,($d404)
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
ld      a,($d406)
cpl     
add     hl,de
adc     a,$00
ld      de,$ff00
ld      c,$ff
jp      m,label_5a68h
ld      de,$0100
ld      c,$00
label_5a68h:      
add     hl,de
adc     a,c
ld      ($d404),hl
ld      ($d406),a
label_5a70h:  
ld      hl,$d2b1
ld      (hl),$04
inc     hl
ld      (hl),$0e
inc     hl
ld      (hl),$ff
inc     hl
ld      (hl),$0f
ld      a,$07
rst     $28;play bumper sound effect
ret     

label_5a82h: 
ld      a,($d406)
and     a
ld      de,$fff0
jp      p,label_5a8fh
ld      de,$0020
label_5a8fh:   
ld      hl,(sonic_horizontal_pos)
ld      bc,$0008
add     hl,bc
ld      a,l
and     $e0
ld      l,a
add     hl,de
ld      (sonic_horizontal_pos),hl
ret     

ld      a,($d2b1)
and     a
ret     nz

call    label_5a82h
call    label_59d6h
ld      de,$0001
ld      hl,($d407)
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
ld      a,($d409)
cpl     
add     hl,de
adc     a,$00
and     a
jp      p,label_5ac7h
ld      de,$ffc8
add     hl,de
adc     a,$ff
label_5ac7h:   
ld      ($d407),hl
ld      ($d409),a
jp      label_5a70h
ld      hl,($d2ea)
ld      de,$0082
and     a
sbc     hl,de
ret     c

bit     0,(iy+05)
jp      z,label_2fd7h
ret     

ld      a,($d415)
rlca    
ret     nc
label_5af5h:
ld      hl,(sonic_horizontal_pos)
ld      bc,$0008
add     hl,bc
ld      a,l
and     $1f
cp      $10
jr      nc,label_5b37h         ; (+42h)
ld      hl,(sonic_horizontal_pos)
ld      bc,$0008
add     hl,bc
ld      a,l
and     $e0
ld      c,a
ld      b,h
ld      hl,(sonic_vertical_pos)
ld      de,$0010
add     hl,de
ld      a,l
and     $e0
ld      e,a
ld      d,h
call    label_5b77h
ret     c

ld      bc,$0008
ld      de,$0010
call    label_30d3h
ld      c,$00
ld      a,(hl)
cp      $8a
jr      z,label_5b23h          ; (+02h)
ld      c,$89
label_5b23h:      
ld      (hl),c
ret     

ld      a,($d415)
rlca    
ret     nc

ld      hl,(sonic_horizontal_pos)
ld      bc,$0008
add     hl,bc
ld      a,l
and     $1f
cp      $10
ret     c
label_5b37h:
ld      a,l
and     $e0
add     a,$10
ld      c,a
ld      b,h
ld      hl,(sonic_vertical_pos)
ld      de,$0010
add     hl,de
ld      a,l
and     $e0
ld      e,a
ld      d,h
call    label_5b77h
ret     c

ld      bc,$0008
ld      de,$0010
call    label_30d3h
ld      c,$00
ld      a,(hl)
cp      $89
jr      z,label_5b23h          ; (-3bh)
ld      c,$8a
ld      (hl),c
ret     

ld      a,($d415)
rlca    
ret     nc

ld      hl,(sonic_horizontal_pos)
ld      bc,$0008
add     hl,bc
ld      a,l
and     $1f
cp      $10
ret     nc

jp      $5af5h
label_5b77h:       
push    bc
push    de
call    $7cb6h
pop     de
pop     bc
ret     c

push    ix
push    hl
pop     ix
xor     a
ld      (ix+00),$2e
ld      (ix+01),a
ld      (ix+02),c
ld      (ix+03),b
ld      (ix+04),a
ld      (ix+05),e
ld      (ix+$06),d
ld      (ix+$07),a
ld      (ix+$08),a
ld      (ix+$09),a
ld      (ix+$0a),a;clear Sonic's vertical position
ld      (ix+$0b),a;clear Sonic's horizontal position
ld      (ix+$0c),a
ld      (ix+$18),a
pop     ix
and     a
ret     

bit     7,(ix+$18)
ret     z

ld      hl,(sonic_vertical_pos)
ld      de,($d257)
and     a
sbc     hl,de
ret     nc

ld      (iy+03),$ff
ret     

ld      hl,($d2ea)
ld      de,$0082
and     a
sbc     hl,de
ret     c

ld      hl,(sonic_horizontal_pos)
ld      de,$0008
add     hl,de
ld      a,l
and     $1f
cp      $06
ret     c

cp      $1a
ret     nc

bit     0,(iy+$05)
jp      z,label_2fd7h
ret 
.incbin "5beb-5dea.bin"
ld      (ix+$0d),$14
ld      (ix+$0e),$18
call    label_6093h
ld      hl,$0003
ld      ($d215),hl
call    label_3326h
jr      c,label_5e13h          ; (+12h)
call    label_60d6h
jr      c,label_5e13h          ; (+0dh)
label_5e06h:
ld      a,$10
call    label_337ch

label_5e0bh:
xor     a
ld      (ix+$0f),a
ld      (ix+$10),a
ret     
label_5e13h:
ld      hl,$5200
label_5e16h:
call    label_0b83h
ld      (ix+$0f),$a1
ld      (ix+$10),$5e
ld      a,($d224)
and     $07
cp      $05
ret     nc

ld      (ix+$0f),$ae
ld      (ix+$10),$5e
ld      l,(ix+01)
ld      h,(ix+02)
ld      a,(ix+03)
ld      e,(ix+07)
ld      d,(ix+08)
add     hl,de
adc     a,(ix+09)
ld      l,h
ld      h,a
ld      ($d20f),hl
ld      l,(ix+04)
ld      h,(ix+05)
ld      a,(ix+06)
bit     7,(ix+$18)
jr      nz,label_5e62h         ; (+0ah)
ld      e,(ix+$0a)
ld      d,(ix+$0b)
add     hl,de
adc     a,(ix+$0c)
label_5e62h:      
ld      l,h
ld      h,a
ld      ($d211),hl
ld      hl,$0004
ld      ($d213),hl
ld      hl,$0000
ld      ($d215),hl
ld      a,$5c
call    label_2f5bh
ld      hl,$000c
ld      ($d213),hl
ld      a,$5e
call    label_2f5bh
bit     1,(ix+$18)
ret     z

ld      l,(ix+$0a)
ld      h,(ix+$0b)
ld      a,(ix+$0c)
ld      de,$0040
add     hl,de
adc     a,$00
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),a
ret     
.incbin "5ea1-5eba.bin"

;Speed shoes monitor logic
ld      (ix+$0d),$14
ld      (ix+$0e),$18
call    label_6093h
ld      hl,$0003
ld      ($d215),hl
call    label_3326h
jr      c,label_5ee1h          ; (+10h)
call    label_60d6h
jr      c,label_5ee1h          ; (+0bh)
ld      a,$F0
ld      ($d412),a;set speed shoes flag
ld      a,$02 ;play ring sfx why?
rst     $28
jp      label_5e0bh

label_5ee1h:   
ld      hl,$5280
jp      label_5e16h
ld      (ix+$0d),$14
ld      (ix+$0e),$18
call    label_6093h
ld      hl,$d306
call    checkcurrentact
ld      a,(hl)
and     c
jr      z,label_5f03h          ; (+07h)
ld      (ix+$00),$ff
jp      label_5e0bh
label_5f03h:   
ld      hl,$0003
ld      ($d215),hl
call    label_3326h
jr      c,label_5f3ch         ; (+2eh)
call    label_60d6h
jr      c,label_5f3ch          ; (+29h)
bit     2,(ix+$18)
jp      nz,label_5e06h
ld      hl,$d240
inc     (hl)
ld      hl,$0d306
call    checkcurrentact
ld      a,(hl)
or      c
ld      (hl),a
xor     a
ld      (ix+$0f),a
ld      (ix+$10),a
ld      a,$09;play extra life sfx
rst     $28
ld      a,(currentact)
cp      $1c
ret     nc

ld      hl,$d27a
inc     (hl)
ret     
label_5f3ch:
ld      a,(currentact)
cp      $04
jr      z,label_5f55h          ; (+12h)
cp      $09
jr      z,label_5f7eh          ; (+37h)
cp      $0c
jr      z,label_5f9ah          ; (+4fh)
cp      $11
jr      z,shield_monitor          ; (+5dh)
label_5f4fh:  
ld      hl,$5300
jp      label_5e16h
label_5f55h:    
ld      c,$00
ld      de,$0040
ld      a,(ix+$13)
cp      $3c
jr      c,label_5f65h          ; (+04h)
dec     c
ld      de,$ffc0
label_5f65h:   
ld      (ix+$0a),e
ld      (ix+$0b),d
ld      (ix+$0c),c
inc     (ix+$13)
ld      a,(ix+$13)
cp      $50
jr      c,label_5f4fh          ; (-29h)
ld      (ix+$13),$28
jr      label_5f4fh            ; (-2fh)
label_5f7eh: 
set     2,(ix+$18)
ld      hl,$d318
call    checkcurrentact
ld      a,(hl)
ld      hl,$5200
and     c
jp      z,label_5e16h
res     2,(ix+$18)
ld      hl,$5300
jp      label_5e16h
label_5f9ah: 
set     1,(ix+$18)
ld      (ix+$07),$80;d406
ld      (ix+08),$00;d407
ld      (ix+09),$00;d408
jr      label_5f4fh            ; (-5dh)
shield_monitor:  
ld      a,($d27a)
cp      $11
jr      nc,label_5f4fh         ; (-64h)
ld      (ix+$00),$ff
jr      label_5f4fh            ; (-6ah)
ld      (ix+$0d),$14
ld      (ix+$0e),$18
call    label_6093h
ld      hl,$0003
ld      ($d215),hl
call    label_3326h
jr      c,invincible_monitor          ; (+0ch)
call    label_60d6h
jr      c,invincible_monitor          ; (+07h)
set     5,(iy+$06);set shield flag
jp      label_5e0bh
invincible_monitor:  
ld      hl,$5380
jp      label_5e16h
ld      (ix+$0d),$14
ld      (ix+$0e),$18
call    label_6093h
ld      hl,$0003
ld      ($d215),hl
call    label_3326h
jr      c,label_6014h          ; (+1dh)
call    label_60d6h
jr      c,label_6014h          ; (+18h)
set     0,(iy+08);set the invincible flag
ld      a,$f0
ld      ($d287),a
ld      a,$18
ld      ($d2f4),a
xor     a
ld      ($d2f5),a
ld      a,$08;play invincible jingle
rst     $18
jp      label_5e0bh
label_6014h:   ;checkpoint monitor
ld      hl,$5400
jp      label_5e16h
ld      (ix+$0d),$14
ld      (ix+$0e),$18
call    label_6093h
ld      hl,$0003
ld      ($d215),hl
call    label_3326h
jr      c,label_6065h         ; (+35h)
call    label_60d6h
jr      c,label_6065h          ; (+30h)
ld      hl,$d312
call    checkcurrentact
ld      a,(hl)
or      c
ld      (hl),a
ld      a,(currentact);check the current act
add     a,a
ld      e,a
ld      d,$00
ld      hl,$d32f
add     hl,de
ex      de,hl
ld      l,(ix+$02);get Sonic's horizontal position in the level
ld      h,(ix+03)
add     hl,hl
add     hl,hl
add     hl,hl
ld      a,h
ld      (de),a
inc     de
ld      l,(ix+05);get Sonic's vertical position in the level
ld      h,(ix+06)
add     hl,hl
add     hl,hl
add     hl,hl
ld      a,h
dec     a
ld      (de),a
jp      label_5e0bh
label_6065h:  ;continue monitor
ld      hl,$5500
jp      label_5e16h
ld      (ix+$0d),$14
ld      (ix+$0e),$18
call    label_6093h
ld      hl,$0003
ld      ($d215),hl
call    label_3326h
jr      c,label_608dh          ; (+0ch)
call    label_60d6h
jr      c,label_608dh          ; (+07h)
set     3,(iy+09);give sonic a continue
jp      label_5e0bh;clear monitor object?
label_608dh:  
ld      hl,$5580
jp      label_5e16h
label_6093h: 
bit     0,(ix+$18)
ret     nz

ld      a,($d2d5)
and     a
jr      nz,label_60b1h         ; (+13h)
ld      bc,$0000
ld      e,c
ld      d,b
call    label_30d3h
ld      de,$0016
ld      bc,$0016
ld      a,(hl)
cp      $b0
jr      z,label_60b7h          ; (+06h)
label_60b1h:  
ld      de,$0004
ld      bc,$0000
label_60b7h:  
ld      l,(ix+02)
ld      h,(ix+03)
add     hl,de
ld      (ix+02),l
ld      (ix+03),h
ld      l,(ix+05)
ld      h,(ix+06)
add     hl,bc
ld      (ix+05),l
ld      (ix+06),h
set     0,(ix+$18)
ret     
label_60d6h:
ld      hl,$0804
ld      ($d20f),hl
ld      a,($d415)
and     $01
jr      nz,label_6134h         ; (+51h)
ld      de,(sonic_horizontal_pos)
ld      c,(ix+02)
ld      b,(ix+03)
ld      hl,$fff6
add     hl,bc
and     a
sbc     hl,de
jr      nc,label_6158h         ; (+62h)
ld      hl,$0010
add     hl,bc
and     a
sbc     hl,de
jr      c,label_6158h          ; (+59h)
ld      a,($d415)
and     $04
jr      nz,label_612dh         ; (+27h)
ld      l,(ix+05)
ld      h,(ix+06)
ld      a,($d40b)
ld      c,a
xor     a
ld      b,a
sbc     hl,bc
ld      (sonic_vertical_pos),hl
ld      ($d288),a
ld      a,($d2e9)
ld      hl,($d2e7)
ld      ($d407),hl
ld      ($d409),a
ld      hl,$d415
set     7,(hl)
scf     
ret 
    
label_612dh:
ld      a,($d409)
and     a
jp      m,label_6139h

label_6134h:  
call    Destroybadniklogic
and     a
ret 
    
label_6139h:
ld      (ix+$0a),$80
ld      (ix+$0b),$fe
ld      (ix+$0c),$ff
ld      hl,$0400
xor     a
ld      ($d407),hl
ld      ($d409),a
ld      ($d288),a;prevent Sonic from jumping
set     1,(ix+$18);set Sonic in his rolling state
scf     
ret
     
label_6158h:
ld      hl,(sonic_horizontal_pos)
ld      de,$0008
add     hl,de
ex      de,hl
ld      l,(ix+02)
ld      h,(ix+03)
ld      bc,$000a
add     hl,bc
ld      bc,$fff3
and     a
sbc     hl,de
jr      nc,label_6175h         ; (+03h)
ld      bc,$0015
 
label_6175h:   
ld      l,(ix+02)
ld      h,(ix+03)
add     hl,bc
ld      (sonic_horizontal_pos),hl
xor     a
ld      ($d3fe),a
ld      l,a
ld      h,a
ld      ($d404),a
ld      ($d405),hl
scf     
ret     

ld      hl,$d30c
call    checkcurrentact
ld      a,(hl)
and     c
jr      nz,label_61c9h         ; (+32h)
ld      (ix+$0d),$0c
ld      (ix+$0e),$11
call    label_6093h
xor     a
ld      (ix+$0f),a
ld      (ix+$10),a
ld      hl,$0202
ld      ($d215),hl
call    label_3326h
jr      c,label_61ceh          ; (+1ah)
ld      hl,$d30c
call    checkcurrentact
ld      a,(hl)
or      c
ld      (hl),a
ld      hl,$d279
inc     (hl);give Sonic a chaos emerald
ld      a,$fe
ld      ($d285),a
ld      a,$14;play chaos emerald jingle
rst     $18
label_61c9h: 
ld      (ix+00),$ff
ret     
label_61ceh:
ld      a,($d224)
rrca 
jr      c,label_61dch          ; (+08h)
ld      (ix+$0f),$fb
ld      (ix+$10),$61
label_61dch:  
ld      l,(ix+$0a)
ld      h,(ix+$0b)
ld      a,(ix+$0c)
ld      de,$0020
add     hl,de
adc     a,$00
ld      (ix+$0a),l;$D407
ld      (ix+$0b),h;D408
ld      (ix+$0c),a;d409
ld      hl,$5480
call    label_0b83h
ret 
 
.incbin "61fb-6201.bin";Chaos Emerald art

.include "object_logic/signpost.asm"
.include "object_logic/crabmeat.asm"
.include "object_logic/ghzswing.asm"
.include "object_logic/explosion.asm" 

;***GHZ platform that moves left to right*** 
set     5,(ix+$18)
ld      (ix+$0d),$1a
ld      (ix+$0e),$10
ld      hl,$691a
ld      a,($d2d5)
and     a
jr      z,+          ; (+03h)
ld      hl,$692c

+:
ld      (ix+$0f),l
ld      (ix+$10),h
ld      a,($d409)
and     a
jp      m,label_6a46h
ld      hl,$0806
ld      ($d215),hl
call    $3326
jr      c,label_6a46h          ; (+1fh)
ld      de,$0000
ld      a,(ix+05)
and     $1f
cp      $10
jr      nc,+         ; (+02h)
ld      e,$80

+:
ld      (ix+$0a),e
ld      (ix+$0b),d
ld      (ix+$0c),$00
ld      bc,$0010
call    $7cfc
ret 
    
label_6a46h:
ld      c,$00
ld      l,c
ld      h,c
ld      a,(ix+05)
and     $1f
jr      z,+          ; (+04h)
ld      hl,$ffc0
dec     c

+: 
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),c
ret 

set     5,(ix+$18)
bit     0,(ix+$18)
jr      nz,+        ; (+10h)
ld      a,(ix+05)
ld      (ix+$11),a
ld      a,(ix+06)
ld      (ix+$12),a
set     0,(ix+$18)

+: 
bit     1,(ix+$18) 
jr      z,label_6a9ch          ; (+1dh)
ld      hl,($d257)
ld      bc,$fff0
add     hl,bc
ld      e,(ix+05)
ld      d,(ix+06)
xor     a
sbc     hl,de
jr      nc,label_6a98h         ; (+07h)
ld      (ix+$0f),a
ld      (ix+$10),a
ret

label_6a98h:
res     1,(ix+$18)

label_6a9ch:
ld      a,(ix+$16)
add     a,(ix+$17)
ld      (ix+$17),a
cp      $18 
jr      c,label_6ac0h          ; (+17h)
ld      l,(ix+$0a)
ld      h,(ix+$0b)
ld      a,(ix+$0c)
ld      de,$0040
add     hl,de
adc     a,d
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),a

label_6ac0h: 
ld      (ix+$0d),$1a
ld      (ix+$0e),$10
ld      a,($d409)
and     a  
jp      m,label_6aeah
ld      hl,$0806
ld      ($d215),hl
call    $3326
jr      c,label_6aeah          ; (+10h)
ld      (ix+$16),$01
ld      bc,$0010
ld      e,(ix+$0a)
ld      d,(ix+$0b)
call    $7cfc

label_6aeah: 
ld      hl,$691a
ld      a,($d2d5)
and     a
jr      z,+          ; (+03h)
ld      hl,$692c

+: 
ld      (ix+$0f),l
ld      (ix+$10),h
ld      hl,($d257)
ld      de,$00a8
add     hl,de
ld      e,(ix+05)
ld      d,(ix+06)
xor     a
sbc     hl,de
ret     nc

ld      (ix+$0a),a
ld      (ix+$0b),a
ld      (ix+$0c),a
ld      (ix+$16),a
ld      (ix+$17),a
ld      (ix+04),a
ld      a,(ix+$11)
ld      (ix+05),a
ld      a,(ix+$12)
ld      (ix+06),a
set     1,(ix+$18)
ret    

set     5,(ix+$18)
ld      (ix+$0d),$02
ld      (ix+$0e),$02
ld      hl,$0303
ld      ($d215),hl
call    $3326
call    nc,label_2fd7h
ld      l,(ix+$0a)
ld      h,(ix+$0b)
ld      a,(ix+$0c)
ld      e,(ix+$13)
ld      d,(ix+$14)
add     hl,de
adc     a,$00
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),a
ld      l,(ix+02)
ld      h,(ix+03)
ld      ($d20f),hl
ld      l,(ix+05)
ld      h,(ix+06)
ld      ($d211),hl
ld      hl,$0000
ld      ($d213),hl
ld      ($d215),hl
ld      (ix+$0f),l
ld      (ix+$10),h
ld      hl,$6be1
ld      a,($d238)
cp      $05
jr      z,label_6b95h          ; (+07h)
cp      $0b
jr      z,label_6b95h          ; (+03h)
ld      hl,$6bdf

label_6b95h:
ld      a,($d224)
and     $01
ld      e,a
ld      d,$00
add     hl,de
ld      a,(hl)
call    label_2f5bh
ld      c,(ix+02)
ld      b,(ix+03)
ld      l,c
ld      h,b
ld      de,$fff8
add     hl,de
ld      de,($d254)
and     a
sbc     hl,de
jr      c,label_6bdah          ; (+23h)
inc     d
ex      de,hl
sbc     hl,bc
jr      c,label_6bdah          ; (+1dh)
ld      c,(ix+05)
ld      b,(ix+06)
ld      l,c
ld      h,b
ld      de,$0010
add     hl,de
ld      de,($d257)
and     a
sbc     hl,de
jr      c,label_6bdah          ; (+08h)
ld      hl,$00c0
add     hl,de
and     a
sbc     hl,bc
ret     nc

label_6bdah:
ld      (ix+$00),$ff
ret  

ld      b,$08
inc     (hl)
ld      (hl),$dd
rr      b
xor     $dd
rr      b
ld      b,(hl)
jr      nz,label_6c1ah         ; (+2dh)
ld      e,(ix+02)
ld      d,(ix+03)
ld      (ix+$14),e
ld      (ix+$15),d
xor     a
ld      (ix+$0f),a
ld      (ix+$10),a
ld      (ix+$12),a
ld      (ix+07),a
ld      (ix+08),a
ld      (ix+09),a
ld      hl,($d254)
ld      bc,$0100
add     hl,bc
sbc     hl,de
ret     nc

set     0,(ix+$18)

label_6c1ah:
ld      (ix+$0d),$14
ld      (ix+$0e),$20
ld      l,(ix+02)
ld      h,(ix+03)
ld      de,(sonic_horizontal_pos)
and     a
sbc     hl,de
jr      c,label_6c43h          ; (+12h)
ld      de,$0040
sbc     hl,de
jr      nc,label_6c43h         ; (+0bh)
ld      a,(ix+$12)
cp      $05
jr      nc,label_6c43h         ; (+04h)
ld      (ix+$12),$05
label_6c43h:
ld      e,(ix+$12)
ld      d,$00
ld      hl,$6d46
.incbin "10.bin"


.BANK 2 SLOT 2
.ORG $0000


; Data from 8000 to BFFF (16384 bytes)
.incbin "8000-8069.bin";8000-8069
.include "object_logic/Junglezonebosslogic.asm"
.include "object_logic/bridgezonebosslogic.asm"

set     5,(ix+$18)
bit     0,(ix+$18)
jr      nz,+         ; (+18h)
ld      (ix+$11),$1c
ld      l,(ix+02)
ld      h,(ix+03)
ld      de,$fff0
add     hl,de
ld      (ix+02),l
ld      (ix+03),h
set     0,(ix+$18)
+:   
ld      l,(ix+$14)
ld      h,(ix+$15)
ld      a,(ix+$16)
ld      e,(ix+$12)
ld      d,(ix+$13)
ld      c,$00
bit     7,d
jr      z,+          ; (+01h)
dec     c
+:    
add     hl,de
adc     a,c
ld      (ix+$14),l
ld      (ix+$15),h
ld      (ix+$16),a
ld      c,h
ld      b,a
ld      hl,$0038
add     hl,de
ld      (ix+$12),l
ld      (ix+$13),h
bit     7,h
jr      nz,label_872fh         ; (+5ch)
rlca    
jr      c,label_872fh          ; (+59h)
ld      a,(ix+$11)
and     a
jr      z,label_871bh          ; (+3fh)
bit     1,(ix+$18)
jr      z,label_8708h          ; (+26h)
ld      a,l
or      h
jr      nz,label_86f4h         ; (+0eh)
ld      a,($d2e9)
ld      hl,($d2e7)
ld      ($d407),hl
ld      ($d409),a
jr      label_8708h            ; (+14h)
label_86f4h:    
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
inc     hl
ld      de,($d2e7)
add     hl,de
ld      ($d407),hl
ld      a,$ff
ld      ($d409),a
label_8708h:  
ld      a,$1c
sub     c
ld      (ix+$11),a
jr      z,+          ; (+02h)
jr      nc,label_872fh         ; (+1dh)
+: 
bit     1,(ix+$18)
jr      z,label_871bh          ; (+03h)
ld      a,$04;play spring sound effect
rst     $28
label_871bh:  
xor     a
ld      (ix+$11),a
ld      (ix+$12),a
ld      (ix+$13),a
ld      (ix+$14),a
ld      (ix+$15),$1c
ld      (ix+$16),a
label_872fh:  
ld      l,(ix+02)
ld      h,(ix+03)
ld      ($d20f),hl
ld      l,(ix+05)
ld      h,(ix+06)
ld      ($d211),hl
ld      hl,$0000
ld      ($d213),hl
ld      l,(ix+$11)
ld      de,$0010
add     hl,de
ld      ($d215),hl
ld      hl,$8844
call    label_882eh
ld      hl,$0028
ld      ($d213),hl
ld      a,$1c
sub     (ix+$11)
ld      l,a
ld      h,$00
ld      de,$0010
add     hl,de
ld      ($d215),hl
ld      hl,$8844
call    label_882eh
ld      hl,$002c
ld      ($d213),hl
ld      l,(ix+$15)
ld      h,(ix+$16)
ld      ($d215),hl
ld      hl,$8848
call    label_882eh
res     1,(ix+$18)
ld      (ix+$0d),$14
ld      a,$02
ld      ($d215),a
ld      a,(ix+$11)
ld      c,a
add     a,$08
ld      (ix+$0e),a
ld      a,c
add     a,$04
ld      ($d216),a
call    $3326
jr      nc,label_87d0h         ; (+28h)
ld      a,($d409)
and     a
ret     m

ld      (ix+$0d),$3c
ld      a,$2a
ld      ($d215),a
ld      a,$1c
sub     (ix+$11)
add     a,$08
ld      (ix+$0e),a
ld      a,$1c
sub     (ix+$11)
add     a,$04
ld      ($d216),a
call    label_3326h
jr      nc,label_8801h         ; (+32h)
ret     
label_87d0h:
set     1,(ix+$18)
ld      a,($d409)
and     a
ret     m

ld      a,(ix+$11)
cp      $1c
jr      z,label_8801h          ; (+21h)
ld      hl,($d407)
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
inc     hl
ld      (ix+$12),l
ld      (ix+$13),h
ld      a,($d408)
add     a,(ix+$11)
ld      (ix+$11),a
cp      $1c
jr      c,label_880dh          ; (+10h)
ld      (ix+$11),$1c
label_8801h: 
ld      a,($d2e9)
ld      hl,($d2e7)
ld      ($d407),hl
ld      ($d409),a
label_880dh:   
ld      l,(ix+05)
ld      h,(ix+06)
ld      bc,$0010
add     hl,bc
ld      a,($d216)
sub     $04
ld      c,a
add     hl,bc
ld      a,($d40b)
ld      c,a
xor     a
sbc     hl,bc
ld      (sonic_vertical_pos),hl
ld      hl,$d415
set     7,(hl)
ret     
label_882eh:
ld      a,(hl)
and     a
ret     m

push    hl
call    label_2f5bh
ld      hl,($d213)
ld      de,$0008
add     hl,de
ld      ($d213),hl
pop     hl
inc     hl
jp      label_882eh
ld      (hl),$38
ld      a,($3cff)
ld      a,$ff
set     5,(ix+$18)
ld      a,(ix+$11)
cp      $80
jr      nc,label_8887h         ; (+31h)
ld      (ix+$07),$20
ld      (ix+$08),$00
ld      (ix+$09),$00
ld      (ix+$0d),$14
ld      (ix+$0e),$0c
ld      hl,$0a02
ld      ($d215),hl
call    $3326
ld      hl,$0008
ld      ($d20f),hl
call    nc,$2fbf
ld      de,$88d2
ld      bc,$88c8
call    $7c7c
jr      label_88b6h            ; (+2fh)
label_8887h: 
ld      (ix+07),$e0
ld      (ix+08),$ff
ld      (ix+09),$ff
ld      (ix+$0d),$0c
ld      (ix+$0e),$0c
ld      hl,$0202
ld      ($d215),hl
call    $3326
ld      hl,$0000
ld      ($d20f),hl
call    nc,$2fbf
ld      de,$88d2
ld      bc,$88cd
call    $7c7c
label_88b6h:   
ld      a,($d224)
and     $07
ret     nz

inc     (ix+$11)
call    $0663
and     $1e
call    z,$91f4
ret     
.incbin "88c8-890e.bin";88c8-890e

.include "object_logic/Jaws.asm"
.include "object_logic/spearlogic.asm"

res     5,(ix+$18)
ld      (ix+$0d),$04
ld      (ix+$0e),$0a
bit     0,(ix+$18)
jr      nz,label_8c7eh         ; (+45h)
ld      l,(ix+$02)
ld      h,(ix+$03)
ld      de,$000a
add     hl,de
ld      (ix+02),l
ld      (ix+03),h
ld      (ix+$12),l
ld      (ix+$13),h
ld      l,(ix+05)
ld      h,(ix+06)
ld      de,$0008
add     hl,de
ld      (ix+05),l
ld      (ix+06),h
ld      (ix+$14),l
ld      (ix+$15),h
ld      (ix+$11),$96
set     0,(ix+$18)
ld      bc,$0000
ld      e,c
ld      d,b
call    label_30d3h
ld      a,(hl)
cp      $52
jr      z,label_8c7eh          ; (+04h)
set     1,(ix+$18)
label_8c7eh:
ld      a,(ix+$11)
and     a
jr      z,label_8c9dh          ; (+19h)
dec     (ix+$11)
jr      z,label_8c9ah 
label_8c89h:         ; (+11h)
xor     a
ld      (ix+$0f),a
ld      (ix+$10),a
ld      (ix+$07),a
ld      (ix+$08),a
ld      (ix+$09),a
ret
     
label_8c9ah:
ld      a,$18
rst     $28;play gargoyle projectile sound effect

label_8c9dh:
xor     a
bit     1,(ix+$18)
jr      nz,label_8cbah         ; (+16h)
ld      (ix+07),$00
ld      (ix+08),$ff
ld      (ix+09),$ff
ld      (ix+$0f),$49
ld      (ix+$10),$8d
jr      label_8ccch 
label_8cbah:           ; (+12h)
ld      (ix+07),a
ld      (ix+08),$01
ld      (ix+09),a
ld      (ix+$0f),$51
ld      (ix+$10),$8d
label_8ccch:  
ld      (ix+$0a),a
ld      (ix+$0b),a
ld      (ix+$0c),a
bit     6,(ix+$18)
jr      nz,label_8d2ah         ; (+4fh)
bit     7,(ix+$18)
jr      nz,label_8d2ah         ; (+49h)
ld      hl,$0402
ld      ($d215),hl
call    $3326
call    nc,label_2fd7h
ld      e,(ix+02)
ld      d,(ix+03)
ld      hl,($d254)
ld      bc,$fff0
add     hl,bc
and     a
sbc     hl,de
jr      nc,label_8d2ah         ; (+2bh)
ld      hl,($d254)
ld      bc,$0110
add     hl,bc
and     a
sbc     hl,de
jr      c,label_8d2ah          ; (+1fh)
ld      e,(ix+05)
ld      d,(ix+06)
ld      hl,($d257)
ld      bc,$fff0
add     hl,bc
and     a
sbc     hl,de
jr      nc,label_8d2ah         ; (+0dh)
ld      hl,($d257)
ld      bc,$00d0
add     hl,bc
and     a
sbc     hl,de
jr      c,label_8d2ah          ; (+01h)
ret     
label_8d2ah:
ld      l,(ix+$12)
ld      h,(ix+$13)
ld      (ix+02),l
ld      (ix+03),h
ld      l,(ix+$14)
ld      h,(ix+$15)
ld      (ix+05),l
ld      (ix+06),h
ld      (ix+$11),$96
jp      label_8c89h
.incbin "Art/badnik/gargoyle_projectile.bin";gargoyle projectile compressed art

set     5,(ix+$18)
ld      a,(ix+$11)
ld      e,a
ld      d,$00
ld      hl,$8e49
add     hl,de
ld      e,(hl)
ld      a,d
bit     7,e
jr      z,+         ; (+02h)
dec     a
dec     d
+:
ld      l,(ix+04)
ld      h,(ix+05)
add     hl,de
adc     a,(ix+06)
ld      (ix+04),l
ld      (ix+05),h
ld      (ix+06),a
ld      l,h
ld      h,(ix+06)
ld      a,($d224)
and     $0f
jr      nz,label_8d9ah         ; (+0eh)
inc     (ix+$11)
ld      a,(ix+$11)
cp      $20
jr      c,label_8d9ah          ; (+04h)
ld      (ix+$11),$00
label_8d9ah:  
ld      ($d2dd),hl
ld      de,($d257)
and     a
ld      a,$ff
sbc     hl,de
jr      c,label_8dbbh          ; (+13h)
ex      de,hl
ld      hl,$000c
ld      a,$ff
sbc     hl,de
jr      nc,label_8dbbh         ; (+09h)
ld      hl,$00b4
xor     a
sbc     hl,de
jr      c,label_8dbbh          ; (+01h)
ld      a,e
label_8dbbh:
ld      ($d2dc),a
and     a
ret     z

cp      $ff
ret     z

add     a,$09
ld      l,a
ld      h,$00
ld      ($d215),hl
ld      hl,($d254)
ld      ($d20f),hl
ld      hl,($d257)
ld      ($d211),hl
ld      a,(iy+$0a)
ld      hl,($d236)
push    af
push    hl
ld      hl,$d000
ld      ($d236),hl
ld      a,(ix+$12)
add     a,a
ld      c,a
ld      b,$00
ld      hl,$8e3d
add     hl,bc
ld      b,$02
 -:   
push    bc
ld      c,(hl)
inc     hl
push    hl
ld      a,(ix+$13)
add     a,c
ld      l,a
ld      h,$00
ld      ($d213),hl
ld      a,$00
call    label_2f5bh
ld      hl,($d213)
ld      de,$0008
add     hl,de
ld      ($d213),hl
ld      a,$02
call    label_2f5bh
pop     hl
pop     bc
djnz    -            ; (-26h)
pop     hl
pop     af
ld      ($d236),hl
ld      (iy+$0a),a
inc     (ix+$12)
ld      a,(ix+$12)
cp      $06
ret     c

ld      (ix+$12),$00
ld      a,(ix+$13)
add     a,$02
ld      (ix+$13),a
cp      $10
ret     c

ld      (ix+$13),$00
ret

.incbin "Art/spikeball.bin";load spikeball art
set     5,(ix+$18)
ld      a,(ix+$12)
and     $7f
jr      nz,label_8e85h         ; (+11h)
call    $0663
and     $07
ld      e,a
ld      d,$00
ld      hl,$8ec6
add     hl,de
bit     0,(hl)
call    nz,$91f4

label_8e85h:  
ld      de,$8e9b
ld      bc,$8e92
call    $7c7c
inc     (ix+$12)
ret     

.incbin "8e92-8ed1.bin";8e92-8ed1 Jaws' bubbles

.include "object_logic/burrowbotlogic.asm"
set     5,(ix+$18)
ld      (ix+$0d),$14
ld      (ix+$0e),$1c
ld      (ix+$0f),$e7
ld      (ix+$10),$91
bit     1,(ix+$18)
 jr      nz,label_9104h         ; (+26h)
ld      l,(ix+02)
ld      h,(ix+03)
ld      (ix+$11),l
ld      (ix+$12),h
ld      l,(ix+05)
ld      h,(ix+06)
ld      de,$ffff
add     hl,de
ld      (ix+05),l
ld      (ix+06),h
ld      (ix+$13),l
ld      (ix+$14),h
set     1,(ix+$18)
label_9104h:  
ld      bc,$0010
ld      de,$0020
call    label_30d3h
ld      e,(hl)
ld      d,$00
ld      a,($d2d5)
add     a,a
ld      c,a
ld      b,d
ld      hl,$343b
add     hl,bc
ld      a,(hl)
inc     hl
ld      h,(hl)
ld      l,a
add     hl,de
ld      a,(hl)
and     $3f
ld      c,$00
ld      l,c
ld      h,c
cp      $1e
jr      z,label_914ch          ; (+22h)
bit     0,(ix+$18)
jr      z,label_9155h          ; (+25h)
ld      l,(ix+$0a)
ld      h,(ix+$0b)
ld      a,(ix+$0c)
ld      de,$fff8
add     hl,de
adc     a,$ff
ld      c,a
ld      a,h
neg     
cp      $02
jr      c,label_914ch          ; (+05h)
ld      hl,$ff00
ld      c,$ff

label_914ch:
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),c

label_9155h:
ld      e,(ix+02)
ld      d,(ix+03)
ld      hl,($d254)
ld      bc,$ffe0
add     hl,bc
and     a
sbc     hl,de
jr      nc,label_918eh         ; (+27h)
ld      hl,($d254)
inc     h
and     a
sbc     hl,de
jr      c,label_918eh          ; (+1eh)
ld      e,(ix+05)
ld      d,(ix+06)
ld      hl,($d257)
ld      bc,$ffe0
add     hl,bc
and     a
sbc     hl,de
jr      nc,label_918eh         ; (+0ch)
ld      hl,($d257)
ld      bc,$00e0
add     hl,bc
and     a
sbc     hl,de
jr      nc,label_91bbh 

label_918eh:        ; (+2dh)
ld      l,(ix+$11)
ld      h,(ix+$12)
ld      (ix+02),l
ld      (ix+03),h
ld      l,(ix+$13)
ld      h,(ix+$14)
ld      (ix+05),l
ld      (ix+06),h
xor     a
ld      (ix+01),a
ld      (ix+04),a
ld      (ix+$0a),a
ld      (ix+$0b),a
ld      (ix+$0c),a
res     0,(ix+$18)
ret
     
label_91bbh:
ld      hl,$0e0c
ld      ($d215),hl
call    $3326
ret     c

set     0,(ix+$18)
ld      a,($d408)
and     a
jp      p,label_91d5h
neg     
cp      $02
ret     nc
label_91d5h:
bit     6,(iy+06)
ret     nz

ld      e,(ix+$0a)
ld      d,(ix+$0b)
ld      bc,$0010
call    $7cfc
ret 
.incbin "Art/LZplatform.bin";91e7-91f7 platform that moves up LZ

ld      c,$42
ld      a,(ix+00)
cp      $41
jr      nz,label_9210h         ; (+0fh)
push    hl
call    $0663
and     $0f
ld      e,a
ld      d,$00
ld      hl,$9260
add     hl,de
ld      c,(hl)
pop     hl
label_9210h:
ld      a,c
ld      e,(ix+02)
ld      d,(ix+03)
ld      c,(ix+05)
ld      b,(ix+06)
push    ix
push    hl
pop     ix
ld      (ix+00),a
xor     a
ld      (ix+01),a
call    $0663
and     $0f
ld      l,a
ld      h,$00
add     hl,de
ld      (ix+02),l
ld      (ix+03),h
ld      (ix+04),$00
call    $0663
and     $0f
ld      l,a
xor     a
ld      h,a
add     hl,bc
ld      (ix+05),l
ld      (ix+06),h
ld      (ix+$11),a
ld      (ix+$12),a
ld      (ix+$18),a
ld      (ix+07),a
ld      (ix+08),a
ld      (ix+09),a
pop     ix
ret
.incbin "Art/bubbles.bin"

;*** Labyrinth Zone Boss Logic ****
call    $7ce1
ld      (ix+$0f),$94
ld      (ix+$10),$94
bit     0,(ix+$18)
jr      nz,label_92b0h         ; (+23h)
ld      hl,$0560
ld      de,$0200
call    $7cc7
set     1,(iy+$09)
ld      hl,$e5de
ld      de,$2000
ld      a,$0c
call    _LABEL_3CE_105
xor     a
ld      ($d2ed),a
ld      a,$0b;play boss theme
rst     $18
set     0,(ix+$18)

label_92b0h:
ld      a,(ix+$11)
and     a
jr      nz,label_92dch         ; (+26h)
ld      a,(ix+$13)
add     a,a
add     a,a
ld      e,a
ld      d,$00
ld      hl,$947c
add     hl,de
ld      a,(hl)
ld      (ix+02),a
inc     hl
ld      a,(hl)
inc     hl
ld      (ix+03),a
ld      a,(hl)
inc     hl
ld      (ix+05),a
ld      a,(hl)
inc     hl
ld      (ix+06),a
inc     (ix+$11)
jp      label_93f8h
  
label_92dch:    
dec     a
jr      nz,label_9325h         ; (+46h)
ld      a,(ix+$13)
and     a
jr      nz,label_92f4h         ; (+0fh)
ld      (ix+$0a),$80
ld      (ix+$0b),$ff
ld      (ix+$0c),$ff
jp      label_9300h

label_92f4h: 
ld      (ix+$0a),$80
ld      (ix+$0b),$00
ld      (ix+$0c),$00

label_9300h:
ld      hl,$9488
ld      a,(ix+$13)
add     a,a
ld      e,a
ld      d,$00
add     hl,de
ld      a,(hl)
inc     hl
ld      h,(hl)
ld      l,a
ld      e,(ix+05)
ld      d,(ix+06)
and     a
sbc     hl,de
jp      nz,label_93f8h
inc     (ix+$11)
ld      (ix+$12),$00
jp      label_93f8h

label_9325h:
dec     a
jp      nz,label_93ach
xor     a
ld      (ix+$0a),a
ld      (ix+$0b),a
ld      (ix+$0c),a
inc     (ix+$12)
ld      a,(ix+$12)
cp      $64
jp      nz,label_93f8h
inc     (ix+$11)
ld      l,(ix+02)
ld      h,(ix+03)
ld      de,$000f
add     hl,de
ld      ($d20f),hl
ld      l,(ix+05)
ld      h,(ix+06)
ld      bc,$0022
add     hl,bc
ld      ($d211),hl
ld      a,(ix+$13)
and     a
jp      z,label_9433h
ld      a,($d2ed)
cp      $08
jp      nc,label_93f8h
call    $7cb6
jp      c,label_93f8h
push    ix
push    hl
pop     ix
xor     a
ld      (ix+00),$2f
ld      hl,($d20f)
ld      (ix+01),a
ld      (ix+02),l
ld      (ix+03),h
ld      hl,($d211)
ld      (ix+04),a
ld      (ix+05),l
ld      (ix+06),h
ld      (ix+$18),a
ld      (ix+07),a
ld      (ix+08),a
ld      (ix+09),a
ld      (ix+$0a),a
ld      (ix+$0b),a
ld      (ix+$0c),a
pop     ix
jp      label_93f8h

label_93ach:
ld      a,(ix+$13)
and     a
jr      nz,label_93c1h         ; (+0fh)
ld      (ix+$0a),$80
ld      (ix+$0b),$00
ld      (ix+$0c),$00
jp      label_93cdh
label_93c1h: 
ld      (ix+$0a),$80
ld      (ix+$0b),$ff
ld      (ix+$0c),$ff
label_93cdh: 
ld      hl,$948e
ld      a,(ix+$13)
add     a,a
ld      e,a
ld      d,$00
add     hl,de
ld      a,(hl)
inc     hl
ld      h,(hl)
ld      l,a
ld      e,(ix+05)
ld      d,(ix+06)
xor     a
sbc     hl,de
jr      nz,label_93f8h         ; (+11h)
ld      (ix+$11),a
inc     (ix+$13)
ld      a,(ix+$13)
cp      $03
jr      c,label_93f8h          ; (+04h)
ld      (ix+$13),$00

label_93f8h: 
ld      hl,$00a2
ld      ($d217),hl
call    $7807
ld      a,($d2ed)
cp      $08
ret     nc
bit     7,(ix+$0c)
ret     z

ld      l,(ix+02)
ld      h,(ix+03)
ld      ($d20f),hl
ld      l,(ix+05)
ld      h,(ix+06)
ld      ($d211),hl
ld      hl,$0010
ld      ($d213),hl
ld      hl,$0030
ld      ($d215),hl
ld      a,($d224)
and     $02
call    label_2f5bh
ret   
  
label_9433h:;Load projectiles 1- This is Eggman's first attack.
ld      l,(ix+02)
ld      h,(ix+03)
ld      de,$0004
add     hl,de
ld      ($d20f),hl
ld      l,(ix+05)
ld      h,(ix+06)
ld      de,$fffa
add     hl,de
ld      ($d211),hl
ld      hl,$ff00
ld      ($d213),hl
ld      hl,$ff00
ld      ($d215),hl
ld      c,$04
call    label_85e5h;fetch the projectile logic found in Bridge Zone's boss logic.
ld      l,(ix+02)
ld      h,(ix+03)
ld      de,$0020
add     hl,de
ld      ($d20f),hl
ld      hl,$0100
ld      ($d213),hl
ld      c,$04
call    label_85e5h
ld      a,$01
rst     $28;play explosion sound effect
jp      label_93f8h
call    z,$c005
ld      (bc),a
sbc     a,h
dec     b
ret     nz

ld      bc,$05fc
ret     nz
.incbin "Art/boss/LZEggman.bin";load Eggman's compressed graphics

set     5,(ix+$18)
ld      (ix+$0d),$08;08
ld      (ix+$0e),$0a;0a
ld      hl,$0404
ld      ($d215),hl
call    $3326
call    nc,label_2fd7h
bit     1,(ix+$18)
jr      nz,label_94e3h         ; (+1fh)
set     1,(ix+$18)
ld      hl,(sonic_horizontal_pos)
ld      de,$0008
add     hl,de
ex      de,hl
ld      l,(ix+02)
ld      h,(ix+03)
ld      bc,$0008
add     hl,bc
and     a
sbc     hl,de
jr      nc,label_94e3h         ; (+04h)
set     2,(ix+$18)

label_94e3h:
bit     0,(ix+$18)
jr      nz,label_9519h         ; (+30h)
ld      (ix+$0a),$40
ld      (ix+$0b),$00
ld      (ix+$0c),$00
ld      hl,$9699
bit     2,(ix+$18)
jr      z,+         ; (+03h)
ld      hl,$9689
+:  
ld      (ix+$0f),l
ld      (ix+$10),h
ld      hl,($d402)
ld      e,(ix+05)
ld      d,(ix+06)
and     a
sbc     hl,de
ret     nc

set     0,(ix+$18)
ret
     
label_9519h:
ld      c,(ix+02)
ld      b,(ix+03)
ld      hl,$fff0
add     hl,bc
ld      de,($d254)
and     a
sbc     hl,de
jr      c,label_9550h          ; (+24h)
ld      l,c
ld      h,b
inc     d
and     a
sbc     hl,de
jr      nc,label_9550h         ; (+1ch)
ld      c,(ix+05)
ld      b,(ix+06)
ld      hl,$fff0
add     hl,bc
ld      de,($d257)
and     a
sbc     hl,de
jr      c,label_9550h          ; (+09h)
ld      hl,$00c0
add     hl,de
and     a
sbc     hl,bc
jr      nc,+

label_9550h:        ; (+04h)
ld      (ix+$00),$ff

+:
xor     a
ld      hl,$0002
bit     2,(ix+$18)
jr      nz,+         ; (+04h)
dec     a
ld      hl,$fffe

+:
ld      e,(ix+07)
ld      d,(ix+08)
add     hl,de
adc     a,(ix+09)
ld      c,a
ld      a,h
ld      de,$0100
bit     7,c
jr      z,label_9580h          ; (+0bh)
ld      a,l
cpl     
ld      e,a
ld      a,h
cpl     
ld      d,a
inc     de
ld      a,d
ld      de,$ff00

label_9580h:    
and     a
jr      z,+          ; (+01h)
ex      de,hl

+:   
ld      (ix+07),l
ld      (ix+08),h
ld      (ix+09),c
ld      hl,($d402)
ld      de,$0010
add     hl,de
ex      de,hl
ld      l,(ix+05)
ld      h,(ix+06)
ld      bc,$0008
add     hl,bc
and     a
sbc     hl,de
ld      a,$ff
ld      hl,$fffe
bit     7,(ix+$0c)
jr      nz,+         ; (+03h)
ld      hl,$fffc

+:  
jr      nc,label_95bfh         ; (+0dh)
inc     a
ld      hl,$0002
bit     7,(ix+$0c)
jr      z,label_95bfh          ; (+03h)
ld      hl,$0004

label_95bfh:   
ld      e,(ix+$0a)
ld      d,(ix+$0b)
add     hl,de
adc     a,(ix+$0c)
ld      c,a
ld      a,h
ld      de,$0100
bit     7,c
jr      z,label_95ddh          ; (+0bh)
ld      a,l
cpl     
ld      e,a
ld      a,h
cpl     
ld      d,a
inc     de
ld      a,d
ld      de,$ff00

label_95ddh:    
and     a
jr      z,+          ; (+01h)
ex      de,hl
+: 
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),c
ld      hl,$9689
bit     7,(ix+09)
jr      z,+          ; (+03h)
ld      hl,$9699

+:     
push    hl
ld      l,(ix+07)
ld      h,(ix+08)
bit     7,h
jr      z,+          ; (+07h)
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
inc     hl

+:  
ld      e,(ix+$11)
ld      d,(ix+$12)
add     hl,de
ld      (ix+$11),l
ld      (ix+$12),h
ld      a,h
and     $08
ld      e,a
ld      d,$00
pop     hl
add     hl,de
ld      (ix+$0f),l
ld      (ix+$10),h
ld      l,(ix+02)
ld      h,(ix+03)
ld      de,$fff9
bit     7,(ix+09)
jr      z,+          ; (+03h)
ld      de,$000f

+:   
add     hl,de
ld      ($d20f),hl
ld      l,(ix+05)
ld      h,(ix+06)
ld      ($d211),hl
ld      a,($d224)
and     $0f
ret     nz

call    $7cb6
ret     c

push    ix
push    hl
pop     ix
xor     a
ld      (ix+00),$2a
ld      hl,($d20f)
ld      (ix+01),a
ld      (ix+02),l
ld      (ix+03),h
ld      hl,($d211)
ld      (ix+04),a
ld      (ix+05),l
ld      (ix+06),h
ld      (ix+$11),a
ld      (ix+$12),a
ld      (ix+07),a
ld      (ix+08),a
ld      (ix+$09),a
ld      (ix+$0a),a
ld      (ix+$0b),a
ld      (ix+$0c),a
pop     ix
ret
.incbin "9689-96a8.bin";9689-96a8
set     5,(ix+$18)
xor     a
ld      (ix+$0f),a
ld      (ix+$10),a
ld      l,(ix+02)
ld      h,(ix+03)
ld      ($d20f),hl
ld      l,(ix+05)
ld      h,(ix+06)
ld      ($d211),hl
ld      l,a
ld      h,a
ld      ($d213),hl
ld      ($d215),hl
ld      e,(ix+$12)
ld      d,$00
ld      hl,$96f6
add     hl,de
ld      a,(hl)
call    label_2f5bh
inc     (ix+$11)
ld      a,(ix+$11)
cp      $0c
ret     c

ld      (ix+$11),$00
inc     (ix+$12)
ld      a,(ix+$12)
cp      $03
ret     c

ld      (ix+00),$ff
ret     

inc     e
ld      e,$5e
set     5,(ix+$18)
xor     a
ld      (ix+$0f),a
ld      (ix+$10),a
ld      a,(iy+$0a)
ld      hl,($d236)
push    af
push    hl
ld      a,($d2df)
cp      $24
jr      nc,label_9768h         ; (+55h)
ld      e,a
ld      d,$00
ld      hl,$d000
add     hl,de
ld      ($d236),hl
ld      l,(ix+02)
ld      h,(ix+03)
ld      ($d20f),hl
ld      l,(ix+05)
ld      h,(ix+06)
ld      ($d211),hl
ld      hl,$0000
ld      ($d213),hl
ld      ($d215),hl
ld      a,(ix+$12)
and     a
jr      z,label_974ch
cp      $08
jr      nc,label_974ch         ; (+0ah)
ld      hl,$0004
ld      ($d213),hl
ld      a,$0c
jr      label_975dh 
           ; (+11h)
label_974ch:  
ld      a,$40
call    label_2f5bh
ld      hl,($d213)
ld      de,$0008
add     hl,de
ld      ($d213),hl
ld      a,$42

label_975dh:
call    label_2f5bh
ld      a,($d2df)
add     a,$06
ld      ($d2df),a

label_9768h:   
pop     hl
pop     af
ld      ($d236),hl
ld      (iy+$0a),a
ld      (ix+$0d),$0a
ld      (ix+$0e),$0c
ld      a,(ix+$12)
and     a
jr      z,label_9798h          ; (+1ah)
ld      c,$00
ld      b,c
ld      d,c
ld      (ix+$0a),c
ld      (ix+$0b),c
ld      (ix+$0c),c
dec     (ix+$12)
jp      nz,label_980ah
ld      (ix+00),$ff
jp      label_980ah

label_9798h:  
ld      hl,$0206
ld      ($d215),hl
call    $3326
jr      c,label_97e4h          ; (+41h)
ld      bc,($d402)
ld      e,(ix+05)
ld      d,(ix+06)
ld      hl,$fff8
add     hl,de
and     a
sbc     hl,bc
jr      nc,label_97e4h         ; (+2eh)
ld      hl,$0006
add     hl,de
and     a
sbc     hl,bc
jr      c,label_97e4h          ; (+25h)
ld      a,(ix+$12)
and     a
jr      nz,label_97e4h         ; (+1fh)
xor     a
ld      l,a
ld      h,a
ld      ($d407),hl
ld      ($d409),a
ld      ($d288),a
ld      ($d296),hl;clear air counter
set     2,(iy+08)
ld      a,$20
ld      ($d2f6),a;set Sonic to his collect bubble state
ld      (ix+$12),$10
ld      a,$22;play bubble collect sound effect
rst     $28

label_97e4h:
ld      (ix+$0a),$98
ld      (ix+$0b),$ff
ld      (ix+$0c),$ff
ld      a,(ix+$11)
and     $0f
jr      nz,label_9813h        ; (+1ch)
call    $0663
ld      bc,$0020
ld      d,$00
and     $3f
cp      $20
jr      c,label_980ah          ; (+05h)
ld      bc,$ffe0
ld      d,$ff

label_980ah:   
ld      (ix+07),c
ld      (ix+08),b
ld      (ix+09),d

label_9813h  
ld      l,(ix+02)
ld      h,(ix+03)
ex      de,hl
ld      hl,($d254)
ld      bc,$0008
xor     a
sbc     hl,bc
jr      nc,+        ; (+02h)
ld      l,a
ld      h,a
+:      
and     a
sbc     hl,de
jr      nc,label_985fh         ; (+33h)
ld      hl,($d254)
ld      bc,$0100
add     hl,bc
and     a
sbc     hl,de
jr      c,label_985fh          ; (+27h)
ld      l,(ix+05)
ld      h,(ix+06)
ex      de,hl
ld      hl,($d2dd)
and     a
sbc     hl,de
jr      nc,label_985fh         ; (+18h)
ld      hl,($d257)
ld      bc,$fff0
add     hl,bc
and     a
sbc     hl,de
jr      nc,label_985fh         ; (+0ch)
ld      hl,($d257)
ld      bc,$00c0
add     hl,bc
and     a
sbc     hl,de
jr      nc,label_9863h

label_985fh:         ; (+04h)
ld      (ix+00),$ff

label_9863h:
inc     (ix+$11)
ret 

set     5,(ix+$18)
ld      (ix+$0f),$52
ld      (ix+$10),$9a
bit     5,(iy+03) 
jr      nz,label_988ch
ld      a,(ix+$11)
ld      (ix+$12),a
ld      a,(ix+$11)
cp      $05
jr      nc,label_9895h
inc     (ix+$11)
 
jp      label_9895h
label_988ch:
ld      a,(ix+$11)
and     a
jr      z,label_9895h
dec     (ix+$11)

label_9895h:  
ld      a,(ix+$11)
cp      $01
jr      nc,label_98bdh
ld      hl,$140c
ld      ($d215),hl
ld      (ix+$0d),$1e
ld      (ix+$0e),$16
call    label_3326h
ret     c

ld      bc,$9972
call    $9a83
ret     nc

ld      c,$ff
ld      de,$fffc
jp      label_9957h

label_98bdh:
cp      $04 
jp      nc,$9931
ld      (ix+$0f),$64
ld      (ix+$10),$9a
ld      hl,$080f
ld      ($d215),hl
ld      (ix+$0d),$1e
ld      (ix+$0e),$16
call    label_3326h
ret     c

ld      bc,$9992
call    $9a83
ret     nc

ld      a,(ix+$12)
cp      (ix+$11)
ret     nc  

ld      a,(sonic_horizontal_pos)
add     a,$08
and     $1f
add     a,a
ld      c,a
ld      b,$00
ld      hl,$99d2
add     hl,bc
ld      e,(hl)
inc     hl
ld      d,(hl)
ld      hl,($d404)
ld      a,($d406)
add     hl,de
adc     a,$ff
ld      ($d404),hl
ld      ($d406),a
ld      hl,$9a12
add     hl,bc
ld      e,(hl)
inc     hl
ld      d,(hl)
ld      hl,($d407)
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
ld      a,($d409)
cpl     
add     hl,de
adc     a,$ff
ld      ($d407),hl
ld      ($d409),a
ret     

ld      c,$00
ld      de,$0008
jp      label_9957h
ld      (ix+$0f),$76
ld      (ix+$10),$9a
ld      hl,$021a
ld      ($d215),hl
ld      (ix+$0d),$1e
ld      (ix+$0e),$16
call    label_3326h
ret     c

ld      bc,$99b2
call    $9a83
ret     nc

ld      c,$00
ld      de,$001a
label_9957h:
ld      a,($d2e9)
ld      hl,($d2e7)
ld      ($d407),hl
ld      ($d409),a
ld      hl,($d404)
ld      a,($d406)
add     hl,de
adc     a,c
ld      ($d404),hl
ld      ($d406),a
ret  
.incbin "9972-99ad.bin";9972-99ad 

.include "object_logic/ss_movingbumper.asm"
set     5,(ix+$18)
ld      (ix+$0d),$1e
ld      (ix+$0e),$60
ld      hl,$0018
ld      ($d215),hl
call    label_3326h
jr      c,label_9ba5h
ld      l,(ix+02)
ld      h,(ix+03)
ld      a,l
add     a,a
rl      h
add     a,a
rl      h
add     a,a
rl      h
ld      e,h
ld      l,(ix+05)
ld      h,(ix+06)
ld      a,l
add     a,a
rl      h
add     a,a
rl      h
add     a,a
rl      h
ld      d,h
ld      hl,$9bad
ld      b,$05
-:
ld      a,(hl)
inc     hl
cp      e
jr      nz,label_9ba1h
ld      a,(hl)
cp      d
jr      nz,label_9ba1h
inc     hl
ld      a,(hl)
ld      ($d2d4),a
ld      a,$01
ld      ($d283),a
set     4,(iy+06)
jp      label_9ba5h

label_9ba1h:
inc     hl
inc     hl
djnz    -

label_9ba5h:
xor     a
ld      (ix+$0f),a
ld      (ix+$10),a
ret     
.incbin "9bad-9bbb.bin"
ld      (ix+07),$80
ld      (ix+08),$01
ld      (ix+09),$00
ld      (ix+$0f),$3d
ld      (ix+$10),$9c
set     5,(ix+$18)
bit     0,(ix+$18)
jr      nz,+
ld      a,(ix+02)
ld      (ix+$11),a
ld      a,(ix+03)
ld      (ix+$12),a
ld      a,$18;play projectile sound
rst     $28
set     0,(ix+$18)

+:
ld      (ix+$0d),$06
ld      (ix+$0e),$08
.incbin "bank2.bin"


.BANK 3 SLOT 1
.ORG $0000

_LABEL_C000_52:
	jp   _LABEL_C23A_53


; Data from C003 to C005 (3 bytes)
.db $C3, $18, $40

_LABEL_C006_8:
	jp   _LABEL_C12D_9


; Data from C009 to C12C (292 bytes)
.db $C3, $E5, $41, $C3, $24, $42, $C3, $71, $41, $C3, $EB, $46, $C3, $FF, $46, $F5
.db $C5, $D5, $E5, $DD, $E5, $4D, $44, $DD, $21, $1C, $DC, $3E, $05, $5E, $23, $56
.db $23, $EB, $09, $DD, $75, $00, $DD, $23, $DD, $74, $00, $DD, $23, $EB, $3D, $C2
.db $26, $40, $21, $70, $40, $5E, $23, $56, $7A, $3C, $28, $08, $23, $ED, $A0, $ED
.db $A0, $C3, $3E, $40, $21, $D6, $40, $5E, $23, $56, $7A, $3C, $28, $06, $23, $ED
.db $A0, $C3, $50, $40, $DD, $E1, $E1, $D1, $C1, $F1, $22, $4F, $DC, $22, $7C, $DC
.db $22, $A9, $DC, $22, $D6, $DC, $C9, $48, $DC, $00, $00, $75, $DC, $00, $00, $A2
.db $DC, $00, $00, $CF, $DC, $00, $00, $46, $DC, $07, $DD, $73, $DC, $08, $DD, $A0
.db $DC, $09, $DD, $CD, $DC, $0A, $DD, $28, $DC, $01, $00, $55, $DC, $01, $00, $82
.db $DC, $01, $00, $AF, $DC, $01, $00, $3D, $DC, $00, $00, $42, $DC, $00, $00, $6A
.db $DC, $00, $00, $6F, $DC, $00, $00, $97, $DC, $00, $00, $9C, $DC, $00, $00, $C4
.db $DC, $00, $00, $C9, $DC, $00, $00, $2E, $DC, $00, $00, $5B, $DC, $00, $00, $88
.db $DC, $00, $00, $B5, $DC, $00, $00, $0A, $DC, $01, $00, $FF, $FF, $26, $DC, $80
.db $27, $DC, $90, $53, $DC, $A0, $54, $DC, $B0, $80, $DC, $C0, $81, $DC, $D0, $AD
.db $DC, $E0, $AE, $DC, $F0, $4E, $DC, $02, $7B, $DC, $02, $A8, $DC, $02, $D5, $DC
.db $02, $02, $DD, $00, $3A, $DC, $00, $67, $DC, $00, $94, $DC, $00, $C1, $DC, $00
.db $3B, $DC, $00, $68, $DC, $00, $95, $DC, $00, $C2, $DC, $00, $51, $DC, $00, $7E
.db $DC, $01, $AB, $DC, $02, $D8, $DC, $03, $06, $DC, $00, $04, $DC, $00, $FF, $FF
.db $9F, $BF, $DF, $FF

_LABEL_C12D_9:
	push af
	push hl
	push bc
	ld   a, (RAM_DC4E)
	and  $FD
	ld   (RAM_DC4E), a
	ld   a, (RAM_DC7B)
	and  $FD
	ld   (RAM_DC7B), a
	ld   a, (RAM_DCA8)
	and  $FD
	ld   (RAM_DCA8), a
	ld   a, (RAM_DCD5)
	and  $FD
	ld   (RAM_DCD5), a
	ld   a, (RAM_DD02)
	and  $FD
	ld   (RAM_DD02), a
	xor  a
	ld   (RAM_DC06), a
	ld   b, $04
	ld   c, $7F
	ld   hl, $4129
	otir
	ld   a, (RAM_DC04)
	and  $F7
	ld   (RAM_DC04), a
	pop  bc
	pop  hl
	pop  af
	ret


; Data from C171 to C239 (201 bytes)
.db $F5, $D5, $E5, $5F, $3A, $06, $DC, $A7, $28, $03, $BB, $38, $5B, $7B, $32, $06
.db $DC, $22, $03, $DD, $3A, $DB, $DC, $F6, $0F, $D3, $7F, $7E, $32, $05, $DC, $23
.db $5E, $23, $56, $23, $ED, $53, $00, $DD, $5E, $23, $56, $23, $ED, $53, $0E, $DC
.db $23, $22, $24, $DC, $21, $DD, $41, $87, $5F, $16, $00, $19, $7E, $32, $DA, $DC
.db $23, $7E, $32, $DB, $DC, $21, $00, $00, $22, $FC, $DC, $22, $F1, $DC, $22, $F6
.db $DC, $22, $E2, $DC, $3E, $04, $32, $05, $DD, $23, $22, $DC, $DC, $21, $0B, $DD
.db $22, $FA, $DC, $3E, $02, $32, $02, $DD, $E1, $D1, $F1, $C9, $80, $90, $A0, $B0
.db $C0, $D0, $E0, $F0, $F5, $3A, $4E, $DC, $F6, $02, $32, $4E, $DC, $3A, $7B, $DC
.db $F6, $02, $32, $7B, $DC, $3A, $A8, $DC, $F6, $02, $32, $A8, $DC, $3A, $D5, $DC
.db $F6, $02, $32, $D5, $DC, $3A, $52, $DC, $32, $2B, $DC, $3A, $7F, $DC, $32, $58
.db $DC, $3A, $AC, $DC, $32, $85, $DC, $3A, $D9, $DC, $32, $B2, $DC, $AF, $32, $04
.db $DC, $F1, $C9, $F5, $E5, $22, $12, $DC, $3A, $04, $DC, $F6, $08, $32, $04, $DC
.db $21, $00, $10, $22, $10, $DC, $E1, $F1, $C9

_LABEL_C23A_53:
	ld   ix, $DC26
	ld   de, (RAM_DC1C)
	ld   bc, (RAM_DC0A)
	call _LABEL_C2F4_54
	ld (RAM_DC14), ix
	ld   (RAM_DC1C), de
	ld   ix, $DC53
	ld   de, (RAM_DC1E)
	ld   bc, (RAM_DC0A)
	call _LABEL_C2F4_54
	ld (RAM_DC16), ix
	ld   (RAM_DC1E), de
	ld   ix, $DC80
	ld   de, (RAM_DC20)
	ld   bc, (RAM_DC0A)
	call _LABEL_C2F4_54
	ld (RAM_DC18), ix
	ld   (RAM_DC20), de
	ld   ix, $DCAD
	ld   de, (RAM_DC22)
	ld   bc, (RAM_DC0A)
	call _LABEL_C2F4_54
	ld (RAM_DC1A), ix
	ld   (RAM_DC22), de
	ld   ix, $DCDA
	ld   de, (RAM_DC24)
	ld   bc, (RAM_DC0E)
	call _LABEL_C2F4_54
	ld   (RAM_DC24), de
	bit  1, (ix+40)
	jr   z, _LABEL_C2BF_70
	ld   hl, $DC14
	ld   a, (RAM_DC05)
	add  a, a
	ld   c, a
	ld   b, $00
	add  hl, bc
	ld   (hl), $DA
	inc  hl
	ld   (hl), $DC
_LABEL_C2BF_70:
	ld   ix, (RAM_DC14)
	call _LABEL_C3DE_71
	ld   ix, (RAM_DC16)
	call _LABEL_C3DE_71
	ld   ix, (RAM_DC18)
	call _LABEL_C3DE_71
	ld   ix, (RAM_DC1A)
	call _LABEL_C3DE_71
	ld   a, (RAM_DC04)
	and  $08
	ret  z

	ld   hl, (RAM_DC10)
	ld   bc, (RAM_DC12)
	and  a
	sbc  hl, bc
	jr   nc, _LABEL_C2F0_90
	call _LABEL_C12D_9
_LABEL_C2F0_90:
	ld   (RAM_DC10), hl
	ret

_LABEL_C2F4_54:
	bit  1, (ix+40)
	ret  z

	ld   l, (ix+2)
	ld   h, (ix+3)
	and  a
	sbc  hl, bc
	ld   (ix+2), l
	ld   (ix+3), h
	jr   z, _LABEL_C30D_55
	jp   nc, _LABEL_C3C9_56
_LABEL_C30D_55:
	ld   a, (de)
	and  a
	jp   m, _LABEL_C4F3_57
	cp   $70
	jr   c, _LABEL_C34B_58
	cp   $7F
	jr   nz, _LABEL_C321_59
	ld   (ix+30), $00
	jp   _LABEL_C39F_60

_LABEL_C321_59:
	push de
	push ix
	pop  hl
	ld   bc, $000E
	add  hl, bc
	ex   de, hl
	and  $0F
	ld   l, a
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   bc, $43CE
	add  hl, bc
	ld   a, (hl)
	ld   (ix+37), a
	inc  hl
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop  de
	jp   _LABEL_C36E_66

_LABEL_C34B_58:
	and  $0F
	ld   hl, $44D5
	add  a, a
	ld   c, a
	ld   b, $00
	add  hl, bc
	ld   a, (hl)
	ld   (ix+6), a
	inc  hl
	ld   a, (hl)
	ld   (ix+7), a
	ld   a, (de)
	rrca
	rrca
	rrca
	rrca
	and  $0F
	ld   (ix+31), a
	bit  0, (ix+40)
	jr   nz, _LABEL_C39F_60
_LABEL_C36E_66:
	ld   a, (ix+20)
	ld   (ix+25), a
	ld   a, (ix+21)
	ld   (ix+26), a
	ld   a, (ix+22)
	srl  a
	ld   (ix+27), a
	ld   a, (ix+23)
	ld   (ix+28), a
	ld   a, (ix+24)
	ld   (ix+29), a
	xor  a
	ld   (ix+10), a
	ld   (ix+11), a
	ld   (ix+13), a
	ld   (ix+12), a
	ld   (ix+30), $0F
_LABEL_C39F_60:
	inc  de
	ld   a, (de)
	inc  de
	and  a
	jr   nz, _LABEL_C3A8_61
	ld   a, (ix+36)
_LABEL_C3A8_61:
	push de
	ld   c, a
	ld   l, (ix+38)
	ld   h, (ix+39)
	ld   a, l
	or   h
	jr   nz, _LABEL_C3B7_62
	ld   hl, (RAM_DC08)
_LABEL_C3B7_62:
	call _LABEL_C6D8_63
	pop  de
	ld   a, l
	add  a, (ix+2)
	ld   (ix+2), a
	ld   a, h
	adc  a, (ix+3)
	ld   (ix+3), a
_LABEL_C3C9_56:
	res  0, (ix+40)
	ret


; Data from C3CE to C3DD (16 bytes)
.db $05, $FF, $BE, $0A, $04, $05, $02, $00, $05, $E6, $24, $5A, $14, $28, $08, $00

_LABEL_C3DE_71:
	bit  1, (ix+40)
	ret  z

	ld   a, (ix+13)
	and  a
	jp   z, _LABEL_C545_72
	dec  a
	jp   z, _LABEL_C55C_73
	dec  a
	jp   z, _LABEL_C579_74
	dec  a
	jp   z, _LABEL_C597_75
_LABEL_C3F6_86:
	ld   a, (ix+0)
	cp   $E0
	jr   nz, _LABEL_C412_76
	ld   c, (ix+37)
	ld   a, (RAM_DC07)
	cp   c
	jp   z, _LABEL_C48F_77
	ld   a, c
	ld   (RAM_DC07), a
	or   $E0
	out  ($7F), a
	jp   _LABEL_C48F_77

_LABEL_C412_76:
	ld   e, (ix+10)
	ld   d, (ix+11)
	ld   a, (ix+25)
	and  a
	jr   z, _LABEL_C424_80
	dec  (ix+25)
	jp   _LABEL_C45A_81

_LABEL_C424_80:
	dec  (ix+26)
	jp   nz, _LABEL_C45A_81
	ld   a, (ix+21)
	ld   (ix+26), a
	ld   l, (ix+28)
	ld   h, (ix+29)
	dec  (ix+27)
	jp   nz, _LABEL_C452_84
	ld   a, (ix+22)
	ld   (ix+27), a
	ld   a, l
	cpl
	ld   l, a
	ld   a, h
	cpl
	ld   h, a
	inc  hl
	ld   (ix+28), l
	ld   (ix+29), h
	jp   _LABEL_C45A_81

_LABEL_C452_84:
	add  hl, de
	ld   (ix+10), l
	ld   (ix+11), h
	ex   de, hl
_LABEL_C45A_81:
	ld   l, (ix+6)
	ld   h, (ix+7)
	ld   c, (ix+8)
	ld   b, (ix+9)
	add  hl, bc
	add  hl, de
	ld   a, (ix+31)
	and  a
	jr   z, _LABEL_C475_82
	ld   b, a
_LABEL_C46F_83:
	srl  h
	rr   l
	djnz _LABEL_C46F_83
_LABEL_C475_82:
	ld   a, l
	and  $0F
	or   (ix+0)
	out  ($7F), a
	ld   a, h
	rlca
	rlca
	rlca
	rlca
	and  $F0
	ld   c, a
	ld   a, l
	rrca
	rrca
	rrca
	rrca
	and  $0F
	or   c
	out  ($7F), a
_LABEL_C48F_77:
	ld   a, (ix+5)
	and  a
	jr   z, _LABEL_C4A7_78
	ld   c, a
	ld   a, (ix+12)
	and  a
	jr   z, _LABEL_C4A7_78
	ld   l, a
	ld   h, $00
	call _LABEL_C6D8_63
	rl   l
	ld   a, $00
	adc  a, h
_LABEL_C4A7_78:
	and  (ix+30)
	xor  $0F
	or   (ix+1)
	out  ($7F), a
	ld   a, (RAM_DC04)
	and  $08
	ret  z

	ld   a, (ix+43)
	cp   $04
	ret  z

	ld   l, (ix+4)
	ld   h, (ix+5)
	ld   bc, (RAM_DC12)
	sbc  hl, bc
	jr   nc, _LABEL_C4CE_79
	ld   hl, $0000
_LABEL_C4CE_79:
	ld   (ix+4), l
	ld   (ix+5), h
	ret


; Data from C4D5 to C4F2 (30 bytes)
.db $56, $03, $26, $03, $F9, $02, $CE, $02, $A5, $02, $80, $02, $5C, $02, $3A, $02
.db $1A, $02, $FB, $01, $DF, $01, $C4, $01, $F7, $03, $BE, $03, $88, $03

_LABEL_C4F3_57:
	cp   $FF
	jp   z, _LABEL_C50B_67
	cp   $FE
	jp   z, _LABEL_C519_68
	inc  de
	ld   hl, $4529
	add  a, a
	ld   c, a
	ld   b, $00
	add  hl, bc
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	jp   (hl)

_LABEL_C50B_67:
	ld   l, (ix+34)
	ld   h, (ix+35)
	ld   a, l
	or   h
	jr   z, _LABEL_C51D_69
	ex   de, hl
	jp   _LABEL_C30D_55

_LABEL_C519_68:
	xor  a
	ld   (RAM_DC06), a
_LABEL_C51D_69:
	res  1, (ix+40)
	ld   a, $0F
	or   (ix+1)
	out  ($7F), a
	ret


; Data from C529 to C544 (28 bytes)
.db $AE, "E", $D1, "E", $F2, "E", $0A, "F F-F2FGF}F", $86, "F", $8E, "F", $96, "F", $B4, ""
.db "F", $D1, "F"

_LABEL_C545_72:
	ld   a, (ix+14)
	add  a, (ix+12)
	jp   nc, _LABEL_C550_89
	ld   a, $FF
_LABEL_C550_89:
	ld   (ix+12), a
	jp   nc, _LABEL_C3F6_86
	inc  (ix+13)
	jp   _LABEL_C3F6_86

_LABEL_C55C_73:
	ld   c, (ix+16)
	ld   a, (ix+12)
	sub  (ix+15)
	jr   c, _LABEL_C56D_88
	cp   (ix+16)
	jr   c, _LABEL_C56D_88
	ld   c, a
_LABEL_C56D_88:
	ld   (ix+12), c
	jp   nc, _LABEL_C3F6_86
	inc  (ix+13)
	jp   _LABEL_C3F6_86

_LABEL_C579_74:
	ld   c, (ix+18)
	ld   a, (ix+12)
	sub  (ix+17)
	jr   c, _LABEL_C58B_87
	cp   (ix+18)
	jp   c, _LABEL_C58B_87
	ld   c, a
_LABEL_C58B_87:
	ld   (ix+12), c
	jp   nc, _LABEL_C3F6_86
	inc  (ix+13)
	jp   _LABEL_C3F6_86

_LABEL_C597_75:
	ld   a, (ix+12)
	sub  (ix+19)
	jp   nc, _LABEL_C5A2_85
	ld   a, $00
_LABEL_C5A2_85:
	ld   (ix+12), a
	jp   nc, _LABEL_C3F6_86
	inc  (ix+13)
	jp   _LABEL_C3F6_86


; Data from C5AE to C6D7 (298 bytes)
.db $1A, $DD, $77, $26, $32, $08, $DC, $13, $1A, $DD, $77, $27, $32, $09, $DC, $13
.db $1A, $32, $0A, $DC, $32, $0C, $DC, $13, $1A, $32, $0B, $DC, $32, $0D, $DC, $13
.db $C3, $0D, $43, $1A, $DD, $77, $2C, $13, $DD, $7E, $2B, $FE, $04, $28, $08, $3A
.db $04, $DC, $E6, $08, $C2, $0D, $43, $DD, $7E, $2C, $DD, $77, $05, $DD, $36, $04
.db $00, $C3, $0D, $43, $DD, $E5, $E1, $01, $0E, $00, $09, $EB, $ED, $A0, $ED, $A0
.db $ED, $A0, $ED, $A0, $ED, $A0, $ED, $A0, $EB, $C3, $0D, $43, $DD, $E5, $E1, $01
.db $14, $00, $09, $EB, $ED, $A0, $ED, $A0, $ED, $A0, $ED, $A0, $ED, $A0, $EB, $C3
.db $0D, $43, $1A, $DD, $77, $08, $13, $1A, $DD, $77, $09, $13, $C3, $0D, $43, $1A
.db $13, $C3, $0D, $43, $DD, $6E, $20, $DD, $66, $21, $36, $00, $01, $05, $00, $09
.db $DD, $75, $20, $DD, $74, $21, $C3, $0D, $43, $DD, $6E, $20, $DD, $66, $21, $01
.db $FB, $FF, $09, $7E, $A7, $20, $08, $1A, $3D, $28, $18, $77, $C3, $60, $46, $35
.db $28, $11, $EB, $23, $7E, $23, $66, $6F, $DD, $4E, $29, $DD, $46, $2A, $09, $EB
.db $C3, $0D, $43, $DD, $75, $20, $DD, $74, $21, $13, $13, $13, $C3, $0D, $43, $DD
.db $73, $22, $DD, $72, $23, $C3, $0D, $43, $1A, $DD, $77, $25, $13, $C3, $0D, $43
.db $1A, $DD, $77, $24, $13, $C3, $0D, $43, $DD, $7E, $2C, $3C, $FE, $10, $38, $02
.db $3E, $0F, $DD, $77, $2C, $3A, $04, $DC, $E6, $08, $C2, $0D, $43, $DD, $7E, $2C
.db $DD, $77, $05, $C3, $0D, $43, $DD, $7E, $2C, $3D, $FE, $10, $38, $01, $AF, $DD
.db $77, $2C, $3A, $04, $DC, $E6, $08, $C2, $0D, $43, $DD, $7E, $2C, $DD, $77, $05
.db $C3, $0D, $43, $DD, $CB, $28, $C6, $C3, $0D, $43

_LABEL_C6D8_63:
	xor  a
	ld   b, $07
	ex   de, hl
	ld   l, a
	ld   h, a
_LABEL_C6DE_65:
	rl   c
	jp   nc, _LABEL_C6E4_64
	add  hl, de
_LABEL_C6E4_64:
	add  hl, hl
	djnz _LABEL_C6DE_65
	or   c
	ret  z

	add  hl, de
	ret


; Data from C6EB to FFFF (14613 bytes)
.incbin "MusicHeaders.bin"
.incbin "Music/GHZ.bin"
.incbin "Music/MZ.bin"
.incbin "Music/JZ.bin"
.incbin "Music/BZ.bin"
.incbin "Music/ScrapBrain.bin"
.incbin "Music/SkyBase.bin"
.incbin "Music/TitleScreen.bin"
.incbin "Music/MapScreen.bin"
.incbin "Music/Invincible.bin"
.incbin "Music/Endofact.bin"
.incbin "Music/death.bin"
.incbin "Music/Boss.bin"
.incbin "Music/Ending.bin"
.incbin "Music/Bonus.bin"
.incbin "Music/LZ.bin"
.incbin "Music/GoodEnding.bin"
.incbin "Music/ChaosEmerald.bin"
.incbin "Endofbank3padding.bin"


.BANK 4
.ORG $0000


; Data from 10000 to 13FFF (16384 bytes)
.incbin "Block Mappings/GHZ.bin"
.incbin "Block Mappings/BZ.bin"
.incbin "Block Mappings/JZ.bin"
.incbin "Block Mappings/LZ.bin"
.incbin "Block Mappings/ScrapBrain.bin"
.incbin "Block Mappings/SkyBase1&2pt1.bin";$135B0-$13FFF


.BANK 5
.ORG $0000


; Data from 14000 to 17FFF (16384 bytes)
.incbin "Block Mappings/SkyBase1&2pt2.bin";$14000-$14330
.incbin "Block Mappings/SkyBase3.bin";$14330-$149B0
.incbin "Block Mappings/Bonus.bin"
.incbin "bank5padding.bin"
.incbin "Art/blinkingart.bin"
.incbin "levelheaderpointers.bin"
.incbin "Levelheaders/GHZ1.bin"
.incbin "Levelheaders/GHZ2.bin"
.incbin "Levelheaders/GHZ3.bin"
.incbin "Levelheaders/Ending.bin"
.incbin "Levelheaders/BZ1.bin"
.incbin "Levelheaders/BZ2.bin"
.incbin "Levelheaders/BZ3.bin"
.incbin "Levelheaders/JZ1.bin"
.incbin "Levelheaders/JZ2.bin"
.incbin "Levelheaders/JZ3.bin"
.incbin "Levelheaders/LZ1.bin"
.incbin "Levelheaders/LZ2.bin"
.incbin "Levelheaders/LZ3.bin"
.incbin "Levelheaders/SBZ1.bin"
.incbin "Levelheaders/SBZ2.bin"
.incbin "Levelheaders/SBZ3.bin"
.incbin "Levelheaders/SKBZ1.bin"
.incbin "Levelheaders/SKBZ2.bin"
.incbin "Levelheaders/SKBZ3.bin"
.incbin "Levelheaders/SBZEmeraldCorridor.bin"
.incbin "Levelheaders/SBZBallhogroom.bin"
.incbin "Levelheaders/SBZ2fromtransporter.bin"
.incbin "Levelheaders/SBZemeraldmazeviatransporter.bin"
.incbin "Levelheaders/SBZ2fromemeraldmaze.bin"
.incbin "Levelheaders/SBZ2fromballhogroom.bin"
.incbin "Levelheaders/SKBinterior.bin"
.incbin "Levelheaders/SS1.bin"
.incbin "Levelheaders/SS2.bin"
.incbin "Levelheaders/SS3.bin"
.incbin "Levelheaders/SS4.bin"
.incbin "Levelheaders/SS5.bin"
.incbin "Levelheaders/SS6.bin"
.incbin "Levelheaders/SS7.bin"
.incbin "Levelheaders/SS8.bin"
.incbin "Level_Layouts/GHZ/GHZ1objectlayout.bin"
.incbin "Level_Layouts/GHZ/GHZ2objectlayout.bin"
.incbin "Level_Layouts/GHZ/GHZ3objectlayout.bin"
.incbin "Level_Layouts/BZ/BZ1objectlayout.bin"
.incbin "Level_Layouts/BZ/BZ2objectlayout.bin"
.incbin "Level_Layouts/BZ/BZ3objectlayout.bin"
.incbin "Level_Layouts/JZ/JZ1objectlayout.bin"
.incbin "Level_Layouts/JZ/JZ2objectlayout.bin"
.incbin "Level_Layouts/JZ/JZ3objectlayout.bin"
.incbin "Level_Layouts/LZ/LZ1objectlayout.bin"
.incbin "Level_Layouts/LZ/LZ2objectlayout.bin"
.incbin "Level_Layouts/LZ/LZ3objectlayout.bin"
.incbin "Level_Layouts/SBZ/SBZ1objectlayout.bin"
.incbin "Level_Layouts/SBZ/SBZ2objectlayout.bin"
.incbin "Level_Layouts/SBZ/SBZ2emeraldmazeobjectlayout.bin"
.incbin "Level_Layouts/SBZ/SBZ2ballhogroomobjectlayout.bin"
.incbin "Level_Layouts/SBZ/SBZ3objectlayout.bin"
.incbin "Level_Layouts/SKBZ/SKBZ1objectlayout.bin"
.incbin "Level_Layouts/Objectlayouts.bin";Sky Base, Special Stages, and ending. Need to figure out the correct offsets since the guide isn't accurate.
.incbin "objectlayoutpadding.bin"
.incbin "16200-16737.bin";unknown data, looks to be uncompressed
.incbin "Miscmappings.bin";Mappings used on the map screen is located in this bit of data. Still needs to be documented fully.
.incbin "Level_Layouts/GHZ/GHZ1.bin"
.incbin "Level_Layouts/GHZ/GHZ2pt1.bin";GHZ act 2's layout continues into the beginning of Bank 6
;.incbin "Level_Layouts/SS/SS8objectlayout.bin"
;.incbin "Level_Layouts/Endingobjectlayout.bin"


.BANK 6
.ORG $0000


; Data from 18000 to 1BFFF (16384 bytes)
.incbin "Level_Layouts/GHZ/GHZ2pt2.bin"
.incbin "Level_Layouts/GHZ/GHZ3.bin"
.incbin "Level_Layouts/BZ/BZ1.bin"
.incbin "Level_Layouts/BZ/BZ2.bin"
.incbin "Level_Layouts/BZ/BZ3.bin"
.incbin "Level_Layouts/JZ/JZ1.bin"
.incbin "Level_Layouts/JZ/JZ2.bin"
.incbin "Level_Layouts/JZ/JZ3.bin"
.incbin "Level_Layouts/LZ/LZ1.bin"
.incbin "Level_Layouts/LZ/LZ2.bin"
.incbin "Level_Layouts/LZ/LZ3.bin"
.incbin "Level_Layouts/SBZ/SBZ1pt1.bin"


.BANK 7
.ORG $0000


; Data from 1C000 to 1FFFF (16384 bytes)
.incbin "Sonic1.gg.dat.70"


.BANK 8 SLOT 1
.ORG $0000


; Data from 20000 to 23BFF (15360 bytes)
.incbin "Art/Sonic.bin"
.incbin "bank8padding.bin"
.incbin "Palettes/cycling_palette_pointers.bin"
.incbin "Palettes/cycling_palettes.bin"
.incbin "Palettes/palette_pointers.bin"
.incbin "Palettes/GHZ.bin"
.incbin "Palettes/BZ.bin"
.incbin "Palettes/JZ.bin"
.incbin "Palettes/LZ.bin"
.incbin "Palettes/SBZ.bin"
.incbin "Palettes/SKBZ.bin"
.incbin "Palettes/SKBZ2.bin"
.incbin "Palettes/SS.bin"
.incbin "palettepadding.bin"

_LABEL_23C00_137: ;Load SEGA PCM audio
	di
	ld   b, $04
	ld   c, $7F
	ld   hl, $7D20
	otir
	ld   hl, $7D24
	ld   de, $175E
	ld   a, $41
	out  ($06), a
	ld   a, $E7
	out  ($7F), a
	ld   a, $81
	out  ($7F), a
	ld   a, $00
	out  ($7F), a
	ld   a, $A0
	out  ($7F), a
	ld   a, $00
	out  ($7F), a
	ld   a, $C0
	out  ($7F), a
	ld   a, $00
	out  ($7F), a
_LABEL_23C30_143:
	ld   a, (hl)
	and  $0F
	ld   c, a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld   a, $90
	add  a, c
	out  ($7F), a
	ld   a, $D0
	add  a, c
	out  ($7F), a
	nop
	nop
	ld   a, (hl)
	rrca
	rrca
	rrca
	rrca
	and  $0F
	sub  c
	sra  a
	sra  a
	ld   b, a
	add  a, c
	ld   c, a
	ld   a, $90
	add  a, c
	out  ($7F), a
	ld   a, $D0
	add  a, c
	out  ($7F), a
	nop
	nop
	ld   a, $00
	ld   a, (hl)
	ld   a, c
	add  a, b
	cp   $0F
	jr   c, _LABEL_23C71_138
	xor  a
	nop
_LABEL_23C71_138:
	nop
	nop
	nop
	ld   c, a
	ld   a, $90
	add  a, c
	out  ($7F), a
	ld   a, $D0
	add  a, c
	out  ($7F), a
	nop
	nop
	ld   a, $00
	ld   a, (hl)
	ld   a, c
	add  a, b
	cp   $0F
	jr   c, _LABEL_23C8C_139
	xor  a
	nop
_LABEL_23C8C_139:
	nop
	nop
	nop
	ld   c, a
	ld   a, $90
	add  a, c
	out  ($7F), a
	ld   a, $D0
	add  a, c
	out  ($7F), a
	nop
	nop
	ld   a, ($0000)
	ld   a, (hl)
	inc  hl
	srl  a
	srl  a
	srl  a
	srl  a
	ld   c, a
	ld   a, $90
	add  a, c
	out  ($7F), a
	ld   a, $D0
	add  a, c
	out  ($7F), a
	nop
	nop
	ld   a, (hl)
	and  $0F
	sub  c
	sra  a
	sra  a
	ld   b, a
	add  a, c
	cp   $0F
	jr   c, _LABEL_23CC5_140
	xor  a
_LABEL_23CC5_140:
	ld   c, a
	ld   a, $90
	add  a, c
	out  ($7F), a
	ld   a, $D0
	add  a, c
	out  ($7F), a
	nop
	nop
	ld   a, $00
	ld   a, (hl)
	ld   a, c
	add  a, b
	cp   $0F
	jr   c, _LABEL_23CDD_141
	xor  a
	nop
_LABEL_23CDD_141:
	nop
	nop
	nop
	ld   c, a
	ld   a, $90
	add  a, c
	out  ($7F), a
	ld   a, $D0
	add  a, c
	out  ($7F), a
	nop
	nop
	ld   a, $00
	ld   a, (hl)
	ld   a, c
	add  a, b
	cp   $0F
	jr   c, _LABEL_23CF8_142
	xor  a
	nop
_LABEL_23CF8_142:
	nop
	ld   c, a
	ld   a, $90
	add  a, c
	out  ($7F), a
	ld   a, $D0
	add  a, c
	out  ($7F), a
	dec  de
	ld   a, d
	or   e
	jp   nz, _LABEL_23C30_143
	ld   a, $9F
	out  ($7F), a
	ld   a, $BF
	out  ($7F), a
	ld   a, $DF
	out  ($7F), a
	ld   a, $FF
	out  ($7F), a
	ld   a, $FF
	out  ($06), a
	ei
	ret


; Data from 23D20 to 23FFF (736 bytes)
.db $9F, $BF, $DF, $FF, $66, $65, $45, $74, $57, $75, $46, $75, $66, $78, $67, $88
.db $97, $89, $47, $64, $68, $46, $66, $75, $66, $55, $54, $69, $87, $8A, $68, $77
.db $75, $78, $98, $87, $98, $BA, $88, $99, $88, $57, $97, $68, $88, $78, $AA, $9A
.db $BA, $BB, $AA, $AA, $CA, $BC, $9C, $88, $AB, $AA, $8A, $78, $A9, $BB, $BB, $AA
.db $BB, $DA, $CE, $DB, $AD, $CB, $CC, $9C, $9A, $AA, $98, $AA, $A9, $A8, $99, $97
.db $99, $98, $88, $AC, $B9, $DD, $DC, $CE, $BB, $BC, $9A, $AA, $B9, $BB, $BB, $99
.db $88, $88, $89, $A9, $AA, $AA, $9A, $AA, $99, $BB, $ED, $EE, $CD, $AB, $DB, $CD
.db $CD, $AA, $8A, $88, $78, $87, $97, $99, $99, $B7, $AA, $CB, $BC, $DE, $BC, $9B
.db $AA, $99, $CB, $CC, $BB, $89, $CA, $78, $A9, $9A, $9A, $AA, $A9, $8A, $BA, $CD
.db $CA, $CC, $CC, $CC, $DD, $DD, $DD, $DE, $9B, $AA, $AA, $AC, $99, $CB, $A9, $99
.db $AA, $AB, $AA, $CA, $BB, $AA, $BA, $CC, $DC, $BC, $CD, $9B, $B9, $CB, $AC, $89
.db $A8, $89, $88, $88, $88, $89, $79, $99, $99, $BB, $9A, $88, $88, $AA, $9A, $87
.db $99, $98, $99, $A9, $9A, $99, $AA, $BB, $89, $99, $A9, $98, $AA, $99, $88, $99
.db $CB, $CD, $AD, $9B, $99, $9A, $AA, $BB, $CB, $BB, $CB, $BB, $BA, $CA, $99, $88
.db $88, $68, $98, $97, $98, $A9, $87, $D9, $EA, $DB, $AC, $AB, $AB, $98, $9A, $A8
.db $89, $46, $64, $65, $75, $57, $56, $66, $78, $66, $87, $8A, $99, $A9, $CA, $CB
.db $CD, $ED, $CC, $AB, $55, $66, $56, $44, $54, $55, $64, $88, $58, $66, $67, $66
.db $77, $88, $77, $D9, $ED, $DE, $EE, $ED, $D9, $DC, $8C, $A8, $79, $33, $87, $63
.db $65, $76, $48, $7A, $58, $58, $79, $39, $46, $45, $76, $88, $DE, $DA, $AC, $97
.db $76, $98, $77, $45, $74, $97, $DA, $77, $78, $65, $51, $56, $57, $97, $56, $57
.db $66, $56, $67, $9B, $CB, $7D, $9A, $89, $99, $8B, $6A, $58, $BA, $BC, $B9, $8E
.db $34, $32, $01, $12, $76, $77, $89, $87, $88, $88, $25, $50, $42, $42, $A7, $A8
.db $D8, $DB, $D9, $CB, $8C, $74, $53, $44, $44, $62, $44, $32, $41, $45, $B5, $88
.db $26, $34, $95, $37, $A8, $69, $86, $AD, $E9, $EE, $9B, $EC, $59, $BA, $BA, $69
.db $6B, $7A, $45, $A8, $5B, $41, $14, $11, $D3, $38, $98, $8B, $63, $68, $86, $77
.db $78, $73, $96, $99, $98, $D7, $78, $23, $44, $21, $14, $61, $53, $15, $14, $11
.db $34, $04, $14, $31, $41, $47, $83, $C9, $98, $99, $7C, $E9, $DE, $CA, $AC, $79
.db $97, $A9, $BD, $59, $4A, $45, $B8, $28, $75, $27, $00, $62, $85, $BC, $96, $AC
.db $65, $99, $68, $DA, $38, $93, $78, $75, $CC, $E9, $AB, $97, $28, $11, $67, $76
.db $A6, $38, $14, $44, $63, $77, $12, $36, $51, $C3, $34, $A8, $BA, $98, $87, $C7
.db $67, $6C, $8A, $C8, $38, $59, $89, $7A, $DB, $28, $19, $02, $61, $10, $57, $13
.db $23, $46, $CA, $87, $87, $2C, $62, $44, $B6, $A9, $88, $81, $C8, $DD, $AE, $DC
.db $33, $12, $39, $E9, $8A, $43, $56, $74, $78, $7A, $6B, $13, $29, $65, $DB, $9B
.db $87, $69, $76, $8C, $E4, $8E, $79, $DE, $78, $AE, $5A, $EA, $68, $76, $20, $42
.db $25, $55, $73, $33, $58, $62, $54, $14, $71, $20, $31, $35, $52, $2B, $56, $69
.db $56, $86, $84, $62, $6C, $EE, $7B, $89, $89, $E9, $6E, $69, $78, $53, $58, $86
.db $99, $52, $B8, $B8, $CB, $BE, $B4, $9E, $8B, $CB, $DE, $AC, $9C, $97, $AE, $DE
.db $66, $41, $2C, $92, $E9, $77, $8C, $24, $AA, $55, $51, $13, $31, $11, $41, $24
.db $54, $01, $31, $41, $40, $01, $03, $A1, $C2, $7D, $9D, $7A, $DA, $CA, $E8, $8B
.db $68, $98, $A7, $6E, $C9, $6E, $A8, $98, $84, $6E, $98, $B6, $94, $9D, $DC, $EC
.db $CE, $EE, $E9, $5D, $89, $35, $A5, $55, $7A, $AC, $D6, $DD, $96, $19, $76, $97
.db $61, $67, $52, $46, $37, $98, $23, $03, $01, $40, $40, $83, $18, $77, $97, $C7
.db $88, $AD, $4E, $D6, $99, $E8, $9B, $9E, $BE, $DE, $57, $B3, $3B, $CB, $B7, $66
.db $39, $75, $CB, $EA, $9D, $A7, $88, $45, $75, $85, $76, $33, $4A, $BC, $EE, $97
.db $8B, $87, $74, $27, $6C, $76, $88, $A9, $BA, $67, $74, $68, $34, $55, $74, $43
.db $57, $74, $93, $39, $A7, $D6, $B8, $AE, $9C, $7A, $B8, $A9, $9E, $8E, $B7, $93


.BANK 9 SLOT 2
.ORG $0000


; Data from 24000 to 27FFF (16384 bytes)
.incbin "Sonic1.gg.dat.90"


.BANK 10
.ORG $0000


; Data from 28000 to 2BFFF (16384 bytes)
.incbin "Sonic1.gg.dat.A0"


.BANK 11
.ORG $0000


; Data from 2C000 to 2FFFF (16384 bytes)
.incbin "Sonic1.gg.dat.B0"


.BANK 12
.ORG $0000


; Data from 30000 to 33FFF (16384 bytes)
.incbin "Sonic1.gg.dat.C0";Map 1 compressed art


.BANK 13
.ORG $0000


; Data from 34000 to 37FFF (16384 bytes)
.incbin "Sonic1.gg.dat.D0"


.BANK 14
.ORG $0000


; Data from 38000 to 3BFFF (16384 bytes)
.incbin "Sonic1.gg.dat.E0"


.BANK 15
.ORG $0000


; Data from 3C000 to 3FFFF (16384 bytes)
.incbin "Sonic1.gg.dat.F0"

