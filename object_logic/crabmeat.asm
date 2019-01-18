;**Crabmeat Logic****
ld      (ix+$0d),$10
ld      (ix+$0e),$1f
ld      e,(ix+$12)
ld      d,$00

label_6610h: 
ld      hl,$66DA
add     hl,de
ld      ($d215),hl
ld      a,(hl)
and     a
jr      nz,+         ; (+07h)
ld      (ix+$12),a
ld      e,a
jp      label_6610h

+:   ;move the crabmeat to the right
dec     a
jr      nz,+         ; (+08h)
ld      c,$00
ld      h,c
ld      l,$28
jp      $6684

+:   ;move the crabmeat to the left
dec     a
jr      nz,+         ; (+08h)
ld      c,$ff
ld      hl,$ffd8
jp      $6684

+:
dec     a
jr      nz,+         ; (+07h)
ld      c,$00
ld      l,c
ld      h,c
jp      $6684

+:   ;load projectiles
ld      a,(ix+$11)
cp      $20
jp      nz,$668d
ld      hl,$ffff;set the correct coordinates for the left projectile
ld      ($d213),hl
ld      hl,$fffc
ld      ($d215),hl
call    $7cb6
jp      c,$668d
ld      de,$0000
ld      c,e
ld      b,d
call    $0ac5b
ld      hl,$0001;set the correct x and y coordinates for the right projectile
ld      ($d213),hl
ld      hl,$fffc
ld      ($d215),hl
call    $7cb6
jr      c,label_668dh         ; (+18h)
ld      de,$000e
ld      bc,$0000
call    $0ac5b
ld      a,$0a
rst     $28;play crabmeat projectile sound effect
jp      label_668dh
ld      (ix+07),l
ld      (ix+08),h
ld      (ix+09),c
label_668dh:  
ld      l,(ix+$11)
ld      h,(ix+$12)
ld      de,$0008
add     hl,de
ld      (ix+$11),l
ld      (ix+$12),h
ld      l,(ix+$0a)
ld      h,(ix+$0b)
ld      a,(ix+$0c)
ld      de,$0020
add     hl,de
adc     a,d
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),a
ld      hl,($d215)
ld      a,(hl)
add     a,a
ld      e,a
ld      hl,$66f5;load the crabmeat's first animation
add     hl,de
ld      c,(hl)
inc     hl
ld      b,(hl)
ld      de,$670e
call    $7c7c
ld      hl,$0a04
ld      ($d215),hl
call    $3326
ld      hl,$0804
ld      ($d20f),hl
call    nc,$2fbf
ret
.incbin "Art/badnik/crabmeat.bin"