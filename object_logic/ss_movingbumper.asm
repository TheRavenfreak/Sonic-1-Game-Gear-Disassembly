ld      a,($d3ff)
add     a,$08
and     $1f
ld      l,a
ld      h,$00
add     hl,bc
ld      b,$00
ld      c,(hl)
bit     7,c
jr      z,+
dec     b

+:
ld      l,(ix+05)
ld      h,(ix+06)
add     hl,bc
ld      ($d402),hl
ld      a,($d408)
cp      $03
jr      nc,+
scf     
ret 
    
+:
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
sra     a
rr      h
rr      l
ld      ($d407),hl
ld      ($d409),a
and     a
ret     

set     5,(ix+$18)
ld      (ix+$0d),$1c;1c
ld      (ix+$0e),$06;06
ld      (ix+$0f),$42
ld      (ix+$10),$9b
ld      hl,$0001
ld      a,(ix+$12)
cp      $60
jr      nc,+
ld      hl,$ffff

+:
ld      (ix+07),$00
ld      (ix+08),l
ld      (ix+09),h
inc     a
cp      $c0
jr      c,+
xor     a

+:
ld      (ix+$12),a
ld      a,(ix+$11)
and     a
jr      nz,label_9b3eh
ld      hl,$0602
ld      ($d215),hl
call    label_3326h
ret     c

ld      a,($d2e9)
ld      de,($d2e7)
ld      c,a
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
adc     a,c
ld      de,$0001
add     hl,de
adc     a,$00
ld      ($d407),hl
ld      ($d409),a
ld      (ix+$11),$08
ld      a,$07;play bumper sound
rst     $28
ret
     
label_9b3eh:
dec     (ix+$11)
ret     
.incbin "Art/ss_movingbumper.bin"