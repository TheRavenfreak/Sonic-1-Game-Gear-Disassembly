;***Labyrinth Zone Spear Logic***
set     5,(ix+$18)
bit     0,(ix+$18)
jr      nz,label_8b25h         ; (+14h)
ld      l,(ix+02)
ld      h,(ix+03)
ld      de,$000c
add     hl,de
ld      (ix+02),l
ld      (ix+03),h
set     0,(ix+$18)
label_8b25h:   
ld      l,(ix+02)
ld      h,(ix+03)
ld      ($d20f),hl
ld      l,(ix+05)
ld      h,(ix+06)
ld      ($d211),hl
ld      hl,$0000
ld      ($d213),hl
ld      a,($d224)
rlca    
rlca    
and     $03
jr      nz,label_8b5ah         ; (+14h)
ld      hl,$8bcd
ld      a,($d224)
and     $3f
ld      e,a
cp      $08
jr      c,label_8b82h          ; (+2fh)
ld      hl,$8bde
ld      e,$00
jr      label_8b82h            ; (+28h)
label_8b5ah:   
cp      $01
jr      nz,label_8b65h         ; (+07h)
ld      hl,$8bde
ld      e,$00
jr      label_8b82h 
label_8b65h:           ; (+1dh)
cp      $02
jr      nz,label_8b7dh         ; (+14h)
ld      hl,$8bd5
ld      a,($d224)
and     $3f
ld      e,a
cp      $08
jr      c,label_8b82h          ; (+0ch)
ld      hl,$8bdd
ld      e,$00
jr      label_8b82h            ; (+05h)
label_8b7dh: 
ld      hl,$8bdd
ld      e,$00
label_8b82h:    
ld      d,$00
add     hl,de
ld      a,(hl)
ld      hl,$8bdf
add     a,a
add     a,a
add     a,a
ld      e,a
add     hl,de
ld      b,$03
-:    
push    bc
ld      a,(hl)
inc     hl
ld      e,(hl)
inc     hl
and     a
jp      m,label_8ba4h
push    hl
ld      d,$00
ld      ($d215),de
call    label_2f5bh
pop     hl
label_8ba4h:     
pop     bc
djnz    -            ; (-17h)
ld      (ix+$0f),b
ld      (ix+$10),b
ld      d,(hl)
ld      e,$04
ld      ($d215),de
inc     hl
ld      a,(hl)
ld      (ix+$0d),$01
ld      (ix+$0e),a
call    $3326
call    nc,label_2fd7h
ld      a,($d224)
cp      $80
ret     nz

ld      a,$1d
rst     $28;play spear sound effect
ret    
.incbin "Art/LZspear.bin";spear compressed art