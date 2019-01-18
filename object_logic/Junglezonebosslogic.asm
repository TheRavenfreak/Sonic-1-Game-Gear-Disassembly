;***Jungle Zone's Boss Logic***
;The first half loads Robotnik's ship and his movements while the second half controls the bomb he drops.
set     5,(ix+$18)
ld      (ix+$0d),$20
ld      (ix+$0e),$1c
bit     0,(ix+$18)
jr      nz,label_80c4h         ; (+48h)
ld      hl,($d402)
ld      de,$00e0
and     a
sbc     hl,de
ret     nc

ld      a,($d415)
rlca    
ret     nc

ld      hl,$0a8b7
ld      de,$2000
ld      a,$09
call    _LABEL_3CE_105
ld      a,$11
ld      ($d22d),a
ld      a,$0b;play boss theme
rst     $18
xor     a
ld      ($d2ed),a
ld      hl,($d254)
ld      ($d26d),hl
ld      ($d26f),hl
ld      hl,($d257)
ld      ($d271),hl
ld      ($d273),hl
ld      hl,$01e0;adjust the camera's x position
ld      ($d275),hl
ld      hl,$0050;adjust the camera's y position
ld      ($d277),hl
set     0,(ix+$18)
label_80c4h: 
call    $7ce1
bit     0,(ix+$11)
jr      nz,label_80fbh         ; (+2eh)
ld      (ix+$0f),$08;load Robotnik's mappings?
ld      (ix+$10),$82
ld      (ix+$0a),$80
ld      (ix+$0b),$00
ld      (ix+$0c),$00
ld      l,(ix+$05)
ld      h,(ix+$06)
ld      de,$0070
xor     a
sbc     hl,de
ret     c

ld      (ix+$0a),a
ld      (ix+$0b),a
ld      (ix+$0c),a
set     0,(ix+$11)
label_80fbh:  
ld      a,(ix+$12)
and     a
jp      nz,label_815eh
ld      l,(ix+02)
ld      h,(ix+03)
bit     1,(ix+$11)
jr      nz,label_8136h         ; (+28h)
ld      (ix+$0f),$08
ld      (ix+$10),$82
res     1,(ix+$18)
ld      (ix+$07),$80
ld      (ix+$08),$ff
ld      (ix+$09),$ff
ld      de,$021c
and     a
sbc     hl,de
jp      nc,label_81fbh
ld      (ix+$12),$57
jp      label_81fbh
label_8136h:
ld      (ix+$0f),$1a
ld      (ix+$10),$82
set     1,(ix+$18)
ld      (ix+07),$80
ld      (ix+08),$00
ld      (ix+09),$00
ld      de,$0288
and     a
sbc     hl,de
jp      c,label_81fbh
ld      (ix+$12),$57
jp      label_81fbh
label_815eh:
xor     a
ld      (ix+07),a
ld      (ix+08),a
ld      (ix+09),a
ld      hl,$0001
dec     (ix+$12)
jr      z,label_8182h         ; (+12h)
ld      a,(ix+$12)
cp      $38
jr      nc,label_8185h         ; (+0eh)
ld      hl,$ffff
cp      $20
jr      c,label_8185h          ; (+07h)
cp      $34
jr      z,label_8191h
          ; (+0fh)
label_8182h:
ld      hl,$0000
label_8185h:
ld      (ix+$0a),$00
ld      (ix+$0b),l
ld      (ix+$0c),h
jr      label_81fbh
label_8191h:
            ; (+6ah)
ld      a,(ix+$11)
xor     $02
ld      (ix+$11),a
ld      a,($d2ed)
cp      $08
jr      nc,label_81fbh         ; (+5bh)
call    $7cb6
ret     c

ld      e,(ix+02)
ld      d,(ix+03)
ld      c,(ix+05)
ld      b,(ix+06)
push    ix
push    hl
pop     ix
ld      (ix+00),$2b
xor     a
ld      (ix+01),a
ld      hl,$000b
add     hl,de
ld      (ix+$02),l
ld      (ix+03),h
ld      (ix+04),a
ld      hl,$0030
add     hl,bc
ld      (ix+05),l
ld      (ix+06),h
ld      (ix+07),a
ld      (ix+08),a
ld      (ix+09),a
ld      (ix+$0a),a
ld      (ix+$0b),a
ld      (ix+$0c),a
ld      (ix+$11),a
ld      (ix+$16),a
ld      (ix+$17),a
call    $0663
and     $3f
add     a,$64
ld      (ix+$12),a
pop     ix

label_81fbh:
ld      hl,$005a
ld      ($d217),hl
call    $7807
call    $7a3d
ret     
.incbin "8208-822b.bin"

