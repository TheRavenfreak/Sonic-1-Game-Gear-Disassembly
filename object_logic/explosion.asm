;***Explosion Logic****
set     5,(ix+$18)
ld      a,(ix+$15)
cp      $aa
jr      z,label_6973h          ; (+20h)
xor     a
ld      (ix+$11),a
ld      (ix+$15),$aa
ld      (ix+$16),a
ld      (ix+$17),a
ld      (ix+07),a
ld      (ix+08),a
ld      (ix+09),a
ld      (ix+$0a),a
ld      (ix+$0b),a
ld      (ix+$0c),a

label_6973h:  
ld      a,(ix+$11)
dec     a
jr      nz,label_69aeh         ; (+35h)
bit     5,(iy+$00)
jr      z,label_69aeh          ; (+2fh)
ld      a,($d238)
cp      $12
jr      z,label_69aeh          ; (+28h)
ld      a,($d415)
rlca    
jr      c,label_69aeh          ; (+22h)
ld      a,($d2e9)
ld      de,($d2e7)
inc     de
ld      c,a
ld      hl,($d407)
ld      a,l
cpl     
ld      l,a
ld      a,h
cpl     
ld      h,a
ld      a,($d409)
and     a
jp      m,label_69aeh
cpl     
add     hl,de
adc     a,c
ld      ($d407),hl
ld      ($d409),a

label_69aeh:
ld      de,$69cc;fetch the vram offset
ld      bc,$69c5
call    $7c7c
inc     (ix+$11)
ld      a,(ix+$11)
cp      $18
ret     c

ld      (ix+00),$ff
ret  
.incbin "Art/explosion.bin" 