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
ld      a,($d238)
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
ld      hl,($d402)
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
ld      hl,($d402)
ld      de,$fff5
add     hl,de
ld      ($d402),hl
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
call    label_label_30d3h
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
ld      hl,($d3ff)
and     a
sbc     hl,de
jr      nc,label_4f65h         ; (+18h)
ld      ($d3ff),de
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
ld      hl,($d3ff)
ld      c,$10
add     hl,bc
and     a
sbc     hl,de
jr      c,label_4f97h          ; (+1fh)
ex      de,hl
scf     
sbc     hl,bc
ld      ($d3ff),hl
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

4fe1 1000      djnz    4fe3h            ; (+00h)
4fe3 3000      jr      nc,4fe5h         ; (+00h)
4fe5 08        ex      af,af'
4fe6 00        nop     
4fe7 00        nop     
4fe8 08        ex      af,af'
4fe9 02        ld      (bc),a
4fea 1000      djnz    4fech            ; (+00h)
4fec 3000      jr      nc,4feeh         ; (+00h)
4fee 02        ld      (bc),a
4fef 00        nop     
4ff0 00        nop     
4ff1 08        ex      af,af'
4ff2 02        ld      (bc),a
4ff3 04        inc     b
4ff4 00        nop     
4ff5 0c        inc     c
4ff6 00        nop     
4ff7 02        ld      (bc),a
4ff8 00        nop     
4ff9 00        nop     
4ffa 02        ld      (bc),a
4ffb 011000    ld      bc,$0010
4ffe 3000      jr      nc,5000h         ; (+00h)
5000 08        ex      af,af'
5001 00        nop     
5002 00        nop     
5003 08        ex      af,af'
5004 02        ld      (bc),a
5005 dd360e19  
label_5005h:
ld      (ix+$0e),$19
ret     
label_500ah:
ex      de,hl
ld      hl,($d402)
ld      bc,($d257)
and     a
sbc     hl,bc
ret     c

ld      bc,$0010
and     a
 sbc     hl,bc
ret     c

ld      hl,($d3ff)
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
ld      hl,($d402)
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
ld      hl,($d3ff)
ld      bc,($d405)
ld      de,$0005
add     hl,de
add     hl,bc
ld      ($d20f),hl
ld      hl,($d402)
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

5114 1000      djnz    5116h            ; (+00h)
5116 f0        ret     p

5117 00        nop     
5118 0f        rrca    
5119 04        inc     b
511a f1        pop     af
511b fc0e08    call    m,080eh
511e f2f80b    jp      p,0bf8h
5121 0b        dec     bc
5122 f5        push    af
5123 f5        push    af
5124 08        ex      af,af'
5125 0ef8      ld      c,0f8h
5127 f2040f    jp      p,0f04h
512a fcf100    call    m,00f1h
512d 1000      djnz    512fh            ; (+00h)
512f f0        ret     p

5130 fc0f04    call    m,040fh
5133 f1        pop     af
5134 f8        ret     m

5135 0e08      ld      c,08h
5137 f2f50b    jp      p,0bf5h
513a 0b        dec     bc
513b f5        push    af
513c f2080e    jp      p,0e08h
513f f8        ret     m

5140 f1        pop     af
5141 04        inc     b
5142 0f        rrca    
5143 fc2a04    call    m,042ah
5146 d47cb5    call    nc,0b57ch
5149 c0        ret     nz

514a 3a15d4    ld      a,($d415)
514d 07        rlca    
514e d0        ret     nc

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

ld      a,($d238)
cp      $0b
ret     z

ld      hl,($d296)
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
ld      a,$0a
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
ld      a,$1a
rst     $28
+:  
ld      a,($d224)
rrca    
ret     nc

ld      hl,($d3ff)
ld      de,($d254)
and     a
sbc     hl,de
ld      a,l
add     a,$04
ld      c,a
ld      hl,($d402)
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
ld      a,$00
rst     $28
ret     

xor     a
ld      ($d3fe),a
ld      ($d3ff),de
ret     
label_531ch:
exx     
ld      hl,($d402)
ld      ($d2da),hl
exx     
bit     2,(ix+$18)
ret     z

res     2,(ix+$18)
bit     0,(iy+07)
ret     nz