;***Jungle Zone Boss- Bomb Logic***
res     5,(ix+$18)
ld      (ix+$0d),$0c
ld      (ix+$0e),$10
ld      hl,$0202
ld      ($d215),hl
call    $3326
call    nc,label_2fd7h
ld      l,(ix+$07)
ld      h,(ix+$08)
ld      a,(ix+$09)
ld      de,$0002
ld      c,$00
and     a    
jp      m,+
dec     c
ld      de,$fffe
+:  
add     hl,de
adc     a,c
ld      (ix+$07),l
ld      (ix+$08),h
ld      (ix+$09),a
ld      l,(ix+$0a)
ld      h,(ix+$0b)
ld      a,(ix+$0c)
ld      de,$0020
add     hl,de
adc     a,$00
ld      c,a
ld      a,h
cp      $03
jr      c,label_827fh          ; (+05h)
ld      hl,$0300
ld      c,$00
label_827fh: 
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),c
ld      a,($d224)
and     $01
add     a,(ix+$11)
ld      (ix+$11),a
ld      a,(ix+$11)
cp      (ix+$12)
jr      nc,label_82a5h         ; (+0ah)
ld      bc,$82d5
ld      de,$82e1
call    $7c7c
ret 
    
label_82a5h:
jr      nz,label_82b4h         ; (+0dh)
ld      a,($d224)
and     $01
ret     z

ld      (ix+$16),$00
ld      a,$01;play bomb exploding sfx
rst     $28
label_82b4h:      
xor     a
ld      (ix+$07),a
ld      (ix+$08),a
ld      (ix+$09),a
ld      bc,$82da
ld      de,$a383
call    $7c7c
ld      a,(ix+$12)
add     a,$12
cp      (ix+$11)
ret     nc

ld      (ix+$00),$ff
ret     
.incbin "82d5-82f9.bin";Bomb compressed art
ld      (ix+$0d),$10
ld      (ix+$0e),$0e
ld      hl,$0608
ld      ($d215),hl
call    $3326
call    nc,label_2fd7h
ld      (ix+$0d),$14
ld      (ix+$0e),$20
ld      hl,$1006
ld      ($d215),hl
call    $3326
ld      hl,$0404
ld      ($d20f),hl
call    nc,$2fbf
ld      l,(ix+$0a)
ld      h,(ix+$0b)
ld      a,(ix+$0c)
ld      de,$0020
add     hl,de
adc     a,$00
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),a
ld      a,(ix+$11)
cp      $50
jr      c,label_835fh          ; (+18h)
ld      (ix+$07),$40
ld      (ix+$08),$00
ld      (ix+$09),$00
ld      de,$8392
ld      bc,$838d
call    $7c7c
jp      label_8374h

label_835fh: 
ld      (ix+$07),$c0
ld      (ix+$08),$ff
ld      (ix+$09),$ff
ld      de,$8392
ld      bc,$8388
call    $7c7c

label_8374h: 
ld      a,($d224)
and     $07
ret     nz

inc     (ix+$11)
ld      a,(ix+$11)
cp      $a0
ret     c

ld      (ix+$11),$00
ret     
.incbin "8388-83d4.bin"
set     5,(ix+$18)
ld      (ix+$0d),$0e
ld      (ix+$0e),$0c
bit     0,(ix+$18)
jr      nz,label_843bh         ; (+54h)
xor     a
ld      (ix+$0f),a
ld      (ix+$10),a
ld      l,a
ld      h,a
ld      ($d20f),hl
bit     1,(ix+$18)
jr      nz,+         ; (+0dh)
call    $0663
and     $1f
inc     a
ld      (ix+$11),a
set     1,(ix+$18)
+:  
dec     (ix+$11)
jp      nz,label_847bh
ld      (ix+$11),$01
ld      a,($d2ac)
and     $80
jp      z,label_847bh
ld      l,(ix+02)
ld      h,(ix+03)
ld      ($d2ab),hl
ld      l,(ix+05)
ld      h,(ix+06)
ld      de,$000e
add     hl,de
ld      ($d2ad),hl
ld      hl,$84a2
ld      ($d2af),hl
set     0,(ix+$18)
ld      a,$20
rst     $28

label_843bh:
ld      (ix+$0f),$95
ld      (ix+$10),$84
ld      l,(ix+$0a)
ld      h,(ix+$0b)
ld      a,(ix+$0c)
ld      de,$0020
add     hl,de
adc     a,$00
ld      c,a
ld      a,h
cp      $04
jr      c,+          ; (+02h)
ld      h,$04
+:   
ld      (ix+$0a),l
ld      (ix+$0b),h
ld      (ix+$0c),c
ld      ($d20f),hl
ld      de,($d257)
inc     d
ld      l,(ix+05)
ld      h,(ix+06)
and     a
sbc     hl,de
jr      c,label_847bh          ; (+05h)
ld      (ix+$00),$ff
ret 
    
label_847bh:
ld      hl,$0402
ld      ($d215),hl
call    $3326
ret     c

ld      a,($d409)
and     a
ret     m

ld      de,($d20f)
ld      bc,$0010
call    $7cfc
ret     
.incbin "8495-84a9.bin"