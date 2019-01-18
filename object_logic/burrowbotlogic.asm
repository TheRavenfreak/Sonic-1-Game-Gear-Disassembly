;***Burrowbot Logic***
xor     a
ld      (ix+$0f),a
ld      (ix+$10),a
ld      a,(ix+$11)
and     $0f

jr      nz,label_8efch         ; (+1ch)
call    $0663
ld      bc,$0028
ld      d,$00
and     $3f
cp      $20
jr      c,label_8ef3h          ; (+05h)
ld      bc,$ffd8
ld      d,$ff
label_8ef3h: 
ld      (ix+07),c
ld      (ix+08),b
ld      (ix+09),d
label_8efch: 
ld      (ix+$0a),$60
ld      (ix+$0b),$ff
ld      (ix+$0c),$ff
ld      l,(ix+02)
ld      h,(ix+03)
ld      ($d20f),hl
ex      de,hl
ld      hl,($d254)
ld      bc,$0008
xor     a
sbc     hl,bc
jr      nc,+         ; (+02h)
ld      l,a
ld      h,a

+:
and     a
sbc     hl,de
jr      nc,label_8f5ah         ; (+36h)
ld      hl,($d254)
ld      bc,$0100
add     hl,bc
and     a
sbc     hl,de
jr      c,label_8f5ah          ; (+2ah)
ld      l,(ix+05)
ld      h,(ix+06)
ld      ($d211),hl
ex      de,hl
ld      hl,($d2dd)
and     a
sbc     hl,de
jr      nc,label_8f5ah         ; (+18h)
ld      hl,($d257)
ld      bc,$fff0
add     hl,bc
and     a
sbc     hl,de
jr      nc,label_8f5ah         ; (+0ch)
ld      hl,($d257)
ld      bc,$00c0
add     hl,bc
and     a
sbc     hl,de
jr      nc,+         ; (+04h)
label_8f5ah:
ld      (ix+$00),$ff
+:
ld      hl,$0000
ld      ($d213),hl
ld      ($d215),hl
ld      a,$0c
call    label_2f5bh
inc     (ix+$11)
ret    
 
ret

ld      (ix+$0d),$0c
ld      (ix+$0e),$20
ld      hl,$0202
ld      ($d215),hl
call    $3326
ld      hl,$0800
ld      ($d20f),hl
call    nc,$2fbf
ld      l,(ix+$0a)
ld      h,(ix+$0b)
ld      a,(ix+$0c)
ld      de,$0010
add     hl,de
adc     a,$00
ld      c,a
jp      m,label_8fa8h
ld      a,h
cp      $04
jr      c,label_8fa8h          ; (+05h)
ld      hl,$0300
ld      c,$00
label_8fa8h: 
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),c 
bit     0,(ix+$18)
jp      nz,label_902dh
ld      de,$ffd0
ld      l,(ix+02)
ld      h,(ix+03)
add     hl,de
ld      de,($d3ff)
and     a
sbc     hl,de
jr      nc,label_8feah         ; (+1fh)
ld      bc,$0030
ld      l,(ix+02)
ld      h,(ix+03)
add     hl,bc
and     a
sbc     hl,de
jr      c,label_8feah          ; (+10h)
set     0,(ix+$18)
ld      (ix+$0a),$80
ld      (ix+$0b),$fd
ld      (ix+$0c),$ff
label_8feah: 
ld      l,(ix+02)
ld      h,(ix+03)
ld      de,($d3ff)
and     a
sbc     hl,de
jr      c,label_9013h          ; (+1ah)
ld      (ix+$07),$c0
ld      (ix+08),$ff
ld      (ix+09),$ff
ld      de,$905d
ld      bc,$904e
call    $7c7c
set     1,(ix+$18)
ret
     
label_9013h:
ld      (ix+07),$40
ld      (ix+08),$00
ld      (ix+09),$00
ld      de,$905d
ld      bc,$9049
call    $7c7c
res     1,(ix+$18)
ret  
   
label_902dh:
ld      bc,$9058
bit     1,(ix+$18)
jr      nz,+         ; (+03h)
ld      bc,$9053
+: 
ld      de,$905d
call    $7c7c
bit     7,(ix+$18)
ret     z

res     0,(ix+$18)
ret 
.incbin "Art/badnik/burrowbot.bin";load Burrowbot compressed art 