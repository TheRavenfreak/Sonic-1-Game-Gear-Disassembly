;***Bridge Zone's Boss Logic***
set     5,(ix+$18)
ld      (ix+$0d),$1e
ld      (ix+$0e),$1c
call    $7ce1
ld      (ix+$0f),$6e
ld      (ix+$10),$86
bit     0,(ix+$18)
jr      nz,label_84ebh         ; (+24h)
ld      hl,$05d0
ld      de,$0308
call    $7cc7
ld      hl,$e5de
ld      de,$2000
ld      a,$0c
call    _LABEL_3CE_105
ld      a,$11
ld      ($d22d),a
xor     a
ld      ($d2ed),a
ld      a,$0b;play boss theme
rst     $18
set     0,(ix+$18)
label_84ebh: 
ld      a,(ix+$11)
and     a
jr      nz,label_8519h         ; (+28h)
call    $0663
and     $01
add     a,a
add     a,a
ld      e,a
ld      d,$00
ld      hl,$8646
add     hl,de
ld      a,(hl)
ld      (ix+$02),a
inc     hl
ld      a,(hl)
inc     hl
ld      (ix+$03),a
ld      a,(hl)
inc     hl
ld      (ix+05),a
ld      a,(hl)
inc     hl
ld      (ix+06),a
inc     (ix+$11)
jp      label_85d8h
label_8519h: 
dec     a
jr      nz,label_8540h         ; (+24h)
ld      (ix+$0a),$80
ld      (ix+$0b),$ff
ld      (ix+$0c),$ff
ld      hl,$0370
ld      e,(ix+05)
ld      d,(ix+06)
xor     a
sbc     hl,de
jp      c,label_85d8h
inc     (ix+11h)
ld      (ix+12h),a
jp      label_85d8h
label_8540h:
dec     a
jr      nz,label_85bbh         ; (+78h)
xor     a
ld      (ix+$0a),a
ld      (ix+$0b),a
ld      (ix+$0c),a
inc     (ix+$12)
ld      a,(ix+$12)
cp      $64
jp      nz,label_85d8h
inc     (ix+$11)
ld      a,($d2ed)
cp      $08
jr      nc,label_85d8h         ; (+76h)
ld      hl,($d3ff)
ld      e,(ix+02)
ld      d,(ix+03)
and     a
sbc     hl,de
ld      hl,$864e
jr      c,+          ; (+03h)
ld      hl,$865e
+:  
ld      e,(hl)
inc     hl
ld      d,(hl)
inc     hl
ld      c,(hl)
inc     hl
ld      b,(hl)
inc     hl
push    hl
ld      l,(ix+02)
ld      h,(ix+03)
add     hl,de
ld      ($d20f),hl
ld      l,(ix+05)
ld      h,(ix+06)
add     hl,bc
ld      ($d211),hl
pop     hl
ld      b,$03
-:    
push    bc
ld      a,(hl)
ld      ($d213),a
inc     hl
ld      a,(hl)
ld      ($d214),a
inc     hl
ld      a,(hl)
ld      ($d215),a
inc     hl
ld      a,(hl)
ld      ($d216),a
inc     hl
push    hl
ld      c,$10
call    label_85e5h
pop     hl
pop     bc
djnz    -            ; (-1fh)
ld      a,$01
rst     $28
jp      label_85d8h
label_85bbh:
ld      (ix+$0a),$80
ld      (ix+$0b),$00
ld      (ix+$0c),$00
ld      hl,$03d0
ld      e,(ix+05)
ld      d,(ix+06)
xor     a
sbc     hl,de
jr      nc,label_85d8h         ; (+03h)
ld      (ix+$11),a
label_85d8h:  
ld      hl,$00a2
ld      ($d217),hl
call    $7807
call    $9401
ret     
label_85e5h:;load Projectiles Note: This is also called during Labyrinth Zone's Boss. 
push    bc
call    $7cb6
pop     bc
ret     c

push    ix
push    hl
pop     ix
xor     a
ld      (ix+00),$0d
ld      hl,($d20f)
ld      (ix+01),a
ld      (ix+02),l
ld      (ix+03),h
ld      hl,($d211)
ld      (ix+04),a
ld      (ix+05),l
ld      (ix+06),h
ld      (ix+$11),a
ld      (ix+$13),c
ld      (ix+$14),a
ld      (ix+$15),a
ld      (ix+$16),a
ld      (ix+$17),a
ld      hl,($d213)
xor     a
bit     7,h
jr      z,+          ; (+01h)
dec     a
+:  
ld      (ix+07),l
ld      (ix+08),h
ld      (ix+09),a
ld      hl,($d215)
xor     a
bit     7,h
jr      z,+          ; (+01h)
dec     a
+:  
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),a
pop     ix
ret   
.incbin "8646-867f.bin";Load Eggman's compressed graphics