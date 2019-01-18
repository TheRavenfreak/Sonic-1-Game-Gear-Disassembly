;*****Jaws Badnik Logic*****
set     5,(ix+$18)
ld      (ix+$0d),$08
ld      (ix+$0e),$0c
bit     0,(ix+$18)
jr      nz,label_8942h         ; (+21h)
ld      l,(ix+02)
ld      h,(ix+03)
ld      de,$0008
add     hl,de
ld      (ix+$12),l
ld      (ix+$13),h
ld      l,(ix+05)
ld      h,(ix+06)
add     hl,de
ld      (ix+$14),l
ld      (ix+$15),h
set     0,(ix+$18)

label_8942h:  
ld      l,(ix+$11)
ld      h,$00
add     hl,hl
ld      de,$899f
add     hl,de
ld      e,(hl)
inc     hl
ld      c,(hl)
ld      d,$00
ld      b,d
bit     7,e
jr      z,+          ; (+01h)
dec     d
+:   
bit     7,c
jr      z,+          ; (+01h)
dec     b
+:  
ld      l,(ix+$12)
ld      h,(ix+$13)
add     hl,de
ld      (ix+02),l
ld      (ix+03),h
ld      l,(ix+$14)
ld      h,(ix+$15)
add     hl,bc
ld      (ix+05),l
ld      (ix+06),h
ld      hl,$0204
ld      ($d215),hl
call    $3326
call    nc,label_2fd7h
ld      (ix+$0f),$98
ld      (ix+$10),$89
inc     (ix+$11)
ld      a,(ix+$11)
cp      $b4
ret     c

ld      (ix+$11),$00
ret     
.incbin "8998-8b06.bin";load Jaws compressed art