ld      (ix+$0d),$18
ld      (ix+$0e),$30
bit     0,(ix+$11)
jr      nz,label_6232h         ; (+22h)
res     7,(iy+06)
res     3,(iy+05)
ld      hl,$3ab8
ld      de,$2000
ld      a,$09
call    _LABEL_3CE_105
ld      a,$0e
ld      ($d22d),a
ld      a,(RingCounter);get ring counter
ld      ($d2aa),a
set     0,(ix+$11)

label_6232h: 
ld      hl,($d254)
ld      ($d26d),hl
ld      l,(ix+02)
ld      h,(ix+03)
ld      de,$ff90
add     hl,de
ld      ($d26f),hl
ld      hl,$0070
ld      ($d265),hl
ld      hl,$0078
ld      ($d267),hl
ld      c,(ix+$13)
ld      a,($d415)
and     $80
ld      (ix+$13),a
jr      z,label_6292h          ; (+34h)
cp      c
jr      z,label_6292h          ; (+31h)
bit     7,(ix+$18)
jr      z,label_6292h          ; (+2bh)
ld      e,(ix+02)
ld      d,(ix+03)
ld      hl,($d3ff)
and     a
sbc     hl,de
bit     7,h
jr      z,label_627eh          ; (+07h)
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
inc     hl

label_627eh:  
ld      de,$0064
and     a
sbc     hl,de
jr      nc,label_6292h         ; (+0ch)
ld      (ix+$0a),$00
ld      (ix+$0b),$fe
ld      (ix+$0c),$ff

label_6292h:
ld      l,(ix+$0a)
ld      h,(ix+$0b)
ld      a,(ix+$0c)
ld      de,$001a
add     hl,de
adc     a,$00
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),a
bit     3,(ix+$11)
jr      nz,label_6322h         ; (+72h)
bit     2,(ix+$11)
jr      z,label_62d6h          ; (+20h)
bit     7,(ix+$18)
jr      z,label_6322h          ; (+66h)
ld      a,$09
rst     $18;play end of act jingle
ld      a,$0c
rst     $28;play signpost landing sound effect
res     2,(ix+$11)
set     3,(ix+$11)
ld      a,$a0
ld      ($d283),a
set     1,(iy+06)
jp      label_6322h

label_62d6h:
ld      hl,$0a0a
ld      ($d215),hl
call    $3326
jr      c,label_6322h          ; (+41h)
bit     7,(ix+$0c)
jr      nz,label_6322h         ; (+3bh)
bit     1,(ix+$11)
jr      nz,label_6322h         ; (+35h)
ld      de,($d404)
bit     7,d
jr      z,+          ; (+07h)
ld      a,e
cpl     
ld      e,a
ld      a,d
cpl     
ld      d,a
inc     de
 
+: 
ld      ($d301),de
ld      hl,$0300
and     a
sbc     hl,de
jr      nc,+        ; (+03h)
ld      de,$0300

+:
ex      de,hl
add     hl,hl
ld      (ix+$14),l
ld      (ix+$15),h
ld      (ix+$12),$00
set     1,(ix+$11)
res     3,(iy+06)
ld      a,$0b
rst     $28;play signpost twirling sfx

label_6322h:
ld      de,$64b2
bit     1,(ix+$11)
jp      nz,label_63f1h
bit     2,(ix+$11)
jp      nz,label_63f1h
ld      de,$64cc
bit     3,(ix+$11)
jp      z,label_63f1h
ld      a,($d238);get current level
cp      $0c;are we in Scrap Brain 1?
jr      c,label_634fh          ; (+0bh)
cp      $1c;are we in a Special Stage?
jr      c,label_635bh          ; (+13h)
ld      de,$64e9
ld      c,$01
jr      label_6377h
            ; (+28h)
label_634fh:   
ld      de,$6503
ld      c,$04
ld      a,($d2aa)
cp      $50
jr      nc,label_6377h
label_635bh: 
ld      a,($d300)
cp      $02
jr      nz,label_6369h         ; (+07h)
ld      de,$651d
ld      c,$03
jr      label_6377h            ; (+0eh)
  
