jp      z,label_466dh
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
ld      a,($d238)
cp      $1c
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
ld      a,($d238)
cp      $1c
jr      nc,label_4540h         ; (+37h)
ld      a,$17
ld      ($d2bf),a
ld      a,$05
ld      ($d2c0),a
ld      a,($d238)
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
ld      a,($d238)
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
ld      a,($d2cf)
cp      (hl)
jr      nz,label_458ch         ; (+0ah)
inc     hl
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
ld      a,($d238)
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
ld      a,($d238)
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
ld      a,($d2a9)
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
ld      ($d2a9),a
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
rst     $28
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
call    label_2fa6
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
ld      hl,$d2a9
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
ld      a,($d238)
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
bc     a,$00
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
ld      a,($d238)
cp      $1c
jr      c,+          ; (+04h)
ld      c,$80
ld      b,$50
+:   
call    label_2fa6h
ld      ($d236),hl
ld      hl,$d2a9
ld      de,$d2bf
ld      b,$01
call    label_49bch
ex      de,hl
ld      hl,($d236)
ld      c,$88
ld      b,$80
ld      a,($d238)
cp      $1c
jr      c,+          ; (+04h)
ld      c,$80
ld      b,$68
+:   
call    label_2fa6h
ld      ($d236),hl
ld      a,($d238)
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
ld      a,($d238)
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
ld      a,($d238)
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
ld      a,($d238)
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