exx     
ld      hl,($d402)
ld      de,$fff5
add     hl,de
ld      ($d402),hl
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
ld      a,$06
rst     $28
+: 
set     2,(iy+$07)
ret     
label_5361h:
res     2,(iy+$07)
ret     

label_5366h:
ld      hl,($d2dd)
ld      de,($d402)
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
ld      ($d283),a
ld      hl,$0000
ld      ($d3ff),hl
ld      ($d402),hl
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
ld      ($d3ff),hl
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
ld      ($d402),hl
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

ld      a,($d413)
and     a
ret     nz

bit     7,(ix+$18)
ret     z

ld      a,$03
rst     $28
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
call    label_2f05h
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
ld      hl,($d3ff)
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
ld      hl,($d3ff)
ld      (ix+02),l
ld      (ix+03),h
ld      (ix+04),a
ld      hl,($d402)
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
ld      hl,($d402)
ld      de,$000b
add     hl,de
ld      ($d402),hl
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
label_5624h: fdcb035e  
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
ld      de,($d402)
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
ld      a,$05
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
rst     $28
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

ld      a,($d3ff)
add     a,$08
and     $1f
cp      $08
ret     c

cp      $18
ret     nc

ld      hl,($d3ff)
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
ld      hl,($d402)
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
58e3 23        inc     hl
58e4 23        inc     hl
58e5 23        inc     hl
58e6 23        inc     hl
58e7 10e4      djnz    label_58cdh            ; (-1ch)
58e9 c9        ret     

58ea 34        inc     (hl)
58eb 3d        dec     a
58ec 34        inc     (hl)
58ed 2f        cpl     
58ee 00        nop     
58ef 183a      jr      592bh            ; (+3ah)
58f1 19        add     hl,de
58f2 03        inc     bc
58f3 00        nop     
58f4 0e3a      ld      c,3ah
58f6 00        nop     
58f7 00        nop     
58f8 161b      ld      d,1bh
58fa 320000    ld      (0000h),a
58fd 17        rla     
58fe 2f        cpl     
58ff 0c        inc     c
5900 00        nop     
5901 00        nop     
5902 ff        rst     38h
ld      hl,($d404)
ld      a,($d406)
ld      de,$fff8
add     hl,de
adc     a,$ff
ld      ($d404),hl
ld      ($d406),a
bit     4,(ix+$18)
jr      nz,label_591eh         ; (+03h)
ld      a,$12
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
ld      hl,($d3ff)
add     hl,bc
ld      a,l
and     $e0
ld      l,a
ld      ($d2e3),hl
ld      bc,$0010
ld      hl,($d402)
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
ld      a,$07
rst     $28
ret     

label_59d6: 
ld      hl,($d404)
ld      a,($d406)
ld      c,a
and     $80
ld      b,a
ld      a,($d3ff)
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

ld      (ix+$0a),$00
ld      (ix+$0b),$f6
ld      (ix+$0c),$ff
ld      a,$04
rst     $28
ret     

ld      (ix+$0a),$00
ld      (ix+$0b),$f4
ld      (ix+$0c),$ff
ld      a,$04
rst     $28
ret     

ld      (ix+$0a),$00
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
rst     $28
ret     

label_5a82h: 
ld      a,($d406)
and     a
ld      de,$fff0
jp      p,label_5a8fh
ld      de,$0020
label_5a8fh:   
ld      hl,($d3ff)
ld      bc,$0008
add     hl,bc
ld      a,l
and     $e0
ld      l,a
add     hl,de
ld      ($d3ff),hl
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

ld      hl,($d3ff)
ld      bc,$0008
add     hl,bc
ld      a,l
and     $1f
cp      $10
jr      nc,label_5b37h         ; (+42h)
ld      hl,($d3ff)
ld      bc,$0008
add     hl,bc
ld      a,l
and     $e0
ld      c,a
ld      b,h
ld      hl,($d402)
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

ld      hl,($d3ff)
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
ld      hl,($d402)
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

ld      hl,($d3ff)
ld      bc,$0008
add     hl,bc
ld      a,l
and     $1f
cp      $10
ret     nc

jp      label_5af5h
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
ld      (ix+$0a),a
ld      (ix+$0b),a
ld      (ix+$0c),a
ld      (ix+$18),a
pop     ix
and     a
ret     

bit     7,(ix+$18)
ret     z

ld      hl,($d402)
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

ld      hl,($d3ff)
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