label_6369h:  
ld      de,$64cf
ld      c,$02
cp      $03
jr      nc,label_6377h         ; (+05h)
ld      de,$64e9
ld      c,$01
 
label_6377h:      
ld      a,c
ld      ($d282),a
push    de
ld      de,($d301)
ld      a,d
ld      hl,$65cf
cp      $04
jr      nc,label_63b1h         ; (+29h)
and     a
jr      z,label_63f0h          ; (+65h)
ld      hl,$65c7
dec     a
jr      nz,label_639fh         ; (+0eh)
ld      a,e
cp      $60
jr      c,label_63f0h          ; (+5ah)
cp      $a0
jr      c,label_63b1h          ; (+17h)
ld      hl,$65df
jr      label_63b1h 

label_639fh:           ; (+12h)
ld      hl,$65cf
dec     a
jr      nz,label_63f0h         ; (+4bh)
ld      a,e
cp      $80
jr      c,label_63b1h          ; (+07h)
cp      $a0
jr      nc,label_63f0h         ; (+42h)
ld      hl,$65d7

label_63b1h:    
ld      e,(hl)
inc     hl
ld      d,(hl)
inc     hl
ld      c,(hl)
inc     hl
ld      b,(hl)
inc     hl
push    hl
push    de
ld      l,(ix+05)
ld      h,(ix+06)
ld      de,$fff2
add     hl,de
ld      de,($d257)
and     a
sbc     hl,de
ex      de,hl
ld      l,(ix+02)
ld      h,(ix+03)
add     hl,bc
ld      bc,($d254)
and     a
sbc     hl,bc
pop     bc
call    nz,$2f05
pop     hl
ld      c,(hl)
inc     hl
ld      e,(hl)
inc     hl
ld      d,(hl)
bit     7,(ix+$11)
call    z,label_33A8h
set     7,(ix+$11)

label_63f0h:
pop     de

label_63f1h:
ld      l,(ix+$12)
ld      h,$00
add     hl,de
ld      a,(hl)
cp      $ff
jr      nz,label_6404h         ; (+08h)
inc     hl
ld      a,(hl)
ld      (ix+$12),a
jp      label_63f1h

label_6404h:      
ld      l,a
ld      h,$00
add     hl,hl
ld      e,l
ld      d,h
add     hl,hl
add     hl,hl
add     hl,hl
add     hl,de
ld      de,$6537
add     hl,de
ld      (ix+$0f),l
ld      (ix+$10),h
bit     1,(ix+$11)
jr      nz,+        ; (+04h)
inc     (ix+$12)
ret 
    
+:
ld      a,(ix+$14)
add     a,(ix+$16)
ld      (ix+$16),a
ld      a,(ix+$15)
push    af
adc     a,(ix+$17)
ld      (ix+$17),a
pop     af
adc     a,(ix+$12)
cp      $18
jr      c,+          ; (+01h)
xor     a

+:
ld      (ix+$12),a
ld      e,(ix+$0a)
ld      d,(ix+$0b)
ld      a,(ix+$0c)
and     a
jp      p,+
ld      hl,$fc00
sbc     hl,de
ret     nc

+:
ex      de,hl
ld      e,(ix+$14)
ld      d,(ix+$15)
ld      c,e
ld      b,d
srl     d
rr      e
srl     d
rr      e
srl     d
rr      e
srl     d
rr      e
srl     d
rr      e
and     a
sbc     hl,de
sbc     a,$00
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),a
ld      l,(ix+$05)
ld      h,(ix+$06)
xor     a
ld      de,$0008
sbc     hl,de
jr      c,+          ; (+0fh)
ld      l,c
ld      h,b
ld      de,$0010
xor     a
sbc     hl,de
ld      (ix+$14),l
ld      (ix+$15),h
ret     nc

+:
ld      (ix+$0a),a
ld      (ix+$0b),a
ld      (ix+$0c),a
res     1,(ix+$11)
set     2,(ix+$11)
ld      (ix+$12),$00
ret 
.incbin "Art/signpost.bin";load signpost art