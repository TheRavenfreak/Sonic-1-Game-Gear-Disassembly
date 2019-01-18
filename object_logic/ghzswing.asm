;***Swinging Platform GHZ***
set     5,(ix+$18)
ld      hl,$0040
ld      ($d265),hl
ld      hl,$0040
ld      ($d267),hl
bit     0,(ix+$18)
jr      nz,label_678bh         ; (+24h)
ld      l,(ix+02)
ld      h,(ix+03)
ld      (ix+$12),l
ld      (ix+$13),h
ld      l,(ix+05)
ld      h,(ix+06)
ld      (ix+$14),l
ld      (ix+$15),h
ld      (ix+$11),$e0
set     0,(ix+$18)
set     1,(ix+$18)

label_678bh: 
ld      (ix+$0d),$1a
ld      (ix+$0e),$10
ld      l,(ix+02)
ld      h,(ix+03)
ld      ($d20f),hl
ld      hl,$6838
ld      e,(ix+$11)
ld      d,$00
add     hl,de
ld      c,l
ld      b,h
ld      a,(bc)
and     a
jp      p,+
dec     d

+:   
ld      e,a
ld      l,(ix+$12)
ld      h,(ix+$13)
add     hl,de
ld      (ix+02),l
ld      (ix+03),h
ld      de,($d20f)
and     a
sbc     hl,de
ld      ($d20f),hl
inc     bc
ld      d,$00
ld      a,(bc)
and     a
jp      p,+
dec     d

+:
ld      e,a
ld      l,(ix+$14)
ld      h,(ix+$15)
add     hl,de
ld      (ix+05),l
ld      (ix+06),h
ld      a,($d409)
and     a
jp      m,label_6802h
ld      hl,$0806
ld      ($d215),hl
call    $3326
jr      c,label_6802h          ; (+14h)
ld      hl,($d3ff)
ld      de,($d20f)
add     hl,de
ld      ($d3ff),hl
ld      bc,$0010
ld      de,$0000
call    $7cfc

label_6802h:  
ld      hl,$691a
ld      a,($d2d5)
and     a
jr      z,+          ; (+03h)
ld      hl,$692c

+:
ld      (ix+$0f),l
ld      (ix+$10),h
bit     1,(ix+$18)
jr      nz,label_682ah         ; (+10h)
ld      a,(ix+$11)
inc     a
inc     a
ld      (ix+$11),a
cp      $e0
ret     c

set     1,(ix+$18)
ret 
    
label_682ah:
ld      a,(ix+$11)
dec     a
dec     a
ld      (ix+$11),a
ret     nz

res     1,(ix+$18)
ret  
.incbin "Art/ghzswing.bin"