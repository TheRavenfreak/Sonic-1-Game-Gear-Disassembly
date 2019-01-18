; Disassembly of the file "C:\Users\Ravenfreak\Documents\Sonic 1 Game Gear Disassembly\10.bin"
; 
; CPU Type: Z80
; 
; Created with dZ80 2.0
; 
; on Sunday, 14 of May 2017 at 07:21 PM
; 
0000 216f43    ld      hl,$436f
0003 110020    ld      de,$2000
0006 3e09      ld      a,$09
0008 cdce03    call    _LABEL_3CE_105
000b 213867    ld      hl,$6738
000e 110038    ld      de,$3800
0011 012d01    ld      bc,$012d
0014 af        xor     a
0015 320fd2    ld      ($d20f),a
0018 324bd2    ld      ($d24b),a
001b 324cd2    ld      ($d24c),a
001e 3e05      ld      a,$05
0020 cdca04    call    label_4cah
0023 db00      in      a,($00)
0025 07        rlca    
0026 07        rlca    
0027 3006      jr      nc,+         ; (+06h)
0029 215644    ld      hl,$4456
002c cded05    call    _LABEL_5ED_132
002f 215b44 +:   
               ld      hl,$445b
0032 cded05    call    _LABEL_5ED_132
0035 210909    ld      hl,$0909
0038 222cd2    ld      ($d22c),hl
003b fdcb00ce  set     1,(iy+00)
003f 3e06      ld      a,$06
0041 df        rst     $18
0042 210000    ld      hl,$0000
0045 2217d2    ld      ($d217),hl
0048 3e01      ld      a,$01
004a 3210d2    ld      ($d210),a
004d 21e743    ld      hl,$43e7
0050 2211d2    ld      ($d211),hl
0053 3a1ad2    ld      a,($d21a)
0056 f640      or      $40
0058 321ad2    ld      ($d21a),a
005b fdcb0086  res     0,(iy+00)
005f cdef02    call    _LABEL_2EF_104
0062 3a17d2    ld      a,($d217)
0065 3c        inc     a
0066 fe64      cp      $64
0068 3805      jr      c,+          ; (+05h)
006a 2118d2    ld      hl,$d218
006d 34        inc     (hl)
006e af        xor     a
006f 3217d2  +:  
               ld      ($d217),a
0072 21bd43    ld      hl,$43bd
0075 fe40      cp      $40
0077 3803      jr      c,+          ; (+03h)
0079 21d243    ld      hl,$43d2
007c af  +:     
               xor     a
007d 320fd2    ld      ($d20f),a
0080 cded05    call    _LABEL_5ED_132
0083 2110d2    ld      hl,$d210
0086 35        dec     (hl)
0087 2016      jr      nz,+         ; (+16h)
0089 2a11d2    ld      hl,($d211)
008c 5e        ld      e,(hl)
008d 23        inc     hl
008e 56        ld      d,(hl)
008f 23        inc     hl
0090 7e        ld      a,(hl)
0091 23        inc     hl
0092 a7        and     a
0093 2834      jr      z,label_43bbh          ; (+34h)
0095 3210d2    ld      ($d210),a
0098 2211d2    ld      ($d211),hl
009b ed5313d2  ld      ($d213),de
009f 2100d0  +:  
               ld      hl,$d000
00a2 2236d2    ld      ($d236),hl
00a5 218800    ld      hl,$0088
00a8 112000    ld      de,$0020
00ab ed4b13d2  ld      bc,($d213)
00af cd052f    call    _LABEL_2F05_119
00b2 fdcb037e  bit     7,(iy+$03)
00b6 c24543    jp      nz,label_4345h
00b9 fdcb0e86  res     0,(iy+$0e)
00bd 3a18d2    ld      a,($d218)
00c0 fe05      cp      $05
00c2 2004      jr      nz,+         ; (+04h)
00c4 fdcb0ec6  set     0,(iy+$0e)
00c8 37       +:
               scf     
00c9 e7 label_43bbh:     
               rst     $20
00ca c9        ret     

00cb 07        rlca    
00cc 12        ld      (de),a
00cd e3        ex      (sp),hl
00ce e4e5e6    call    po,0e6e5h
00d1 e601      and     01h
00d3 e6e7      and     0e7h
00d5 e8        ret     pe

00d6 e4e701    call    po,01e7h
00d9 e9        jp      (hl)
00da eb        ex      de,hl
00db e7        rst     20h
00dc e7        rst     20h
00dd eaecff    jp      pe,0ffech
00e0 07        rlca    
00e1 12        ld      (de),a
00e2 010101    ld      bc,0101h
00e5 010101    ld      bc,0101h
00e8 010101    ld      bc,0101h
00eb 010101    ld      bc,0101h
00ee 010101    ld      bc,0101h
00f1 010101    ld      bc,0101h
00f4 ff        rst     38h
00f5 324408    ld      (0844h),a
00f8 44        ld      b,h
00f9 44        ld      b,h
00fa 08        ex      af,af'
00fb 324408    ld      (0844h),a
00fe 44        ld      b,h
00ff 44        ld      b,h
0100 08        ex      af,af'
0101 324408    ld      (0844h),a
0104 44        ld      b,h
0105 44        ld      b,h
0106 08        ex      af,af'
0107 324408    ld      (0844h),a
010a 44        ld      b,h
010b 44        ld      b,h
010c 08        ex      af,af'
010d 324408    ld      (0844h),a
0110 44        ld      b,h
0111 44        ld      b,h
0112 08        ex      af,af'
0113 324408    ld      (0844h),a
0116 44        ld      b,h
0117 44        ld      b,h
0118 08        ex      af,af'
0119 324408    ld      (0844h),a
011c 44        ld      b,h
011d 44        ld      b,h
011e 08        ex      af,af'
011f 324408    ld      (0844h),a
0122 44        ld      b,h
0123 44        ld      b,h
0124 08        ex      af,af'
0125 324408    ld      (0844h),a
0128 44        ld      b,h
0129 44        ld      b,h
012a 08        ex      af,af'
012b 324408    ld      (0844h),a
012e 44        ld      b,h
012f 44        ld      b,h
0130 08        ex      af,af'
0131 324408    ld      (0844h),a
0134 44        ld      b,h
0135 44        ld      b,h
0136 08        ex      af,af'
0137 3244ff    ld      (0ff44h),a
013a 3244ff    ld      (0ff44h),a
013d 29        add     hl,hl
013e 44        ld      b,h
013f 00        nop     
0140 00        nop     
0141 02        ld      (bc),a
0142 04        inc     b
0143 ff        rst     38h
0144 ff        rst     38h
0145 ff        rst     38h
0146 2022      jr      nz,016ah         ; (+22h)
0148 24        inc     h
0149 ff        rst     38h
014a ff        rst     38h
014b ff        rst     38h
014c 40        ld      b,b
014d 42        ld      b,d
014e 44        ld      b,h
014f ff        rst     38h
0150 ff        rst     38h
0151 ff        rst     38h
0152 0608      ld      b,08h
0154 ff        rst     38h
0155 ff        rst     38h
0156 ff        rst     38h
0157 ff        rst     38h
0158 2628      ld      h,28h
015a ff        rst     38h
015b ff        rst     38h
015c ff        rst     38h
015d ff        rst     38h
015e 46        ld      b,(hl)
015f 48        ld      c,b
0160 ff        rst     38h
0161 ff        rst     38h
0162 ff        rst     38h
0163 ff        rst     38h
0164 160b      ld      d,0bh
0166 9e        sbc     a,(hl)
0167 9f        sbc     a,a
0168 ff        rst     38h
0169 0f        rrca    
016a 14        inc     d
016b f1        pop     af
016c ff        rst     38h
016d 010000    ld      bc,0000h
0170 00        nop     
0171 00        nop     
0172 00        nop     
0173 010000    ld      bc,0000h
0176 05        dec     b
0177 00        nop     
0178 00        nop     
0179 1000      djnz    017bh            ; (+00h)
017b 00        nop     
017c 3000      jr      nc,017eh         ; (+00h)
017e 00        nop     
017f 50        ld      d,b
0180 00        nop     
0181 010000    ld      bc,0000h
0184 03        inc     bc
0185 00        nop     
0186 00        nop     
0187 04        inc     b
0188 00        nop     
0189 00        nop     
018a 05        dec     b
018b 00        nop     
018c 00        nop     
018d 08        ex      af,af'
018e 00        nop     
018f 00        nop     
0190 1000      djnz    0192h            ; (+00h)
0192 00        nop     
0193 2000      jr      nz,0195h         ; (+00h)
0195 00        nop     
0196 3000      jr      nc,0198h         ; (+00h)
0198 00        nop     
0199 05        dec     b
019a 00        nop     
019b 03        inc     bc
019c 00        nop     
019d 02        ld      (bc),a
019e 3002      jr      nc,01a2h         ; (+02h)
01a0 00        nop     
01a1 013001    ld      bc,0130h
01a4 00        nop     
01a5 00        nop     
01a6 3000      jr      nc,01a8h         ; (+00h)
01a8 25        dec     h
01a9 00        nop     
01aa 24        inc     h
01ab 00        nop     
01ac 23        inc     hl
01ad 00        nop     
01ae 220021    ld      (2100h),hl
01b1 00        nop     
01b2 2000      jr      nz,01b4h         ; (+00h)
01b4 00        nop     
01b5 3a38d2    ld      a,(0d238h)
01b8 fe13      cp      13h
01ba ca6d46    jp      z,466dh
01bd 3a1ad2    ld      a,(0d21ah)
01c0 e6bf      and     0bfh
01c2 321ad2    ld      (0d21ah),a
01c5 fdcb0086  res     0,(iy+00h)
01c9 cdef02    call    02efh
01cc 2154b3    ld      hl,0b354h
01cf 110030    ld      de,3000h
01d2 3e09      ld      a,09h
01d4 cdce03    call    03ceh
01d7 21312a    ld      hl,2a31h
01da 110000    ld      de,0000h
01dd 3e09      ld      a,09h
01df cdce03    call    03ceh
01e2 216568    ld      hl,6865h
01e5 018400    ld      bc,0084h
01e8 110038    ld      de,3800h
01eb 3a38d2    ld      a,(0d238h)
01ee fe1c      cp      1ch
01f0 3809      jr      c,01fbh          ; (+09h)
01f2 21e968    ld      hl,68e9h
01f5 017900    ld      bc,0079h
01f8 110038    ld      de,3800h
01fb af        xor     a
01fc 320fd2    ld      (0d20fh),a
01ff 3e05      ld      a,05h
0201 cdca04    call    04cah
0204 214f46    ld      hl,464fh
0207 0e13      ld      c,13h
0209 3a79d2    ld      a,(0d279h)
020c a7        and     a
020d c41946    call    nz,4619h
0210 3a38d2    ld      a,(0d238h)
0213 fe1c      cp      1ch
0215 3037      jr      nc,024eh         ; (+37h)
0217 3e17      ld      a,17h
0219 32bfd2    ld      (0d2bfh),a
021c 3e05      ld      a,05h
021e 32c0d2    ld      (0d2c0h),a
0221 3a38d2    ld      a,(0d238h)
0224 5f        ld      e,a
0225 1600      ld      d,00h
0227 21b64a    ld      hl,4ab6h
022a 19        add     hl,de
022b 5e        ld      e,(hl)
022c 219e4a    ld      hl,4a9eh
022f 19        add     hl,de
0230 0604      ld      b,04h
0232 c5        push    bc
0233 e5        push    hl
0234 11c0d2    ld      de,0d2c0h
0237 1a        ld      a,(de)
0238 3c        inc     a
0239 12        ld      (de),a
023a 13        inc     de
023b eda0      ldi     
023d eda0      ldi     
023f 3eff      ld      a,0ffh
0241 12        ld      (de),a
0242 21bfd2    ld      hl,0d2bfh
0245 cded05    call    05edh
0248 e1        pop     hl
0249 c1        pop     bc
024a 23        inc     hl
024b 23        inc     hl
024c 10e4      djnz    0232h            ; (-1ch)
024e af        xor     a
024f 324bd2    ld      (0d24bh),a
0252 324cd2    ld      (0d24ch),a
0255 210a0b    ld      hl,0b0ah
0258 222cd2    ld      (0d22ch),hl
025b 3a38d2    ld      a,(0d238h)
025e fe1c      cp      1ch
0260 3812      jr      c,0274h          ; (+12h)
0262 217bd2    ld      hl,0d27bh
0265 34        inc     (hl)
0266 fdcb0956  bit     2,(iy+09h)
026a 2008      jr      nz,0274h         ; (+08h)
026c 217cd2    ld      hl,0d27ch
026f 34        inc     (hl)
0270 217fd2    ld      hl,0d27fh
0273 34        inc     (hl)
0274 fdcb0956  bit     2,(iy+09h)
0278 c45746    call    nz,4657h
027b fdcb095e  bit     3,(iy+09h)
027f c46446    call    nz,4664h
0282 218b44    ld      hl,448bh
0285 116144    ld      de,4461h
0288 060e      ld      b,0eh
028a 3acfd2    ld      a,(0d2cfh)
028d be        cp      (hl)
028e 200a      jr      nz,029ah         ; (+0ah)
0290 23        inc     hl
0291 3ad0d2    ld      a,(0d2d0h)
0294 be        cp      (hl)
0295 300f      jr      nc,02a6h         ; (+0fh)
0297 23        inc     hl
0298 1804      jr      029eh            ; (+04h)
029a 300a      jr      nc,02a6h         ; (+0ah)
029c 23        inc     hl
029d 23        inc     hl
029e 13        inc     de
029f 13        inc     de
02a0 13        inc     de
02a1 10e7      djnz    028ah            ; (-19h)
02a3 116144    ld      de,4461h
02a6 2113d2    ld      hl,0d213h
02a9 3600      ld      (hl),00h
02ab 23        inc     hl
02ac eb        ex      de,hl
02ad 3a38d2    ld      a,(0d238h)
02b0 fe1c      cp      1ch
02b2 3803      jr      c,02b7h          ; (+03h)
02b4 21a548    ld      hl,48a5h
02b7 eda0      ldi     
02b9 eda0      ldi     
02bb eda0      ldi     
02bd fdcb00ce  set     1,(iy+00h)
02c1 0678      ld      b,78h
02c3 c5        push    bc
02c4 3a1ad2    ld      a,(0d21ah)
02c7 f640      or      40h
02c9 321ad2    ld      (0d21ah),a
02cc fdcb0086  res     0,(iy+00h)
02d0 cdef02    call    02efh
02d3 cda948    call    48a9h
02d6 c1        pop     bc
02d7 10ea      djnz    02c3h            ; (-16h)
02d9 fdcb0086  res     0,(iy+00h)
02dd cdef02    call    02efh
02e0 cda948    call    48a9h
02e3 cd4548    call    4845h
02e6 3a38d2    ld      a,(0d238h)
02e9 fe1c      cp      1ch
02eb dc7048    call    c,4870h
02ee 3a17d2    ld      a,(0d217h)
02f1 3c        inc     a
02f2 3217d2    ld      (0d217h),a
02f5 e603      and     03h
02f7 2003      jr      nz,02fch         ; (+03h)
02f9 3e02      ld      a,02h
02fb ef        rst     28h
02fc 2a13d2    ld      hl,(0d213h)
02ff ed5b15d2  ld      de,(0d215h)
0303 3aa9d2    ld      a,(0d2a9h)
0306 b4        or      h
0307 b5        or      l
0308 b2        or      d
0309 b3        or      e
030a c2cb45    jp      nz,45cbh
030d 06b4      ld      b,0b4h
030f c5        push    bc
0310 fdcb0086  res     0,(iy+00h)
0314 cdef02    call    02efh
0317 cda948    call    48a9h
031a c1        pop     bc
031b fd7e03    ld      a,(iy+03h)
031e e6b0      and     0b0h
0320 feb0      cp      0b0h
0322 2002      jr      nz,0326h         ; (+02h)
0324 10e9      djnz    030fh            ; (-17h)
0326 c9        ret     

0327 47        ld      b,a
0328 c5        push    bc
0329 11bfd2    ld      de,0d2bfh
032c 47        ld      b,a
032d 79        ld      a,c
032e 90        sub     b
032f 12        ld      (de),a
0330 13        inc     de
0331 010400    ld      bc,0004h
0334 edb0      ldir    
0336 12        ld      (de),a
0337 13        inc     de
0338 010400    ld      bc,0004h
033b edb0      ldir    
033d c1        pop     bc
033e af        xor     a
033f 320fd2    ld      (0d20fh),a
0342 c5        push    bc
0343 21bfd2    ld      hl,0d2bfh
0346 cded05    call    05edh
0349 21c4d2    ld      hl,0d2c4h
034c cded05    call    05edh
034f 21bfd2    ld      hl,0d2bfh
0352 34        inc     (hl)
0353 34        inc     (hl)
0354 21c4d2    ld      hl,0d2c4h
0357 34        inc     (hl)
0358 34        inc     (hl)
0359 c1        pop     bc
035a 10e6      djnz    0342h            ; (-1ah)
035c c9        ret     

035d 13        inc     de
035e ad        xor     l
035f ae        xor     (hl)
0360 ff        rst     38h
0361 14        inc     d
0362 bd        cp      l
0363 be        cp      (hl)
0364 ff        rst     38h
0365 af        xor     a
0366 32a9d2    ld      (0d2a9h),a
0369 fdcb099e  res     3,(iy+09h)
036d fdcb0996  res     2,(iy+09h)
0371 c9        ret     

0372 217ed2    ld      hl,0d27eh
0375 34        inc     (hl)
0376 fdcb099e  res     3,(iy+09h)
037a c9        ret     

037b 3eff      ld      a,0ffh
037d 32f8d2    ld      (0d2f8h),a
0380 0e00      ld      c,00h
0382 3a79d2    ld      a,(0d279h)
0385 fe06      cp      06h
0387 3802      jr      c,038bh          ; (+02h)
0389 0e05      ld      c,05h
038b 3a7ad2    ld      a,(0d27ah)
038e fe12      cp      12h
0390 3805      jr      c,0397h          ; (+05h)
0392 79        ld      a,c
0393 c605      add     a,05h
0395 27        daa     
0396 4f        ld      c,a
0397 3a7bd2    ld      a,(0d27bh)
039a fe08      cp      08h
039c 3805      jr      c,03a3h          ; (+05h)
039e 79        ld      a,c
039f c605      add     a,05h
03a1 27        daa     
03a2 4f        ld      c,a
03a3 3a7cd2    ld      a,(0d27ch)
03a6 fe08      cp      08h
03a8 3805      jr      c,03afh          ; (+05h)
03aa 79        ld      a,c
03ab c605      add     a,05h
03ad 27        daa     
03ae 4f        ld      c,a
03af 3a7dd2    ld      a,(0d27dh)
03b2 a7        and     a
03b3 2005      jr      nz,03bah         ; (+05h)
03b5 79        ld      a,c
03b6 c60a      add     a,0ah
03b8 27        daa     
03b9 4f        ld      c,a
03ba 79        ld      a,c
03bb fe30      cp      30h
03bd 2008      jr      nz,03c7h         ; (+08h)
03bf 79        ld      a,c
03c0 c60a      add     a,0ah
03c2 27        daa     
03c3 c60a      add     a,0ah
03c5 27        daa     
03c6 4f        ld      c,a
03c7 21fad2    ld      hl,0d2fah
03ca 71        ld      (hl),c
03cb 23        inc     hl
03cc 3600      ld      (hl),00h
03ce 23        inc     hl
03cf 3600      ld      (hl),00h
03d1 21fa49    ld      hl,49fah
03d4 cded05    call    05edh
03d7 210c4a    ld      hl,4a0ch
03da cded05    call    05edh
03dd 211e4a    ld      hl,4a1eh
03e0 cded05    call    05edh
03e3 21304a    ld      hl,4a30h
03e6 cded05    call    05edh
03e9 213d4a    ld      hl,4a3dh
03ec cded05    call    05edh
03ef 214a4a    ld      hl,4a4ah
03f2 cded05    call    05edh
03f5 21574a    ld      hl,4a57h
03f8 cded05    call    05edh
03fb 21684a    ld      hl,4a68h
03fe cded05    call    05edh
0401 af        xor     a
0402 3217d2    ld      (0d217h),a
0405 01b400    ld      bc,00b4h
0408 cd9e47    call    479eh
040b 013c00    ld      bc,003ch
040e cd9e47    call    479eh
0411 3a79d2    ld      a,(0d279h)
0414 a7        and     a
0415 2812      jr      z,0429h          ; (+12h)
0417 3d        dec     a
0418 3279d2    ld      (0d279h),a
041b 110000    ld      de,0000h
041e 0e02      ld      c,02h
0420 cda833    call    33a8h
0423 3e02      ld      a,02h
0425 ef        rst     28h
0426 c3fd46    jp      46fdh
0429 01b400    ld      bc,00b4h
042c cd9e47    call    479eh
042f 3e01      ld      a,01h
0431 3217d2    ld      (0d217h),a
0434 21784a    ld      hl,4a78h
0437 cded05    call    05edh
043a 01b400    ld      bc,00b4h
043d cd9e47    call    479eh
0440 011e00    ld      bc,001eh
0443 cd9e47    call    479eh
0446 3a40d2    ld      a,(0d240h)
0449 a7        and     a
044a 2812      jr      z,045eh          ; (+12h)
044c 3d        dec     a
044d 3240d2    ld      (0d240h),a
0450 110050    ld      de,5000h
0453 0e00      ld      c,00h
0455 cda833    call    33a8h
0458 3e02      ld      a,02h
045a ef        rst     28h
045b c33247    jp      4732h
045e 01b400    ld      bc,00b4h
0461 cd9e47    call    479eh
0464 3e02      ld      a,02h
0466 3217d2    ld      (0d217h),a
0469 21884a    ld      hl,4a88h
046c cded05    call    05edh
046f 21644a    ld      hl,4a64h
0472 cded05    call    05edh
0475 01b400    ld      bc,00b4h
0478 cd9e47    call    479eh
047b 011e00    ld      bc,001eh
047e cd9e47    call    479eh
0481 3afad2    ld      a,(0d2fah)
0484 a7        and     a
0485 281e      jr      z,04a5h          ; (+1eh)
0487 3d        dec     a
0488 4f        ld      c,a
0489 e60f      and     0fh
048b fe0a      cp      0ah
048d 3804      jr      c,0493h          ; (+04h)
048f 79        ld      a,c
0490 d606      sub     06h
0492 4f        ld      c,a
0493 79        ld      a,c
0494 32fad2    ld      (0d2fah),a
0497 110000    ld      de,0000h
049a 0e01      ld      c,01h
049c cda833    call    33a8h
049f 3e02      ld      a,02h
04a1 ef        rst     28h
04a2 c36d47    jp      476dh
04a5 01e001    ld      bc,01e0h
04a8 cd9e47    call    479eh
04ab c9        ret     

04ac c5        push    bc
04ad fdcb0086  res     0,(iy+00h)
04b1 cdef02    call    02efh
04b4 fd360a00  ld      (iy+0ah),00h
04b8 2100d0    ld      hl,0d000h
04bb 2236d2    ld      (0d236h),hl
04be 21bbd2    ld      hl,0d2bbh
04c1 11bfd2    ld      de,0d2bfh
04c4 0604      ld      b,04h
04c6 cdbc49    call    49bch
04c9 eb        ex      de,hl
04ca 2a36d2    ld      hl,(0d236h)
04cd 0e80      ld      c,80h
04cf 0670      ld      b,70h
04d1 cda62f    call    2fa6h
04d4 2236d2    ld      (0d236h),hl
04d7 3a17d2    ld      a,(0d217h)
04da a7        and     a
04db 2034      jr      nz,0511h         ; (+34h)
04dd 2179d2    ld      hl,0d279h
04e0 11bfd2    ld      de,0d2bfh
04e3 0601      ld      b,01h
04e5 cdbc49    call    49bch
04e8 eb        ex      de,hl
04e9 2a36d2    ld      hl,(0d236h)
04ec 0e80      ld      c,80h
04ee 0650      ld      b,50h
04f0 cda62f    call    2fa6h
04f3 2236d2    ld      (0d236h),hl
04f6 21984a    ld      hl,4a98h
04f9 11bfd2    ld      de,0d2bfh
04fc 0603      ld      b,03h
04fe cdbc49    call    49bch
0501 eb        ex      de,hl
0502 2a36d2    ld      hl,(0d236h)
0505 0e90      ld      c,90h
0507 0650      ld      b,50h
0509 cda62f    call    2fa6h
050c 2236d2    ld      (0d236h),hl
050f 183a      jr      054bh            ; (+3ah)
0511 3d        dec     a
0512 201e      jr      nz,0532h         ; (+1eh)
0514 cd7349    call    4973h
0517 219b4a    ld      hl,4a9bh
051a 11bfd2    ld      de,0d2bfh
051d 0603      ld      b,03h
051f cdbc49    call    49bch
0522 eb        ex      de,hl
0523 2a36d2    ld      hl,(0d236h)
0526 0e90      ld      c,90h
0528 0650      ld      b,50h
052a cda62f    call    2fa6h
052d 2236d2    ld      (0d236h),hl
0530 1819      jr      054bh            ; (+19h)
0532 21fad2    ld      hl,0d2fah
0535 11bfd2    ld      de,0d2bfh
0538 0603      ld      b,03h
053a cdbc49    call    49bch
053d eb        ex      de,hl
053e 2a36d2    ld      hl,(0d236h)
0541 0e90      ld      c,90h
0543 0650      ld      b,50h
0545 cda62f    call    2fa6h
0548 2236d2    ld      (0d236h),hl
054b c1        pop     bc
054c 0b        dec     bc
054d 78        ld      a,b
054e b1        or      c
054f c29e47    jp      nz,479eh
0552 c9        ret     

0553 21a9d2    ld      hl,0d2a9h
0556 7e        ld      a,(hl)
0557 a7        and     a
0558 c8        ret     z

0559 3d        dec     a
055a 4f        ld      c,a
055b e60f      and     0fh
055d fe0a      cp      0ah
055f 3804      jr      c,0565h          ; (+04h)
0561 79        ld      a,c
0562 d606      sub     06h
0564 4f        ld      c,a
0565 71        ld      (hl),c
0566 110001    ld      de,0100h
0569 0e00      ld      c,00h
056b 3a38d2    ld      a,(0d238h)
056e fe1c      cp      1ch
0570 3808      jr      c,057ah          ; (+08h)
0572 3a7fd2    ld      a,(0d27fh)
0575 57        ld      d,a
0576 3a80d2    ld      a,(0d280h)
0579 5f        ld      e,a
057a cda833    call    33a8h
057d c9        ret     

057e 2a13d2    ld      hl,(0d213h)
0581 ed5b15d2  ld      de,(0d215h)
0585 7c        ld      a,h
0586 b5        or      l
0587 b2        or      d
0588 b3        or      e
0589 c8        ret     z

058a 0603      ld      b,03h
058c 2115d2    ld      hl,0d215h
058f 37        scf     
0590 7e        ld      a,(hl)
0591 de00      sbc     a,00h
0593 4f        ld      c,a
0594 e60f      and     0fh
0596 fe0a      cp      0ah
0598 3804      jr      c,059eh          ; (+04h)
059a 79        ld      a,c
059b d606      sub     06h
059d 4f        ld      c,a
059e 79        ld      a,c
059f fea0      cp      0a0h
05a1 3802      jr      c,05a5h          ; (+02h)
05a3 d660      sub     60h
05a5 77        ld      (hl),a
05a6 3f        ccf     
05a7 2b        dec     hl
05a8 10e6      djnz    0590h            ; (-1ah)
05aa 110001    ld      de,0100h
05ad 0e00      ld      c,00h
05af cda833    call    33a8h
05b2 c9        ret     

05b3 00        nop     
05b4 00        nop     
05b5 00        nop     
05b6 00        nop     
05b7 fd360a00  ld      (iy+0ah),00h
05bb 2100d0    ld      hl,0d000h
05be 2236d2    ld      (0d236h),hl
05c1 21bbd2    ld      hl,0d2bbh
05c4 11bfd2    ld      de,0d2bfh
05c7 0604      ld      b,04h
05c9 cdbc49    call    49bch
05cc eb        ex      de,hl
05cd 2a36d2    ld      hl,(0d236h)
05d0 0e80      ld      c,80h
05d2 0658      ld      b,58h
05d4 3a38d2    ld      a,(0d238h)
05d7 fe1c      cp      1ch
05d9 3804      jr      c,05dfh          ; (+04h)
05db 0e80      ld      c,80h
05dd 0650      ld      b,50h
05df cda62f    call    2fa6h
05e2 2236d2    ld      (0d236h),hl
05e5 21a9d2    ld      hl,0d2a9h
05e8 11bfd2    ld      de,0d2bfh
05eb 0601      ld      b,01h
05ed cdbc49    call    49bch
05f0 eb        ex      de,hl
05f1 2a36d2    ld      hl,(0d236h)
05f4 0e88      ld      c,88h
05f6 0680      ld      b,80h
05f8 3a38d2    ld      a,(0d238h)
05fb fe1c      cp      1ch
05fd 3804      jr      c,0603h          ; (+04h)
05ff 0e80      ld      c,80h
0601 0668      ld      b,68h
0603 cda62f    call    2fa6h
0606 2236d2    ld      (0d236h),hl
0609 3a38d2    ld      a,(0d238h)
060c fe1c      cp      1ch
060e 380f      jr      c,061fh          ; (+0fh)
0610 217fd2    ld      hl,0d27fh
0613 11bfd2    ld      de,0d2bfh
0616 0602      ld      b,02h
0618 cdbc49    call    49bch
061b 0668      ld      b,68h
061d 180d      jr      062ch            ; (+0dh)
061f 215f44    ld      hl,445fh
0622 11bfd2    ld      de,0d2bfh
0625 0602      ld      b,02h
0627 cdbc49    call    49bch
062a 0680      ld      b,80h
062c 0ea0      ld      c,0a0h
062e eb        ex      de,hl
062f 2a36d2    ld      hl,(0d236h)
0632 cda62f    call    2fa6h
0635 2236d2    ld      (0d236h),hl
0638 cd7349    call    4973h
063b 3a38d2    ld      a,(0d238h)
063e fe1c      cp      1ch
0640 3025      jr      nc,0667h         ; (+25h)
0642 2113d2    ld      hl,0d213h
0645 11bfd2    ld      de,0d2bfh
0648 0604      ld      b,04h
064a cdbc49    call    49bch
064d eb        ex      de,hl
064e 2a36d2    ld      hl,(0d236h)
0651 0e80      ld      c,80h
0653 0670      ld      b,70h
0655 3a38d2    ld      a,(0d238h)
0658 fe1c      cp      1ch
065a 3804      jr      c,0660h          ; (+04h)
065c 0e78      ld      c,78h
065e 0678      ld      b,78h
0660 cda62f    call    2fa6h
0663 2236d2    ld      (0d236h),hl
0666 c9        ret     

0667 217ed2    ld      hl,0d27eh
066a 11bfd2    ld      de,0d2bfh
066d 0601      ld      b,01h
066f cdbc49    call    49bch
0672 eb        ex      de,hl
0673 2a36d2    ld      hl,(0d236h)
0676 0e98      ld      c,98h
0678 0680      ld      b,80h
067a cda62f    call    2fa6h
067d 2236d2    ld      (0d236h),hl
0680 c9        ret     

0681 3a40d2    ld      a,(0d240h)
0684 6f        ld      l,a
0685 2600      ld      h,00h
0687 0e0a      ld      c,0ah
0689 cd4d06    call    064dh
068c 7d        ld      a,l
068d 87        add     a,a
068e c680      add     a,80h
0690 32bfd2    ld      (0d2bfh),a
0693 0e0a      ld      c,0ah
0695 cd3a06    call    063ah
0698 eb        ex      de,hl
0699 3a40d2    ld      a,(0d240h)
069c 6f        ld      l,a
069d 2600      ld      h,00h
069f a7        and     a
06a0 ed52      sbc     hl,de
06a2 7d        ld      a,l
06a3 87        add     a,a
06a4 c680      add     a,80h
06a6 32c0d2    ld      (0d2c0h),a
06a9 3eff      ld      a,0ffh
06ab 32c1d2    ld      (0d2c1h),a
06ae 0e50      ld      c,50h
06b0 0697      ld      b,97h
06b2 3a38d2    ld      a,(0d238h)
06b5 fe13      cp      13h
06b7 2004      jr      nz,06bdh         ; (+04h)
06b9 0e80      ld      c,80h
06bb 0650      ld      b,50h
06bd 2a36d2    ld      hl,(0d236h)
06c0 11bfd2    ld      de,0d2bfh
06c3 cda62f    call    2fa6h
06c6 2236d2    ld      (0d236h),hl
06c9 c9        ret     

06ca 7e        ld      a,(hl)
06cb e6f0      and     0f0h
06cd 201b      jr      nz,06eah         ; (+1bh)
06cf 3efe      ld      a,0feh
06d1 12        ld      (de),a
06d2 13        inc     de
06d3 7e        ld      a,(hl)
06d4 e60f      and     0fh
06d6 201e      jr      nz,06f6h         ; (+1eh)
06d8 3efe      ld      a,0feh
06da 12        ld      (de),a
06db 23        inc     hl
06dc 13        inc     de
06dd 10eb      djnz    06cah            ; (-15h)
06df 3eff      ld      a,0ffh
06e1 12        ld      (de),a
06e2 1b        dec     de
06e3 3e80      ld      a,80h
06e5 12        ld      (de),a
06e6 21bfd2    ld      hl,0d2bfh
06e9 c9        ret     

06ea 7e        ld      a,(hl)
06eb 0f        rrca    
06ec 0f        rrca    
06ed 0f        rrca    
06ee 0f        rrca    
06ef e60f      and     0fh
06f1 87        add     a,a
06f2 c680      add     a,80h
06f4 12        ld      (de),a
06f5 13        inc     de
06f6 7e        ld      a,(hl)
06f7 e60f      and     0fh
06f9 87        add     a,a
06fa c680      add     a,80h
06fc 12        ld      (de),a
06fd 23        inc     hl
06fe 13        inc     de
06ff 10e9      djnz    06eah            ; (-17h)
0701 3eff      ld      a,0ffh
0703 12        ld      (de),a
0704 21bfd2    ld      hl,0d2bfh
0707 c9        ret     

0708 07        rlca    
0709 07        rlca    
070a dadbdb    jp      c,0dbdbh
070d dbdb      in      a,(0dbh)
070f dbdb      in      a,(0dbh)
0711 dbdb      in      a,(0dbh)
0713 dbdb      in      a,(0dbh)
0715 dbdb      in      a,(0dbh)
0717 dbdc      in      a,(0dch)
0719 ff        rst     38h
071a 07        rlca    
071b 08        ex      af,af'
071c eaebeb    jp      pe,0ebebh
071f eb        ex      de,hl
0720 eb        ex      de,hl
0721 eb        ex      de,hl
0722 eb        ex      de,hl
0723 eb        ex      de,hl
0724 eb        ex      de,hl
0725 eb        ex      de,hl
0726 eb        ex      de,hl
0727 eb        ex      de,hl
0728 eb        ex      de,hl
0729 eb        ex      de,hl
072a ecff07    call    pe,07ffh
072d 09        add     hl,bc
072e fb        ei      
072f fcfcfc    call    m,0fcfch
0732 fcfcfc    call    m,0fcfch
0735 fcfcfc    call    m,0fcfch
0738 fcfcfc    call    m,0fcfch
073b fcfdff    call    m,0fffdh
073e 0f        rrca    
073f 09        add     hl,bc
0740 dadbdb    jp      c,0dbdbh
0743 dbdb      in      a,(0dbh)
0745 dbdb      in      a,(0dbh)
0747 dbdb      in      a,(0dbh)
0749 dcff0f    call    c,0fffh
074c 0a        ld      a,(bc)
074d eaebeb    jp      pe,0ebebh
0750 eb        ex      de,hl
0751 eb        ex      de,hl
0752 eb        ex      de,hl
0753 eb        ex      de,hl
0754 eb        ex      de,hl
0755 eb        ex      de,hl
0756 ecff0f    call    pe,0fffh
0759 0b        dec     bc
075a eaebeb    jp      pe,0ebebh
075d faebeb    jp      m,0ebebh
0760 eb        ex      de,hl
0761 eb        ex      de,hl
0762 eb        ex      de,hl
0763 ecff0f    call    pe,0fffh
0766 0c        inc     c
0767 fb        ei      
0768 fcfcfc    call    m,0fcfch
076b fcfcfc    call    m,0fcfch
076e fcfcfd    call    m,0fdfch
0771 ff        rst     38h
0772 12        ld      (de),a
0773 0b        dec     bc
0774 eb        ex      de,hl
0775 ff        rst     38h
0776 08        ex      af,af'
0777 08        ex      af,af'
0778 3647      ld      (hl),47h
077a 34        inc     (hl)
077b 61        ld      h,c
077c 70        ld      (hl),b
077d eb        ex      de,hl
077e 44        ld      b,h
077f 50        ld      d,b
0780 44        ld      b,h
0781 62        ld      h,d
0782 34        inc     (hl)
0783 43        ld      b,e
0784 37        scf     
0785 ff        rst     38h
0786 08        ex      af,af'
0787 08        ex      af,af'
0788 70        ld      (hl),b
0789 52        ld      d,d
078a 51        ld      d,c
078b 40        ld      b,b
078c 36eb      ld      (hl),0ebh
078e 43        ld      b,e
078f 44        ld      b,h
0790 45        ld      b,l
0791 80        add     a,b
0792 eb        ex      de,hl
0793 eb        ex      de,hl
0794 eb        ex      de,hl
0795 ff        rst     38h
0796 08        ex      af,af'
0797 08        ex      af,af'
0798 70        ld      (hl),b
0799 60        ld      h,b
079a 44        ld      b,h
079b 3640      ld      (hl),40h
079d 34        inc     (hl)
079e 43        ld      b,e
079f eb        ex      de,hl
07a0 35        dec     (hl)
07a1 52        ld      d,d
07a2 51        ld      d,c
07a3 81        add     a,c
07a4 70        ld      (hl),b
07a5 ff        rst     38h
07a6 02        ld      (bc),a
07a7 00        nop     
07a8 00        nop     
07a9 00        nop     
07aa 50        ld      d,b
07ab 00        nop     
07ac 83        add     a,e
07ad 84        add     a,h
07ae 93        sub     e
07af 94        sub     h
07b0 a3        and     e
07b1 a4        and     h
07b2 b3        or      e
07b3 b4        or      h
07b4 85        add     a,l
07b5 86        add     a,(hl)
07b6 95        sub     l
07b7 96        sub     (hl)
07b8 a5        and     l
07b9 a6        and     (hl)
07ba b5        or      l
07bb b6        or      (hl)
07bc 87        add     a,a
07bd 88        adc     a,b
07be 97        sub     a
07bf 98        sbc     a,b
07c0 a7        and     a
07c1 a8        xor     b
07c2 b7        or      a
07c3 b8        cp      b
07c4 00        nop     
07c5 08        ex      af,af'
07c6 1000      djnz    07c8h            ; (+00h)
07c8 08        ex      af,af'
07c9 1000      djnz    07cbh            ; (+00h)
07cb 08        ex      af,af'
07cc 1000      djnz    07ceh            ; (+00h)
07ce 08        ex      af,af'
07cf 1000      djnz    07d1h            ; (+00h)
07d1 08        ex      af,af'
07d2 1000      djnz    07d4h            ; (+00h)
07d4 08        ex      af,af'
07d5 1000      djnz    07d7h            ; (+00h)
07d7 00        nop     
07d8 08        ex      af,af'
07d9 08        ex      af,af'
07da 08        ex      af,af'
07db 08        ex      af,af'
07dc 08        ex      af,af'
07dd 08        ex      af,af'
07de 08        ex      af,af'
07df 08        ex      af,af'
07e0 00        nop     
07e1 00        nop     
07e2 00        nop     
07e3 00        nop     
07e4 00        nop     
07e5 00        nop     
07e6 00        nop     
07e7 00        nop     
07e8 fdcb088e  res     1,(iy+08h)
07ec ddcb187e  bit     7,(ix+18h)
07f0 c4a450    call    nz,50a4h
07f3 fdcb07fe  set     7,(iy+07h)
07f7 fdcb0546  bit     0,(iy+05h)
07fb c2df56    jp      nz,56dfh
07fe 3a13d4    ld      a,(0d413h)
0801 a7        and     a
0802 c45752    call    nz,5257h
0805 ddcb18ae  res     5,(ix+18h)
0809 fdcb0676  bit     6,(iy+06h)
080d c48853    call    nz,5388h
0810 3a86d2    ld      a,(0d286h)
0813 a7        and     a
0814 c43659    call    nz,5936h
0817 fdcb0746  bit     0,(iy+07h)
081b c47e53    call    nz,537eh
081e fdcb0846  bit     0,(iy+08h)
0822 c45c52    call    nz,525ch
0825 ddcb1866  bit     4,(ix+18h)
0829 c47652    call    nz,5276h
082c 3a85d2    ld      a,(0d285h)
082f a7        and     a
0830 c42c55    call    nz,552ch
0833 3a84d2    ld      a,(0d284h)
0836 a7        and     a
0837 c29553    jp      nz,5395h
083a fdcb0876  bit     6,(iy+08h)
083e c21e54    jp      nz,541eh
0841 fdcb087e  bit     7,(iy+08h)
0845 c44355    call    nz,5543h
0848 ddcb1866  bit     4,(ix+18h)
084c ca614b    jp      z,4b61h
084f 21f34f    ld      hl,4ff3h
0852 110fd2    ld      de,0d20fh
0855 010900    ld      bc,0009h
0858 edb0      ldir    
085a 210001    ld      hl,0100h
085d 223ad2    ld      (0d23ah),hl
0860 21c0fd    ld      hl,0fdc0h
0863 223cd2    ld      (0d23ch),hl
0866 210e00    ld      hl,000eh
0869 223ed2    ld      (0d23eh),hl
086c c3eb4b    jp      4bebh
086f dd7e15    ld      a,(ix+15h)
0872 a7        and     a
0873 2058      jr      nz,08cdh         ; (+58h)
0875 fdcb0746  bit     0,(iy+07h)
0879 2026      jr      nz,08a1h         ; (+26h)
087b 21e14f    ld      hl,4fe1h
087e 110fd2    ld      de,0d20fh
0881 010900    ld      bc,0009h
0884 edb0      ldir    
0886 210003    ld      hl,0300h
0889 223ad2    ld      (0d23ah),hl
088c 2100fd    ld      hl,0fd00h
088f 223cd2    ld      (0d23ch),hl
0892 213800    ld      hl,0038h
0895 223ed2    ld      (0d23eh),hl
0898 2a0cdc    ld      hl,(0dc0ch)
089b 220adc    ld      (0dc0ah),hl
089e c3eb4b    jp      4bebh
08a1 ddcb187e  bit     7,(ix+18h)
08a5 20d4      jr      nz,087bh         ; (-2ch)
08a7 21ea4f    ld      hl,4feah
08aa 110fd2    ld      de,0d20fh
08ad 010900    ld      bc,0009h
08b0 edb0      ldir    
08b2 21000c    ld      hl,0c00h
08b5 223ad2    ld      (0d23ah),hl
08b8 2100fd    ld      hl,0fd00h
08bb 223cd2    ld      (0d23ch),hl
08be 213800    ld      hl,0038h
08c1 223ed2    ld      (0d23eh),hl
08c4 2a0cdc    ld      hl,(0dc0ch)
08c7 220adc    ld      (0dc0ah),hl
08ca c3eb4b    jp      4bebh
08cd 21fc4f    ld      hl,4ffch
08d0 110fd2    ld      de,0d20fh
08d3 010900    ld      bc,0009h
08d6 edb0      ldir    
08d8 210006    ld      hl,0600h
08db 223ad2    ld      (0d23ah),hl
08de 2100fd    ld      hl,0fd00h
08e1 223cd2    ld      (0d23ch),hl
08e4 213800    ld      hl,0038h
08e7 223ed2    ld      (0d23eh),hl
08ea 2a0cdc    ld      hl,(0dc0ch)
08ed 23        inc     hl
08ee 220adc    ld      (0dc0ah),hl
08f1 3a24d2    ld      a,(0d224h)
08f4 e603      and     03h
08f6 cc5352    call    z,5253h
08f9 fdcb034e  bit     1,(iy+03h)
08fd cc3f53    call    z,533fh
0900 fdcb034e  bit     1,(iy+03h)
0904 c46153    call    nz,5361h
0907 3e05      ld      a,05h
0909 32ffff    ld      (0ffffh),a
090c 3230d2    ld      (0d230h),a
090f 010800    ld      bc,0008h
0912 111000    ld      de,0010h
0915 3a38d2    ld      a,(0d238h)
0918 fe0f      cp      0fh
091a 2003      jr      nz,091fh         ; (+03h)
091c 110800    ld      de,0008h
091f cdd330    call    30d3h
0922 5e        ld      e,(hl)
0923 1600      ld      d,00h
0925 3ad5d2    ld      a,(0d2d5h)
0928 87        add     a,a
0929 6f        ld      l,a
092a 62        ld      h,d
092b 0100a2    ld      bc,0a200h
092e 09        add     hl,bc
092f 7e        ld      a,(hl)
0930 23        inc     hl
0931 66        ld      h,(hl)
0932 6f        ld      l,a
0933 19        add     hl,de
0934 09        add     hl,bc
0935 7e        ld      a,(hl)
0936 fe1d      cp      1dh
0938 3018      jr      nc,0952h         ; (+18h)
093a 87        add     a,a
093b 6f        ld      l,a
093c 62        ld      h,d
093d 11eb5b    ld      de,5bebh
0940 19        add     hl,de
0941 7e        ld      a,(hl)
0942 23        inc     hl
0943 66        ld      h,(hl)
0944 6f        ld      l,a
0945 11444c    ld      de,4c44h
0948 3e02      ld      a,02h
094a 32ffff    ld      (0ffffh),a
094d 3230d2    ld      (0d230h),a
0950 d5        push    de
0951 e9        jp      (hl)
0952 2a02d4    ld      hl,(0d402h)
0955 112400    ld      de,0024h
0958 19        add     hl,de
0959 eb        ex      de,hl
095a 2a73d2    ld      hl,(0d273h)
095d 01c000    ld      bc,00c0h
0960 09        add     hl,bc
0961 af        xor     a
0962 ed52      sbc     hl,de
0964 dcf22f    call    c,2ff2h
0967 210000    ld      hl,0000h
096a fd7e03    ld      a,(iy+03h)
096d feff      cp      0ffh
096f 2012      jr      nz,0983h         ; (+12h)
0971 ed5b04d4  ld      de,(0d404h)
0975 7b        ld      a,e
0976 b2        or      d
0977 200a      jr      nz,0983h         ; (+0ah)
0979 3a15d4    ld      a,(0d415h)
097c 07        rlca    
097d 3004      jr      nc,0983h         ; (+04h)
097f 2a94d2    ld      hl,(0d294h)
0982 23        inc     hl
0983 2294d2    ld      (0d294h),hl
0986 fdcb067e  bit     7,(iy+06h)
098a c46653    call    nz,5366h
098d dd361405  ld      (ix+14h),05h
0991 2a94d2    ld      hl,(0d294h)
0994 116801    ld      de,0168h
0997 a7        and     a
0998 ed52      sbc     hl,de
099a d48353    call    nc,5383h
099d fd7e03    ld      a,(iy+03h)
09a0 fefe      cp      0feh
09a2 f5        push    af
09a3 cc4451    call    z,5144h
09a6 f1        pop     af
09a7 c43a52    call    nz,523ah
09aa ddcb1846  bit     0,(ix+18h)
09ae c2d155    jp      nz,55d1h
09b1 dd7e0e    ld      a,(ix+0eh)
09b4 fe20      cp      20h
09b6 2811      jr      z,09c9h          ; (+11h)
09b8 ddcb1856  bit     2,(ix+18h)
09bc c2bb4c    jp      nz,4cbbh
09bf 2a02d4    ld      hl,(0d402h)
09c2 11f5ff    ld      de,0fff5h
09c5 19        add     hl,de
09c6 2202d4    ld      (0d402h),hl
09c9 dd360d10  ld      (ix+0dh),10h
09cd dd360e20  ld      (ix+0eh),20h
09d1 2a04d4    ld      hl,(0d404h)
09d4 dd4609    ld      b,(ix+09h)
09d7 0e00      ld      c,00h
09d9 59        ld      e,c
09da 51        ld      d,c
09db fdcb035e  bit     3,(iy+03h)
09df ca6851    jp      z,5168h
09e2 fdcb0356  bit     2,(iy+03h)
09e6 cac351    jp      z,51c3h
09e9 7c        ld      a,h
09ea b5        or      l
09eb b0        or      b
09ec 285c      jr      z,0a4ah          ; (+5ch)
09ee dd361401  ld      (ix+14h),01h
09f2 cb78      bit     7,b
09f4 2030      jr      nz,0a26h         ; (+30h)
09f6 ed5b13d2  ld      de,(0d213h)
09fa 7b        ld      a,e
09fb 2f        cpl     
09fc 5f        ld      e,a
09fd 7a        ld      a,d
09fe 2f        cpl     
09ff 57        ld      d,a
0a00 13        inc     de
0a01 0eff      ld      c,0ffh
0a03 e5        push    hl
0a04 d5        push    de
0a05 ed5b3ad2  ld      de,(0d23ah)
0a09 af        xor     a
0a0a ed52      sbc     hl,de
0a0c d1        pop     de
0a0d e1        pop     hl
0a0e 383a      jr      c,0a4ah          ; (+3ah)
0a10 ed5b0fd2  ld      de,(0d20fh)
0a14 7b        ld      a,e
0a15 2f        cpl     
0a16 5f        ld      e,a
0a17 7a        ld      a,d
0a18 2f        cpl     
0a19 57        ld      d,a
0a1a 13        inc     de
0a1b 0eff      ld      c,0ffh
0a1d 3a17d2    ld      a,(0d217h)
0a20 dd7714    ld      (ix+14h),a
0a23 c33c4d    jp      4d3ch
0a26 ed5b13d2  ld      de,(0d213h)
0a2a 0e00      ld      c,00h
0a2c e5        push    hl
0a2d d5        push    de
0a2e 7d        ld      a,l
0a2f 2f        cpl     
0a30 6f        ld      l,a
0a31 7c        ld      a,h
0a32 2f        cpl     
0a33 67        ld      h,a
0a34 23        inc     hl
0a35 ed5b3ad2  ld      de,(0d23ah)
0a39 af        xor     a
0a3a ed52      sbc     hl,de
0a3c d1        pop     de
0a3d e1        pop     hl
0a3e 380a      jr      c,0a4ah          ; (+0ah)
0a40 ed5b0fd2  ld      de,(0d20fh)
0a44 3a17d2    ld      a,(0d217h)
0a47 dd7714    ld      (ix+14h),a
0a4a 78        ld      a,b
0a4b a7        and     a
0a4c fa594d    jp      m,4d59h
0a4f 19        add     hl,de
0a50 89        adc     a,c
0a51 4f        ld      c,a
0a52 f2634d    jp      p,4d63h
0a55 3a04d4    ld      a,(0d404h)
0a58 ddb608    or      (ix+08h)
0a5b ddb609    or      (ix+09h)
0a5e 2811      jr      z,0a71h          ; (+11h)
0a60 0e00      ld      c,00h
0a62 69        ld      l,c
0a63 61        ld      h,c
0a64 c3634d    jp      4d63h
0a67 19        add     hl,de
0a68 89        adc     a,c
0a69 4f        ld      c,a
0a6a fa634d    jp      m,4d63h
0a6d 0e00      ld      c,00h
0a6f 69        ld      l,c
0a70 61        ld      h,c
0a71 79        ld      a,c
0a72 2204d4    ld      (0d404h),hl
0a75 3206d4    ld      (0d406h),a
0a78 2a07d4    ld      hl,(0d407h)
0a7b dd460c    ld      b,(ix+0ch)
0a7e 0e00      ld      c,00h
0a80 59        ld      e,c
0a81 51        ld      d,c
0a82 ddcb187e  bit     7,(ix+18h)
0a86 c41c53    call    nz,531ch
0a89 ddcb1846  bit     0,(ix+18h)
0a8d c2aa56    jp      nz,56aah
0a90 3a88d2    ld      a,(0d288h)
0a93 a7        and     a
0a94 2012      jr      nz,0aa8h         ; (+12h)
0a96 ddcb187e  bit     7,(ix+18h)
0a9a 2830      jr      z,0acch          ; (+30h)
0a9c ddcb185e  bit     3,(ix+18h)
0aa0 2006      jr      nz,0aa8h         ; (+06h)
0aa2 fdcb036e  bit     5,(iy+03h)
0aa6 2824      jr      z,0acch          ; (+24h)
0aa8 fdcb036e  bit     5,(iy+03h)
0aac 2025      jr      nz,0ad3h         ; (+25h)
0aae 3a88d2    ld      a,(0d288h)
0ab1 a7        and     a
0ab2 cc0a53    call    z,530ah
0ab5 2a3cd2    ld      hl,(0d23ch)
0ab8 06ff      ld      b,0ffh
0aba 0e00      ld      c,00h
0abc 59        ld      e,c
0abd 51        ld      d,c
0abe 3a88d2    ld      a,(0d288h)
0ac1 3d        dec     a
0ac2 3288d2    ld      (0d288h),a
0ac5 ddcb18d6  set     2,(ix+18h)
0ac9 c3df4d    jp      4ddfh
0acc ddcb189e  res     3,(ix+18h)
0ad0 c3c94d    jp      4dc9h
0ad3 ddcb18de  set     3,(ix+18h)
0ad7 af        xor     a
0ad8 3288d2    ld      (0d288h),a
0adb cb7c      bit     7,h
0add 2008      jr      nz,0ae7h         ; (+08h)
0adf 3a16d2    ld      a,(0d216h)
0ae2 bc        cp      h
0ae3 2808      jr      z,0aedh          ; (+08h)
0ae5 3806      jr      c,0aedh          ; (+06h)
0ae7 ed5b3ed2  ld      de,(0d23eh)
0aeb 0e00      ld      c,00h
0aed fdcb0646  bit     0,(iy+06h)
0af1 2812      jr      z,0b05h          ; (+12h)
0af3 e5        push    hl
0af4 7b        ld      a,e
0af5 2f        cpl     
0af6 5f        ld      e,a
0af7 7a        ld      a,d
0af8 2f        cpl     
0af9 57        ld      d,a
0afa 79        ld      a,c
0afb 2f        cpl     
0afc 210100    ld      hl,0001h
0aff 19        add     hl,de
0b00 eb        ex      de,hl
0b01 ce00      adc     a,00h
0b03 4f        ld      c,a
0b04 e1        pop     hl
0b05 19        add     hl,de
0b06 78        ld      a,b
0b07 89        adc     a,c
0b08 2207d4    ld      (0d407h),hl
0b0b 3209d4    ld      (0d409h),a
0b0e e5        push    hl
0b0f 7b        ld      a,e
0b10 2f        cpl     
0b11 6f        ld      l,a
0b12 7a        ld      a,d
0b13 2f        cpl     
0b14 67        ld      h,a
0b15 79        ld      a,c
0b16 2f        cpl     
0b17 110100    ld      de,0001h
0b1a 19        add     hl,de
0b1b ce00      adc     a,00h
0b1d 22e7d2    ld      (0d2e7h),hl
0b20 32e9d2    ld      (0d2e9h),a
0b23 e1        pop     hl
0b24 ddcb1856  bit     2,(ix+18h)
0b28 c42755    call    nz,5527h
0b2b 7c        ld      a,h
0b2c a7        and     a
0b2d f2294e    jp      p,4e29h
0b30 7c        ld      a,h
0b31 2f        cpl     
0b32 67        ld      h,a
0b33 7d        ld      a,l
0b34 2f        cpl     
0b35 6f        ld      l,a
0b36 23        inc     hl
0b37 110001    ld      de,0100h
0b3a eb        ex      de,hl
0b3b a7        and     a
0b3c ed52      sbc     hl,de
0b3e 3017      jr      nc,0b57h         ; (+17h)
0b40 3a15d4    ld      a,(0d415h)
0b43 e685      and     85h
0b45 2010      jr      nz,0b57h         ; (+10h)
0b47 ddcb0c7e  bit     7,(ix+0ch)
0b4b 2806      jr      z,0b53h          ; (+06h)
0b4d dd361413  ld      (ix+14h),13h
0b51 1804      jr      0b57h            ; (+04h)
0b53 dd361401  ld      (ix+14h),01h
0b57 010800    ld      bc,0008h
0b5a 110800    ld      de,0008h
0b5d cdd330    call    30d3h
0b60 7e        ld      a,(hl)
0b61 e67f      and     7fh
0b63 fe79      cp      79h
0b65 d40a50    call    nc,500ah
0b68 3a86d2    ld      a,(0d286h)
0b6b a7        and     a
0b6c c43e54    call    nz,543eh
0b6f fdcb0676  bit     6,(iy+06h)
0b73 c44754    call    nz,5447h
0b76 fdcb0856  bit     2,(iy+08h)
0b7a c46854    call    nz,5468h
0b7d 3a11d4    ld      a,(0d411h)
0b80 fe0a      cp      0ah
0b82 cc7e54    call    z,547eh
0b85 dd6e14    ld      l,(ix+14h)
0b88 4d        ld      c,l
0b89 2600      ld      h,00h
0b8b 29        add     hl,hl
0b8c 11655c    ld      de,5c65h
0b8f 19        add     hl,de
0b90 5e        ld      e,(hl)
0b91 23        inc     hl
0b92 56        ld      d,(hl)
0b93 ed530ed4  ld      (0d40eh),de
0b97 3ae0d2    ld      a,(0d2e0h)
0b9a 91        sub     c
0b9b c4a854    call    nz,54a8h
0b9e 3a10d4    ld      a,(0d410h)
0ba1 2600      ld      h,00h
0ba3 6f        ld      l,a
0ba4 19        add     hl,de
0ba5 7e        ld      a,(hl)
0ba6 a7        and     a
0ba7 f2a44e    jp      p,4ea4h
0baa 23        inc     hl
0bab 7e        ld      a,(hl)
0bac 3210d4    ld      (0d410h),a
0baf c3934e    jp      4e93h
0bb2 57        ld      d,a
0bb3 010040    ld      bc,4000h
0bb6 ddcb184e  bit     1,(ix+18h)
0bba 2803      jr      z,0bbfh          ; (+03h)
0bbc 010058    ld      bc,5800h
0bbf fdcb066e  bit     5,(iy+06h)
0bc3 c49154    call    nz,5491h
0bc6 3afdd2    ld      a,(0d2fdh)
0bc9 a7        and     a
0bca c46350    call    nz,5063h
0bcd 7a        ld      a,d
0bce 0f        rrca    
0bcf 0f        rrca    
0bd0 5f        ld      e,a
0bd1 e6c0      and     0c0h
0bd3 6f        ld      l,a
0bd4 7b        ld      a,e
0bd5 ad        xor     l
0bd6 67        ld      h,a
0bd7 5d        ld      e,l
0bd8 54        ld      d,h
0bd9 29        add     hl,hl
0bda 19        add     hl,de
0bdb 09        add     hl,bc
0bdc 2289d2    ld      (0d289h),hl
0bdf 3e10      ld      a,10h
0be1 328dd2    ld      (0d28dh),a
0be4 21255c    ld      hl,5c25h
0be7 fdcb0646  bit     0,(iy+06h)
0beb c4a354    call    nz,54a3h
0bee 3afdd2    ld      a,(0d2fdh)
0bf1 a7        and     a
0bf2 c46950    call    nz,5069h
0bf5 220cd4    ld      (0d40ch),hl
0bf8 0e0a      ld      c,0ah
0bfa 3a05d4    ld      a,(0d405h)
0bfd a7        and     a
0bfe f2f74e    jp      p,4ef7h
0c01 ed44      neg     
0c03 0ef6      ld      c,0f6h
0c05 fe0a      cp      0ah
0c07 3804      jr      c,0c0dh          ; (+04h)
0c09 79        ld      a,c
0c0a 3205d4    ld      (0d405h),a
0c0d 0e0c      ld      c,0ch
0c0f 3a08d4    ld      a,(0d408h)
0c12 a7        and     a
0c13 f20c4f    jp      p,4f0ch
0c16 ed44      neg     
0c18 0ef4      ld      c,0f4h
0c1a fe0c      cp      0ch
0c1c 3804      jr      c,0c22h          ; (+04h)
0c1e 79        ld      a,c
0c1f 3208d4    ld      (0d408h),a
0c22 fdcb067e  bit     7,(iy+06h)
0c26 c4ad54    call    nz,54adh
0c29 fdcb0846  bit     0,(iy+08h)
0c2d c4a950    call    nz,50a9h
0c30 3ae2d2    ld      a,(0d2e2h)
0c33 a7        and     a
0c34 c4ba54    call    nz,54bah
0c37 3a22d3    ld      a,(0d322h)
0c3a a7        and     a
0c3b c46d50    call    nz,506dh
0c3e ddcb1856  bit     2,(ix+18h)
0c42 c40550    call    nz,5005h
0c45 fdcb064e  bit     1,(iy+06h)
0c49 205a      jr      nz,0ca5h         ; (+5ah)
0c4b 2a6dd2    ld      hl,(0d26dh)
0c4e 013000    ld      bc,0030h
0c51 09        add     hl,bc
0c52 eb        ex      de,hl
0c53 2affd3    ld      hl,(0d3ffh)
0c56 a7        and     a
0c57 ed52      sbc     hl,de
0c59 3018      jr      nc,0c73h         ; (+18h)
0c5b ed53ffd3  ld      (0d3ffh),de
0c5f 3a06d4    ld      a,(0d406h)
0c62 a7        and     a
0c63 f2974f    jp      p,4f97h
0c66 af        xor     a
0c67 3204d4    ld      (0d404h),a
0c6a 3205d4    ld      (0d405h),a
0c6d 3206d4    ld      (0d406h),a
0c70 c3974f    jp      4f97h
0c73 2a6fd2    ld      hl,(0d26fh)
0c76 11d000    ld      de,00d0h
0c79 19        add     hl,de
0c7a eb        ex      de,hl
0c7b 2affd3    ld      hl,(0d3ffh)
0c7e 0e10      ld      c,10h
0c80 09        add     hl,bc
0c81 a7        and     a
0c82 ed52      sbc     hl,de
0c84 381f      jr      c,0ca5h          ; (+1fh)
0c86 eb        ex      de,hl
0c87 37        scf     
0c88 ed42      sbc     hl,bc
0c8a 22ffd3    ld      (0d3ffh),hl
0c8d 3a06d4    ld      a,(0d406h)
0c90 a7        and     a
0c91 fa974f    jp      m,4f97h
0c94 2a05d4    ld      hl,(0d405h)
0c97 b4        or      h
0c98 b5        or      l
0c99 280a      jr      z,0ca5h          ; (+0ah)
0c9b af        xor     a
0c9c 3204d4    ld      (0d404h),a
0c9f 3205d4    ld      (0d405h),a
0ca2 3206d4    ld      (0d406h),a
0ca5 3a15d4    ld      a,(0d415h)
0ca8 32bad2    ld      (0d2bah),a
0cab 3a11d4    ld      a,(0d411h)
0cae 32e0d2    ld      (0d2e0h),a
0cb1 1601      ld      d,01h
0cb3 0e30      ld      c,30h
0cb5 fe01      cp      01h
0cb7 280c      jr      z,0cc5h          ; (+0ch)
0cb9 1604      ld      d,04h
0cbb 0e46      ld      c,46h
0cbd fe09      cp      09h
0cbf 2804      jr      z,0cc5h          ; (+04h)
0cc1 dd3413    inc     (ix+13h)
0cc4 c9        ret     

0cc5 3ae1d2    ld      a,(0d2e1h)
0cc8 47        ld      b,a
0cc9 2a04d4    ld      hl,(0d404h)
0ccc cb7c      bit     7,h
0cce 2807      jr      z,0cd7h          ; (+07h)
0cd0 7d        ld      a,l
0cd1 2f        cpl     
0cd2 6f        ld      l,a
0cd3 7c        ld      a,h
0cd4 2f        cpl     
0cd5 67        ld      h,a
0cd6 23        inc     hl
0cd7 cb3c      srl     h
0cd9 cb1d      rr      l
0cdb 7d        ld      a,l
0cdc 80        add     a,b
0cdd 32e1d2    ld      (0d2e1h),a
0ce0 7c        ld      a,h
0ce1 8a        adc     a,d
0ce2 dd8e13    adc     a,(ix+13h)
0ce5 3210d4    ld      (0d410h),a
0ce8 b9        cp      c
0ce9 d8        ret     c

0cea 91        sub     c
0ceb 3210d4    ld      (0d410h),a
0cee c9        ret     

0cef 1000      djnz    0cf1h            ; (+00h)
0cf1 3000      jr      nc,0cf3h         ; (+00h)
0cf3 08        ex      af,af'
0cf4 00        nop     
0cf5 00        nop     
0cf6 08        ex      af,af'
0cf7 02        ld      (bc),a
0cf8 1000      djnz    0cfah            ; (+00h)
0cfa 3000      jr      nc,0cfch         ; (+00h)
0cfc 02        ld      (bc),a
0cfd 00        nop     
0cfe 00        nop     
0cff 08        ex      af,af'
0d00 02        ld      (bc),a
0d01 04        inc     b
0d02 00        nop     
0d03 0c        inc     c
0d04 00        nop     
0d05 02        ld      (bc),a
0d06 00        nop     
0d07 00        nop     
0d08 02        ld      (bc),a
0d09 011000    ld      bc,0010h
0d0c 3000      jr      nc,0d0eh         ; (+00h)
0d0e 08        ex      af,af'
0d0f 00        nop     
0d10 00        nop     
0d11 08        ex      af,af'
0d12 02        ld      (bc),a
0d13 dd360e19  ld      (ix+0eh),19h
0d17 c9        ret     

0d18 eb        ex      de,hl
0d19 2a02d4    ld      hl,(0d402h)
0d1c ed4b57d2  ld      bc,(0d257h)
0d20 a7        and     a
0d21 ed42      sbc     hl,bc
0d23 d8        ret     c

0d24 011000    ld      bc,0010h
0d27 a7        and     a
0d28 ed42      sbc     hl,bc
0d2a d8        ret     c

0d2b 2affd3    ld      hl,(0d3ffh)
0d2e 010800    ld      bc,0008h
0d31 09        add     hl,bc
0d32 1a        ld      a,(de)
0d33 4f        ld      c,a
0d34 7d        ld      a,l
0d35 0f        rrca    
0d36 0f        rrca    
0d37 0f        rrca    
0d38 0f        rrca    
0d39 e601      and     01h
0d3b 3c        inc     a
0d3c 47        ld      b,a
0d3d 79        ld      a,c
0d3e a0        and     b
0d3f c8        ret     z

0d40 7d        ld      a,l
0d41 e6f0      and     0f0h
0d43 6f        ld      l,a
0d44 22abd2    ld      (0d2abh),hl
0d47 221ed3    ld      (0d31eh),hl
0d4a 79        ld      a,c
0d4b a8        xor     b
0d4c 12        ld      (de),a
0d4d 2a02d4    ld      hl,(0d402h)
0d50 010800    ld      bc,0008h
0d53 09        add     hl,bc
0d54 7d        ld      a,l
0d55 e6e0      and     0e0h
0d57 c608      add     a,08h
0d59 6f        ld      l,a
0d5a 22add2    ld      (0d2adh),hl
0d5d 2220d3    ld      (0d320h),hl
0d60 3e06      ld      a,06h
0d62 3222d3    ld      (0d322h),a
0d65 215d5c    ld      hl,5c5dh
0d68 22afd2    ld      (0d2afh),hl
0d6b 3e01      ld      a,01h
0d6d cd7c33    call    337ch
0d70 c9        ret     

0d71 3d        dec     a
0d72 57        ld      d,a
0d73 010070    ld      bc,7000h
0d76 c9        ret     

0d77 210000    ld      hl,0000h
0d7a c9        ret     

0d7b 3d        dec     a
0d7c 3222d3    ld      (0d322h),a
0d7f 2a1ed3    ld      hl,(0d31eh)
0d82 220fd2    ld      (0d20fh),hl
0d85 2a20d3    ld      hl,(0d320h)
0d88 2211d2    ld      (0d211h),hl
0d8b 210000    ld      hl,0000h
0d8e 2213d2    ld      (0d213h),hl
0d91 21feff    ld      hl,0fffeh
0d94 2215d2    ld      (0d215h),hl
0d97 fe03      cp      03h
0d99 3811      jr      c,0dach          ; (+11h)
0d9b 3eb2      ld      a,0b2h
0d9d cd5b2f    call    2f5bh
0da0 210800    ld      hl,0008h
0da3 2213d2    ld      (0d213h),hl
0da6 210200    ld      hl,0002h
0da9 2215d2    ld      (0d215h),hl
0dac 3e5a      ld      a,5ah
0dae cd5b2f    call    2f5bh
0db1 c9        ret     

0db2 fdcb08ce  set     1,(iy+08h)
0db6 c9        ret     

0db7 2affd3    ld      hl,(0d3ffh)
0dba ed4b05d4  ld      bc,(0d405h)
0dbe 110500    ld      de,0005h
0dc1 19        add     hl,de
0dc2 09        add     hl,bc
0dc3 220fd2    ld      (0d20fh),hl
0dc6 2a02d4    ld      hl,(0d402h)
0dc9 ed4b08d4  ld      bc,(0d408h)
0dcd 110900    ld      de,0009h
0dd0 19        add     hl,de
0dd1 09        add     hl,bc
0dd2 2211d2    ld      (0d211h),hl
0dd5 21f4d2    ld      hl,0d2f4h
0dd8 3e94      ld      a,94h
0dda cdd850    call    50d8h
0ddd 21f5d2    ld      hl,0d2f5h
0de0 3e96      ld      a,96h
0de2 cdd850    call    50d8h
0de5 c9        ret     

0de6 e5        push    hl
0de7 f5        push    af
0de8 5e        ld      e,(hl)
0de9 1600      ld      d,00h
0deb 211451    ld      hl,5114h
0dee 19        add     hl,de
0def 5e        ld      e,(hl)
0df0 cb7b      bit     7,e
0df2 2801      jr      z,0df5h          ; (+01h)
0df4 15        dec     d
0df5 ed5313d2  ld      (0d213h),de
0df9 23        inc     hl
0dfa 1600      ld      d,00h
0dfc 5e        ld      e,(hl)
0dfd 210000    ld      hl,0000h
0e00 cb7b      bit     7,e
0e02 2801      jr      z,0e05h          ; (+01h)
0e04 15        dec     d
0e05 3a15d4    ld      a,(0d415h)
0e08 e605      and     05h
0e0a 2803      jr      z,0e0fh          ; (+03h)
0e0c 21fcff    ld      hl,0fffch
0e0f 19        add     hl,de
0e10 2215d2    ld      (0d215h),hl
0e13 f1        pop     af
0e14 cd5b2f    call    2f5bh
0e17 e1        pop     hl
0e18 7e        ld      a,(hl)
0e19 c602      add     a,02h
0e1b fe30      cp      30h
0e1d 3801      jr      c,0e20h          ; (+01h)
0e1f af        xor     a
0e20 77        ld      (hl),a
0e21 c9        ret     

0e22 1000      djnz    0e24h            ; (+00h)
0e24 f0        ret     p

0e25 00        nop     
0e26 0f        rrca    
0e27 04        inc     b
0e28 f1        pop     af
0e29 fc0e08    call    m,080eh
0e2c f2f80b    jp      p,0bf8h
0e2f 0b        dec     bc
0e30 f5        push    af
0e31 f5        push    af
0e32 08        ex      af,af'
0e33 0ef8      ld      c,0f8h
0e35 f2040f    jp      p,0f04h
0e38 fcf100    call    m,00f1h
0e3b 1000      djnz    0e3dh            ; (+00h)
0e3d f0        ret     p

0e3e fc0f04    call    m,040fh
0e41 f1        pop     af
0e42 f8        ret     m

0e43 0e08      ld      c,08h
0e45 f2f50b    jp      p,0bf5h
0e48 0b        dec     bc
0e49 f5        push    af
0e4a f2080e    jp      p,0e08h
0e4d f8        ret     m

0e4e f1        pop     af
0e4f 04        inc     b
0e50 0f        rrca    
0e51 fc2a04    call    m,042ah
0e54 d47cb5    call    nc,0b57ch
0e57 c0        ret     nz

0e58 3a15d4    ld      a,(0d415h)
0e5b 07        rlca    
0e5c d0        ret     nc

0e5d dd36140c  ld      (ix+14h),0ch
0e61 ed5bb8d2  ld      de,(0d2b8h)
0e65 cb7a      bit     7,d
0e67 2007      jr      nz,0e70h         ; (+07h)
0e69 213000    ld      hl,0030h
0e6c a7        and     a
0e6d ed52      sbc     hl,de
0e6f d8        ret     c

0e70 13        inc     de
0e71 ed53b8d2  ld      (0d2b8h),de
0e75 c9        ret     

0e76 ddcb188e  res     1,(ix+18h)
0e7a cb78      bit     7,b
0e7c 2028      jr      nz,0ea6h         ; (+28h)
0e7e ed5b0fd2  ld      de,(0d20fh)
0e82 0e00      ld      c,00h
0e84 dd361401  ld      (ix+14h),01h
0e88 e5        push    hl
0e89 d9        exx     
0e8a e1        pop     hl
0e8b ed5b3ad2  ld      de,(0d23ah)
0e8f af        xor     a
0e90 ed52      sbc     hl,de
0e92 d9        exx     
0e93 da3c4d    jp      c,4d3ch
0e96 47        ld      b,a
0e97 5f        ld      e,a
0e98 57        ld      d,a
0e99 4f        ld      c,a
0e9a 2a3ad2    ld      hl,(0d23ah)
0e9d 3a17d2    ld      a,(0d217h)
0ea0 dd7714    ld      (ix+14h),a
0ea3 c33c4d    jp      4d3ch
0ea6 ddcb18ce  set     1,(ix+18h)
0eaa dd36140a  ld      (ix+14h),0ah
0eae e5        push    hl
0eaf 7d        ld      a,l
0eb0 2f        cpl     
0eb1 6f        ld      l,a
0eb2 7c        ld      a,h
0eb3 2f        cpl     
0eb4 67        ld      h,a
0eb5 23        inc     hl
0eb6 110001    ld      de,0100h
0eb9 a7        and     a
0eba ed52      sbc     hl,de
0ebc e1        pop     hl
0ebd ed5b11d2  ld      de,(0d211h)
0ec1 0e00      ld      c,00h
0ec3 d23c4d    jp      nc,4d3ch
0ec6 ddcb188e  res     1,(ix+18h)
0eca dd361401  ld      (ix+14h),01h
0ece c33c4d    jp      4d3ch
0ed1 ddcb18ce  set     1,(ix+18h)
0ed5 7d        ld      a,l
0ed6 b4        or      h
0ed7 2804      jr      z,0eddh          ; (+04h)
0ed9 cb78      bit     7,b
0edb 283e      jr      z,0f1bh          ; (+3eh)
0edd ed5b0fd2  ld      de,(0d20fh)
0ee1 7b        ld      a,e
0ee2 2f        cpl     
0ee3 5f        ld      e,a
0ee4 7a        ld      a,d
0ee5 2f        cpl     
0ee6 57        ld      d,a
0ee7 13        inc     de
0ee8 0eff      ld      c,0ffh
0eea dd361401  ld      (ix+14h),01h
0eee e5        push    hl
0eef d9        exx     
0ef0 e1        pop     hl
0ef1 7d        ld      a,l
0ef2 2f        cpl     
0ef3 6f        ld      l,a
0ef4 7c        ld      a,h
0ef5 2f        cpl     
0ef6 67        ld      h,a
0ef7 23        inc     hl
0ef8 ed5b3ad2  ld      de,(0d23ah)
0efc af        xor     a
0efd ed52      sbc     hl,de
0eff d9        exx     
0f00 da3c4d    jp      c,4d3ch
0f03 5f        ld      e,a
0f04 57        ld      d,a
0f05 4f        ld      c,a
0f06 2a3ad2    ld      hl,(0d23ah)
0f09 7d        ld      a,l
0f0a 2f        cpl     
0f0b 6f        ld      l,a
0f0c 7c        ld      a,h
0f0d 2f        cpl     
0f0e 67        ld      h,a
0f0f 23        inc     hl
0f10 06ff      ld      b,0ffh
0f12 3a17d2    ld      a,(0d217h)
0f15 dd7714    ld      (ix+14h),a
0f18 c33c4d    jp      4d3ch
0f1b ddcb188e  res     1,(ix+18h)
0f1f dd36140a  ld      (ix+14h),0ah
0f23 ed5b11d2  ld      de,(0d211h)
0f27 7b        ld      a,e
0f28 2f        cpl     
0f29 5f        ld      e,a
0f2a 7a        ld      a,d
0f2b 2f        cpl     
0f2c 57        ld      d,a
0f2d 13        inc     de
0f2e 0eff      ld      c,0ffh
0f30 e5        push    hl
0f31 d9        exx     
0f32 e1        pop     hl
0f33 010001    ld      bc,0100h
0f36 a7        and     a
0f37 ed42      sbc     hl,bc
0f39 d9        exx     
0f3a d23c4d    jp      nc,4d3ch
0f3d ddcb18ce  set     1,(ix+18h)
0f41 dd361401  ld      (ix+14h),01h
0f45 c33c4d    jp      4d3ch
0f48 ddcb1846  bit     0,(ix+18h)
0f4c c0        ret     nz

0f4d 2ab8d2    ld      hl,(0d2b8h)
0f50 7c        ld      a,h
0f51 b5        or      l
0f52 c8        ret     z

0f53 cb7c      bit     7,h
0f55 2805      jr      z,0f5ch          ; (+05h)
0f57 23        inc     hl
0f58 22b8d2    ld      (0d2b8h),hl
0f5b c9        ret     

0f5c 2b        dec     hl
0f5d 22b8d2    ld      (0d2b8h),hl
0f60 c9        ret     

0f61 dd3515    dec     (ix+15h)
0f64 c9        ret     

0f65 3d        dec     a
0f66 3213d4    ld      (0d413h),a
0f69 c9        ret     

0f6a 3a24d2    ld      a,(0d224h)
0f6d e603      and     03h
0f6f c0        ret     nz

0f70 2187d2    ld      hl,0d287h
0f73 35        dec     (hl)
0f74 c0        ret     nz

0f75 fdcb0886  res     0,(iy+08h)
0f79 3ad3d2    ld      a,(0d2d3h)
0f7c fe09      cp      09h
0f7e c8        ret     z

0f7f 3af7d2    ld      a,(0d2f7h)
0f82 df        rst     18h
0f83 c9        ret     

0f84 3ad5d2    ld      a,(0d2d5h)
0f87 fe03      cp      03h
0f89 c0        ret     nz

0f8a 3a38d2    ld      a,(0d238h)
0f8d fe0b      cp      0bh
0f8f c8        ret     z

0f90 2a96d2    ld      hl,(0d296h)
0f93 23        inc     hl
0f94 2296d2    ld      (0d296h),hl
0f97 110003    ld      de,0300h
0f9a a7        and     a
0f9b ed52      sbc     hl,de
0f9d d8        ret     c

0f9e 3e05      ld      a,05h
0fa0 94        sub     h
0fa1 3029      jr      nc,0fcch         ; (+29h)
0fa3 fdcb06ae  res     5,(iy+06h)
0fa7 fdcb06b6  res     6,(iy+06h)
0fab fdcb0886  res     0,(iy+08h)
0faf fdcb08de  set     3,(iy+08h)
0fb3 fdcb05c6  set     0,(iy+05h)
0fb7 3ec0      ld      a,0c0h
0fb9 3281d2    ld      (0d281h),a
0fbc 3e0a      ld      a,0ah
0fbe df        rst     18h
0fbf cdf491    call    91f4h
0fc2 cdf491    call    91f4h
0fc5 cdf491    call    91f4h
0fc8 cdf491    call    91f4h
0fcb af        xor     a
0fcc 5f        ld      e,a
0fcd 87        add     a,a
0fce c680      add     a,80h
0fd0 32bfd2    ld      (0d2bfh),a
0fd3 3eff      ld      a,0ffh
0fd5 32c0d2    ld      (0d2c0h),a
0fd8 1600      ld      d,00h
0fda 210453    ld      hl,5304h
0fdd 19        add     hl,de
0fde 3a24d2    ld      a,(0d224h)
0fe1 a6        and     (hl)
0fe2 2003      jr      nz,0fe7h         ; (+03h)
0fe4 3e1a      ld      a,1ah
0fe6 ef        rst     28h
0fe7 3a24d2    ld      a,(0d224h)
0fea 0f        rrca    
0feb d0        ret     nc

0fec 2affd3    ld      hl,(0d3ffh)
0fef ed5b54d2  ld      de,(0d254h)
0ff3 a7        and     a
0ff4 ed52      sbc     hl,de
0ff6 7d        ld      a,l
0ff7 c604      add     a,04h
0ff9 4f        ld      c,a
0ffa 2a02d4    ld      hl,(0d402h)
0ffd ed5b57d2  ld      de,(0d257h)
1001 a7        and     a
1002 ed52      sbc     hl,de
1004 7d        ld      a,l
1005 c6ec      add     a,0ech
1007 47        ld      b,a
1008 213cd0    ld      hl,0d03ch
100b 11bfd2    ld      de,0d2bfh
100e cda62f    call    2fa6h
1011 c9        ret     

1012 01070f    ld      bc,0f07h
1015 1f        rra     
1016 3f        ccf     
1017 7f        ld      a,a
1018 3e10      ld      a,10h
101a 3288d2    ld      (0d288h),a
101d 3e00      ld      a,00h
101f ef        rst     28h
1020 c9        ret     

1021 af        xor     a
1022 32fed3    ld      (0d3feh),a
1025 ed53ffd3  ld      (0d3ffh),de
1029 c9        ret     

102a d9        exx     
102b 2a02d4    ld      hl,(0d402h)
102e 22dad2    ld      (0d2dah),hl
1031 d9        exx     
1032 ddcb1856  bit     2,(ix+18h)
1036 c8        ret     z

1037 ddcb1896  res     2,(ix+18h)
103b fdcb0746  bit     0,(iy+07h)
103f c0        ret     nz

1040 d9        exx     
1041 2a02d4    ld      hl,(0d402h)
1044 11f5ff    ld      de,0fff5h
1047 19        add     hl,de
1048 2202d4    ld      (0d402h),hl
104b d9        exx     
104c c9        ret     

104d ddcb1856  bit     2,(ix+18h)
1051 c0        ret     nz

1052 ddcb1846  bit     0,(ix+18h)
1056 c0        ret     nz

1057 ddcb187e  bit     7,(ix+18h)
105b c8        ret     z

105c ddcb18c6  set     0,(ix+18h)
1060 2a04d4    ld      hl,(0d404h)
1063 7d        ld      a,l
1064 b4        or      h
1065 2803      jr      z,106ah          ; (+03h)
1067 3e06      ld      a,06h
1069 ef        rst     28h
106a fdcb07d6  set     2,(iy+07h)
106e c9        ret     

106f fdcb0796  res     2,(iy+07h)
1073 c9        ret     

1074 2addd2    ld      hl,(0d2ddh)
1077 ed5b02d4  ld      de,(0d402h)
107b a7        and     a
107c ed52      sbc     hl,de
107e da4f58    jp      c,584fh
1081 210000    ld      hl,0000h
1084 2296d2    ld      (0d296h),hl
1087 ddcb18a6  res     4,(ix+18h)
108b c9        ret     

108c ddcb18d6  set     2,(ix+18h)
1090 c9        ret     

1091 dd36140d  ld      (ix+14h),0dh
1095 c9        ret     

1096 fd3603ff  ld      (iy+03h),0ffh
109a 3a15d4    ld      a,(0d415h)
109d e6fa      and     0fah
109f 3215d4    ld      (0d415h),a
10a2 c9        ret     

10a3 3d        dec     a
10a4 3284d2    ld      (0d284h),a
10a7 2825      jr      z,10ceh          ; (+25h)
10a9 fe14      cp      14h
10ab 3816      jr      c,10c3h          ; (+16h)
10ad af        xor     a
10ae 6f        ld      l,a
10af 67        ld      h,a
10b0 3204d4    ld      (0d404h),a
10b3 2205d4    ld      (0d405h),hl
10b6 3207d4    ld      (0d407h),a
10b9 2208d4    ld      (0d408h),hl
10bc dd36140f  ld      (ix+14h),0fh
10c0 c35a4e    jp      4e5ah
10c3 ddcb188e  res     1,(ix+18h)
10c7 dd36140e  ld      (ix+14h),0eh
10cb c35a4e    jp      4e5ah
10ce 2ad6d2    ld      hl,(0d2d6h)
10d1 46        ld      b,(hl)
10d2 23        inc     hl
10d3 4e        ld      c,(hl)
10d4 23        inc     hl
10d5 7e        ld      a,(hl)
10d6 a7        and     a
10d7 2821      jr      z,10fah          ; (+21h)
10d9 fad753    jp      m,53d7h
10dc 32d4d2    ld      (0d2d4h),a
10df fdcb06e6  set     4,(iy+06h)
10e3 1804      jr      10e9h            ; (+04h)
10e5 fdcb0dd6  set     2,(iy+0dh)
10e9 3e01      ld      a,01h
10eb 3283d2    ld      (0d283h),a
10ee 210000    ld      hl,0000h
10f1 22ffd3    ld      (0d3ffh),hl
10f4 2202d4    ld      (0d402h),hl
10f7 c35a4e    jp      4e5ah
10fa 78        ld      a,b
10fb 2600      ld      h,00h
10fd 0605      ld      b,05h
10ff 87        add     a,a
1100 cb14      rl      h
1102 10fb      djnz    10ffh            ; (-05h)
1104 6f        ld      l,a
1105 110800    ld      de,0008h
1108 19        add     hl,de
1109 22ffd3    ld      (0d3ffh),hl
110c 79        ld      a,c
110d 2600      ld      h,00h
110f 87        add     a,a
1110 cb14      rl      h
1112 87        add     a,a
1113 cb14      rl      h
1115 87        add     a,a
1116 cb14      rl      h
1118 87        add     a,a
1119 cb14      rl      h
111b 87        add     a,a
111c cb14      rl      h
111e 6f        ld      l,a
111f 2202d4    ld      (0d402h),hl
1122 af        xor     a
1123 32fed3    ld      (0d3feh),a
1126 3201d4    ld      (0d401h),a
1129 c35a4e    jp      4e5ah
112c af        xor     a
112d 6f        ld      l,a
112e 67        ld      h,a
112f 2207d4    ld      (0d407h),hl
1132 3209d4    ld      (0d409h),a
1135 dd361416  ld      (ix+14h),16h
1139 3a10d4    ld      a,(0d410h)
113c fe12      cp      12h
113e da5a4e    jp      c,4e5ah
1141 fdcb08b6  res     6,(iy+08h)
1145 ddcb18d6  set     2,(ix+18h)
1149 c35a4e    jp      4e5ah
114c 3d        dec     a
114d 3286d2    ld      (0d286h),a
1150 dd361411  ld      (ix+14h),11h
1154 c9        ret     

1155 dd360d14  ld      (ix+0dh),14h
1159 dd361410  ld      (ix+14h),10h
115d ddcb0c7e  bit     7,(ix+0ch)
1161 c0        ret     nz

1162 ddcb187e  bit     7,(ix+18h)
1166 c8        ret     z

1167 fdcb06b6  res     6,(iy+06h)
116b af        xor     a
116c 3204d4    ld      (0d404h),a
116f 3205d4    ld      (0d405h),a
1172 3206d4    ld      (0d406h),a
1175 c9        ret     

1176 3a15d4    ld      a,(0d415h)
1179 e6fa      and     0fah
117b 3215d4    ld      (0d415h),a
117e dd361414  ld      (ix+14h),14h
1182 21f6d2    ld      hl,0d2f6h
1185 35        dec     (hl)
1186 c0        ret     nz

1187 fdcb0896  res     2,(iy+08h)
118b c9        ret     

118c 3a13d4    ld      a,(0d413h)
118f a7        and     a
1190 c0        ret     nz

1191 ddcb187e  bit     7,(ix+18h)
1195 c8        ret     z

1196 3e03      ld      a,03h
1198 ef        rst     28h
1199 3e3c      ld      a,3ch
119b 3213d4    ld      (0d413h),a
119e c9        ret     

119f 3a24d2    ld      a,(0d224h)
11a2 0f        rrca    
11a3 d8        ret     c

11a4 010058    ld      bc,5800h
11a7 1623      ld      d,23h
11a9 3a15d4    ld      a,(0d415h)
11ac e605      and     05h
11ae c8        ret     z

11af 14        inc     d
11b0 c9        ret     

11b1 110e00    ld      de,000eh
11b4 19        add     hl,de
11b5 c9        ret     

11b6 dd361300  ld      (ix+13h),00h
11ba c9        ret     

11bb ddcb1866  bit     4,(ix+18h)
11bf c8        ret     z

11c0 3a24d2    ld      a,(0d224h)
11c3 a7        and     a
11c4 ccf491    call    z,91f4h
11c7 c9        ret     

11c8 3d        dec     a
11c9 32e2d2    ld      (0d2e2h),a
11cc fd4e0a    ld      c,(iy+0ah)
11cf 2a36d2    ld      hl,(0d236h)
11d2 c5        push    bc
11d3 e5        push    hl
11d4 2100d0    ld      hl,0d000h
11d7 2236d2    ld      (0d236h),hl
11da ed5b57d2  ld      de,(0d257h)
11de 2ae5d2    ld      hl,(0d2e5h)
11e1 2211d2    ld      (0d211h),hl
11e4 a7        and     a
11e5 ed52      sbc     hl,de
11e7 eb        ex      de,hl
11e8 ed4b54d2  ld      bc,(0d254h)
11ec 2ae3d2    ld      hl,(0d2e3h)
11ef 220fd2    ld      (0d20fh),hl
11f2 a7        and     a
11f3 ed42      sbc     hl,bc
11f5 fe06      cp      06h
11f7 3804      jr      c,11fdh          ; (+04h)
11f9 fe0a      cp      0ah
11fb 3808      jr      c,1205h          ; (+08h)
11fd f5        push    af
11fe 011555    ld      bc,5515h
1201 cd052f    call    2f05h
1204 f1        pop     af
1205 210c00    ld      hl,000ch
1208 2213d2    ld      (0d213h),hl
120b 4f        ld      c,a
120c 0600      ld      b,00h
120e 21f0ff    ld      hl,0fff0h
1211 09        add     hl,bc
1212 2215d2    ld      (0d215h),hl
1215 3e50      ld      a,50h
1217 cd5b2f    call    2f5bh
121a e1        pop     hl
121b c1        pop     bc
121c 2236d2    ld      (0d236h),hl
121f fd710a    ld      (iy+0ah),c
1222 c9        ret     

1223 00        nop     
1224 02        ld      (bc),a
1225 04        inc     b
1226 06ff      ld      b,0ffh
1228 ff        rst     38h
1229 2022      jr      nz,124dh         ; (+22h)
122b 24        inc     h
122c 26ff      ld      h,0ffh
122e ff        rst     38h
122f ff        rst     38h
1230 ff        rst     38h
1231 ff        rst     38h
1232 ff        rst     38h
1233 ff        rst     38h
1234 ff        rst     38h
1235 dd361409  ld      (ix+14h),09h
1239 c9        ret     

123a 3d        dec     a
123b 3285d2    ld      (0d285h),a
123e c0        ret     nz

123f 3af7d2    ld      a,(0d2f7h)
1242 df        rst     18h
1243 fd4e0a    ld      c,(iy+0ah)
1246 fdcb0086  res     0,(iy+00h)
124a cdef02    call    02efh
124d fd710a    ld      (iy+0ah),c
1250 c9        ret     

1251 fd3603fb  ld      (iy+03h),0fbh
1255 2affd3    ld      hl,(0d3ffh)
1258 11601b    ld      de,1b60h
125b a7        and     a
125c ed52      sbc     hl,de
125e d0        ret     nc

125f fd3603ff  ld      (iy+03h),0ffh
1263 2a04d4    ld      hl,(0d404h)
1266 7d        ld      a,l
1267 b4        or      h
1268 c0        ret     nz

1269 ddcb188e  res     1,(ix+18h)
126d e1        pop     hl
126e ddcb18ce  set     1,(ix+18h)
1272 dd361418  ld      (ix+14h),18h
1276 21f9d2    ld      hl,0d2f9h
1279 fdcb0d46  bit     0,(iy+0dh)
127d 203d      jr      nz,12bch         ; (+3dh)
127f 3650      ld      (hl),50h
1281 cdb67c    call    7cb6h
1284 da5a4e    jp      c,4e5ah
1287 dde5      push    ix
1289 e5        push    hl
128a dde1      pop     ix
128c af        xor     a
128d dd360054  ld      (ix+00h),54h
1291 dd7711    ld      (ix+11h),a
1294 dd7718    ld      (ix+18h),a
1297 dd7701    ld      (ix+01h),a
129a 2affd3    ld      hl,(0d3ffh)
129d dd7502    ld      (ix+02h),l
12a0 dd7403    ld      (ix+03h),h
12a3 dd7704    ld      (ix+04h),a
12a6 2a02d4    ld      hl,(0d402h)
12a9 110e00    ld      de,000eh
12ac 19        add     hl,de
12ad dd7505    ld      (ix+05h),l
12b0 dd7406    ld      (ix+06h),h
12b3 dde1      pop     ix
12b5 fdcb0dc6  set     0,(iy+0dh)
12b9 c35a4e    jp      4e5ah
12bc fdcb0d4e  bit     1,(iy+0dh)
12c0 200a      jr      nz,12cch         ; (+0ah)
12c2 35        dec     (hl)
12c3 c25a4e    jp      nz,4e5ah
12c6 fdcb0dce  set     1,(iy+0dh)
12ca 368c      ld      (hl),8ch
12cc dd361417  ld      (ix+14h),17h
12d0 7e        ld      a,(hl)
12d1 a7        and     a
12d2 2804      jr      z,12d8h          ; (+04h)
12d4 35        dec     (hl)
12d5 c35a4e    jp      4e5ah
12d8 dd361419  ld      (ix+14h),19h
12dc c35a4e    jp      4e5ah
12df dd7e0e    ld      a,(ix+0eh)
12e2 fe15      cp      15h
12e4 280a      jr      z,12f0h          ; (+0ah)
12e6 2a02d4    ld      hl,(0d402h)
12e9 110b00    ld      de,000bh
12ec 19        add     hl,de
12ed 2202d4    ld      (0d402h),hl
12f0 dd360d10  ld      (ix+0dh),10h
12f4 dd360e15  ld      (ix+0eh),15h
12f8 2a04d4    ld      hl,(0d404h)
12fb dd4609    ld      b,(ix+09h)
12fe 0e00      ld      c,00h
1300 59        ld      e,c
1301 51        ld      d,c
1302 7c        ld      a,h
1303 b5        or      l
1304 b0        or      b
1305 ca5c56    jp      z,565ch
1308 dd361409  ld      (ix+14h),09h
130c fdcb0356  bit     2,(iy+03h)
1310 2020      jr      nz,1332h         ; (+20h)
1312 fdcb034e  bit     1,(iy+03h)
1316 281a      jr      z,1332h          ; (+1ah)
1318 ddcb187e  bit     7,(ix+18h)
131c ca1c56    jp      z,561ch
131f cb78      bit     7,b
1321 2035      jr      nz,1358h         ; (+35h)
1323 ddcb1886  res     0,(ix+18h)
1327 c30d52    jp      520dh
132a 11f0ff    ld      de,0fff0h
132d 0eff      ld      c,0ffh
132f c33c4d    jp      4d3ch
1332 fdcb035e  bit     3,(iy+03h)
1336 2020      jr      nz,1358h         ; (+20h)
1338 fdcb034e  bit     1,(iy+03h)
133c 281a      jr      z,1358h          ; (+1ah)
133e ddcb187e  bit     7,(ix+18h)
1342 ca4256    jp      z,5642h
1345 cb78      bit     7,b
1347 280f      jr      z,1358h          ; (+0fh)
1349 ddcb1886  res     0,(ix+18h)
134d c30d52    jp      520dh
1350 111000    ld      de,0010h
1353 0e00      ld      c,00h
1355 c33c4d    jp      4d3ch
1358 110400    ld      de,0004h
135b 0e00      ld      c,00h
135d 78        ld      a,b
135e a7        and     a
135f fa3c4d    jp      m,4d3ch
1362 11fcff    ld      de,0fffch
1365 0eff      ld      c,0ffh
1367 c33c4d    jp      4d3ch
136a ddcb187e  bit     7,(ix+18h)
136e 2821      jr      z,1391h          ; (+21h)
1370 dd361407  ld      (ix+14h),07h
1374 ddcb1886  res     0,(ix+18h)
1378 ed5bb8d2  ld      de,(0d2b8h)
137c cb7a      bit     7,d
137e 2809      jr      z,1389h          ; (+09h)
1380 21d8ff    ld      hl,0ffd8h
1383 a7        and     a
1384 ed52      sbc     hl,de
1386 d26a4d    jp      nc,4d6ah
1389 1b        dec     de
138a ed53b8d2  ld      (0d2b8h),de
138e c36a4d    jp      4d6ah
1391 dd361409  ld      (ix+14h),09h
1395 d5        push    de
1396 e5        push    hl
1397 cb78      bit     7,b
1399 2807      jr      z,13a2h          ; (+07h)
139b 7d        ld      a,l
139c 2f        cpl     
139d 6f        ld      l,a
139e 7c        ld      a,h
139f 2f        cpl     
13a0 67        ld      h,a
13a1 23        inc     hl
13a2 ed5b3ad2  ld      de,(0d23ah)
13a6 af        xor     a
13a7 ed52      sbc     hl,de
13a9 e1        pop     hl
13aa d1        pop     de
13ab da3c4d    jp      c,4d3ch
13ae 4f        ld      c,a
13af 59        ld      e,c
13b0 51        ld      d,c
13b1 dd361409  ld      (ix+14h),09h
13b5 c33c4d    jp      4d3ch
13b8 ddcb187e  bit     7,(ix+18h)
13bc 2821      jr      z,13dfh          ; (+21h)
13be ddcb185e  bit     3,(ix+18h)
13c2 2006      jr      nz,13cah         ; (+06h)
13c4 fdcb036e  bit     5,(iy+03h)
13c8 2815      jr      z,13dfh          ; (+15h)
13ca fdcb036e  bit     5,(iy+03h)
13ce 2016      jr      nz,13e6h         ; (+16h)
13d0 ddcb1886  res     0,(ix+18h)
13d4 3a04d4    ld      a,(0d404h)
13d7 e6f8      and     0f8h
13d9 3204d4    ld      (0d404h),a
13dc c3a04d    jp      4da0h
13df ddcb189e  res     3,(ix+18h)
13e3 c3cd4d    jp      4dcdh
13e6 ddcb18de  set     3,(ix+18h)
13ea c3cd4d    jp      4dcdh
13ed ddcb18ee  set     5,(ix+18h)
13f1 ddcb18ce  set     1,(ix+18h)
13f5 3a81d2    ld      a,(0d281h)
13f8 fe60      cp      60h
13fa 2863      jr      z,145fh          ; (+63h)
13fc 2a57d2    ld      hl,(0d257h)
13ff 11c000    ld      de,00c0h
1402 19        add     hl,de
1403 ed5b02d4  ld      de,(0d402h)
1407 ed52      sbc     hl,de
1409 3016      jr      nc,1421h         ; (+16h)
140b fdcb0656  bit     2,(iy+06h)
140f 2010      jr      nz,1421h         ; (+10h)
1411 3e01      ld      a,01h
1413 327dd2    ld      (0d27dh),a
1416 2140d2    ld      hl,0d240h
1419 35        dec     (hl)
141a fdcb06d6  set     2,(iy+06h)
141e c35157    jp      5751h
1421 af        xor     a
1422 218000    ld      hl,0080h
1425 fdcb085e  bit     3,(iy+08h)
1429 2025      jr      nz,1450h         ; (+25h)
142b ed5b07d4  ld      de,(0d407h)
142f cb7a      bit     7,d
1431 2008      jr      nz,143bh         ; (+08h)
1433 210006    ld      hl,0600h
1436 a7        and     a
1437 ed52      sbc     hl,de
1439 381b      jr      c,1456h          ; (+1bh)
143b eb        ex      de,hl
143c dd460c    ld      b,(ix+0ch)
143f 7c        ld      a,h
1440 fe80      cp      80h
1442 3004      jr      nc,1448h         ; (+04h)
1444 fe08      cp      08h
1446 3005      jr      nc,144dh         ; (+05h)
1448 112000    ld      de,0020h
144b 0e00      ld      c,00h
144d 19        add     hl,de
144e 78        ld      a,b
144f 89        adc     a,c
1450 2207d4    ld      (0d407h),hl
1453 3209d4    ld      (0d409h),a
1456 af        xor     a
1457 6f        ld      l,a
1458 67        ld      h,a
1459 2204d4    ld      (0d404h),hl
145c 3206d4    ld      (0d406h),a
145f dd36140b  ld      (ix+14h),0bh
1463 fdcb085e  bit     3,(iy+08h)
1467 ca5a4e    jp      z,4e5ah
146a dd361415  ld      (ix+14h),15h
146e c35a4e    jp      4e5ah
1471 fdcb067e  bit     7,(iy+06h)
1475 c0        ret     nz

1476 ddcb18a6  res     4,(ix+18h)
147a c9        ret     

147b fdcb0546  bit     0,(iy+05h)
147f cad72f    jp      z,2fd7h
1482 c9        ret     

1483 dd7e02    ld      a,(ix+02h)
1486 c608      add     a,08h
1488 e61f      and     1fh
148a fe1a      cp      1ah
148c d8        ret     c

148d 3a15d4    ld      a,(0d415h)
1490 0f        rrca    
1491 3803      jr      c,1496h          ; (+03h)
1493 e602      and     02h
1495 c8        ret     z

1496 dd6e07    ld      l,(ix+07h)
1499 dd6608    ld      h,(ix+08h)
149c ddcb097e  bit     7,(ix+09h)
14a0 c0        ret     nz

14a1 110103    ld      de,0301h
14a4 a7        and     a
14a5 ed52      sbc     hl,de
14a7 d8        ret     c

14a8 dd6e08    ld      l,(ix+08h)
14ab dd6609    ld      h,(ix+09h)
14ae 29        add     hl,hl
14af 7d        ld      a,l
14b0 2f        cpl     
14b1 6f        ld      l,a
14b2 7c        ld      a,h
14b3 2f        cpl     
14b4 67        ld      h,a
14b5 23        inc     hl
14b6 dd360a00  ld      (ix+0ah),00h
14ba dd750b    ld      (ix+0bh),l
14bd dd740c    ld      (ix+0ch),h
14c0 3e05      ld      a,05h
14c2 ef        rst     28h
14c3 c9        ret     

14c4 dd7e02    ld      a,(ix+02h)
14c7 c608      add     a,08h
14c9 e61f      and     1fh
14cb fe10      cp      10h
14cd d8        ret     c

14ce dd360700  ld      (ix+07h),00h
14d2 dd3608f8  ld      (ix+08h),0f8h
14d6 dd3609ff  ld      (ix+09h),0ffh
14da ddcb18ce  set     1,(ix+18h)
14de 3e04      ld      a,04h
14e0 ef        rst     28h
14e1 c9        ret     

14e2 dd7e02    ld      a,(ix+02h)
14e5 c608      add     a,08h
14e7 e61f      and     1fh
14e9 fe10      cp      10h
14eb d8        ret     c

14ec ddcb187e  bit     7,(ix+18h)
14f0 c8        ret     z

14f1 3abad2    ld      a,(0d2bah)
14f4 e680      and     80h
14f6 c0        ret     nz

14f7 fdcb06b6  res     6,(iy+06h)
14fb dd360a00  ld      (ix+0ah),00h
14ff dd360bf4  ld      (ix+0bh),0f4h
1503 dd360cff  ld      (ix+0ch),0ffh
1507 3e04      ld      a,04h
1509 ef        rst     28h
150a c9        ret     

150b dd7e02    ld      a,(ix+02h)
150e c608      add     a,08h
1510 e61f      and     1fh
1512 fe10      cp      10h
1514 d0        ret     nc

1515 fdcb06b6  res     6,(iy+06h)
1519 dd360700  ld      (ix+07h),00h
151d dd360808  ld      (ix+08h),08h
1521 dd360900  ld      (ix+09h),00h
1525 ddcb188e  res     1,(ix+18h)
1529 3e04      ld      a,04h
152b ef        rst     28h
152c c9        ret     

152d ddcb187e  bit     7,(ix+18h)
1531 c8        ret     z

1532 2afed3    ld      hl,(0d3feh)
1535 3a00d4    ld      a,(0d400h)
1538 1180fe    ld      de,0fe80h
153b 19        add     hl,de
153c ceff      adc     a,0ffh
153e 22fed3    ld      (0d3feh),hl
1541 3200d4    ld      (0d400h),a
1544 c9        ret     

1545 ddcb187e  bit     7,(ix+18h)
1549 c8        ret     z

154a 2afed3    ld      hl,(0d3feh)
154d 3a00d4    ld      a,(0d400h)
1550 110002    ld      de,0200h
1553 19        add     hl,de
1554 ce00      adc     a,00h
1556 22fed3    ld      (0d3feh),hl
1559 3200d4    ld      (0d400h),a
155c c9        ret     

155d ddcb1866  bit     4,(ix+18h)
1561 2003      jr      nz,1566h         ; (+03h)
1563 3e12      ld      a,12h
1565 ef        rst     28h
1566 ddcb18e6  set     4,(ix+18h)
156a c9        ret     

156b dd7e02    ld      a,(ix+02h)
156e c608      add     a,08h
1570 e61f      and     1fh
1572 fe08      cp      08h
1574 d8        ret     c

1575 fe18      cp      18h
1577 d0        ret     nc

1578 ddcb187e  bit     7,(ix+18h)
157c c8        ret     z

157d 3abad2    ld      a,(0d2bah)
1580 e680      and     80h
1582 c0        ret     nz

1583 fdcb06b6  res     6,(iy+06h)
1587 dd360a00  ld      (ix+0ah),00h
158b dd360bf4  ld      (ix+0bh),0f4h
158f dd360cff  ld      (ix+0ch),0ffh
1593 3e04      ld      a,04h
1595 ef        rst     28h
1596 c9        ret     

1597 ddcb0c7e  bit     7,(ix+0ch)
159b c0        ret     nz

159c 3e05      ld      a,05h
159e ef        rst     28h
159f c9        ret     

15a0 fdcb0666  bit     4,(iy+06h)
15a4 c0        ret     nz

15a5 3affd3    ld      a,(0d3ffh)
15a8 c608      add     a,08h
15aa e61f      and     1fh
15ac fe08      cp      08h
15ae d8        ret     c

15af fe18      cp      18h
15b1 d0        ret     nc

15b2 2affd3    ld      hl,(0d3ffh)
15b5 010800    ld      bc,0008h
15b8 09        add     hl,bc
15b9 7d        ld      a,l
15ba 87        add     a,a
15bb cb14      rl      h
15bd 87        add     a,a
15be cb14      rl      h
15c0 87        add     a,a
15c1 cb14      rl      h
15c3 5c        ld      e,h
15c4 2a02d4    ld      hl,(0d402h)
15c7 011000    ld      bc,0010h
15ca 09        add     hl,bc
15cb 7d        ld      a,l
15cc 87        add     a,a
15cd cb14      rl      h
15cf 87        add     a,a
15d0 cb14      rl      h
15d2 87        add     a,a
15d3 cb14      rl      h
15d5 54        ld      d,h
15d6 21ea58    ld      hl,58eah
15d9 0605      ld      b,05h
15db 7e        ld      a,(hl)
15dc 23        inc     hl
15dd bb        cp      e
15de 2011      jr      nz,15f1h         ; (+11h)
15e0 7e        ld      a,(hl)
15e1 ba        cp      d
15e2 200d      jr      nz,15f1h         ; (+0dh)
15e4 23        inc     hl
15e5 22d6d2    ld      (0d2d6h),hl
15e8 3e50      ld      a,50h
15ea 3284d2    ld      (0d284h),a
15ed 3e06      ld      a,06h
15ef ef        rst     28h
15f0 c9        ret     

15f1 23        inc     hl
15f2 23        inc     hl
15f3 23        inc     hl
15f4 23        inc     hl
15f5 10e4      djnz    15dbh            ; (-1ch)
15f7 c9        ret     

15f8 34        inc     (hl)
15f9 3d        dec     a
15fa 34        inc     (hl)
15fb 2f        cpl     
15fc 00        nop     
15fd 183a      jr      1639h            ; (+3ah)
15ff 19        add     hl,de
1600 03        inc     bc
1601 00        nop     
1602 0e3a      ld      c,3ah
1604 00        nop     
1605 00        nop     
1606 161b      ld      d,1bh
1608 320000    ld      (0000h),a
160b 17        rla     
160c 2f        cpl     
160d 0c        inc     c
160e 00        nop     
160f 00        nop     
1610 ff        rst     38h
1611 2a04d4    ld      hl,(0d404h)
1614 3a06d4    ld      a,(0d406h)
1617 11f8ff    ld      de,0fff8h
161a 19        add     hl,de
161b ceff      adc     a,0ffh
161d 2204d4    ld      (0d404h),hl
1620 3206d4    ld      (0d406h),a
1623 ddcb1866  bit     4,(ix+18h)
1627 2003      jr      nz,162ch         ; (+03h)
1629 3e12      ld      a,12h
162b ef        rst     28h
162c ddcb18e6  set     4,(ix+18h)
1630 c9        ret     

1631 af        xor     a
1632 210500    ld      hl,0005h
1635 3204d4    ld      (0d404h),a
1638 2205d4    ld      (0d405h),hl
163b ddcb188e  res     1,(ix+18h)
163f 3e06      ld      a,06h
1641 3286d2    ld      (0d286h),a
1644 fd7e03    ld      a,(iy+03h)
1647 f60f      or      0fh
1649 fd7703    ld      (iy+03h),a
164c 210400    ld      hl,0004h
164f 2208d4    ld      (0d408h),hl
1652 ddcb1886  res     0,(ix+18h)
1656 ddcb1896  res     2,(ix+18h)
165a c9        ret     

165b af        xor     a
165c 210600    ld      hl,0006h
165f 3204d4    ld      (0d404h),a
1662 2205d4    ld      (0d405h),hl
1665 ddcb188e  res     1,(ix+18h)
1669 18d4      jr      163fh            ; (-2ch)
166b af        xor     a
166c 21fbff    ld      hl,0fffbh
166f 3204d4    ld      (0d404h),a
1672 2205d4    ld      (0d405h),hl
1675 ddcb18ce  set     1,(ix+18h)
1679 18c4      jr      163fh            ; (-3ch)
167b af        xor     a
167c 21faff    ld      hl,0fffah
167f 3204d4    ld      (0d404h),a
1682 2205d4    ld      (0d405h),hl
1685 ddcb18ce  set     1,(ix+18h)
1689 18b4      jr      163fh            ; (-4ch)
168b 3ae2d2    ld      a,(0d2e2h)
168e fe08      cp      08h
1690 d0        ret     nc

1691 cdd659    call    59d6h
1694 110100    ld      de,0001h
1697 2a07d4    ld      hl,(0d407h)
169a 7d        ld      a,l
169b 2f        cpl     
169c 6f        ld      l,a
169d 7c        ld      a,h
169e 2f        cpl     
169f 67        ld      h,a
16a0 3a09d4    ld      a,(0d409h)
16a3 2f        cpl     
16a4 19        add     hl,de
16a5 ce00      adc     a,00h
16a7 a7        and     a
16a8 f2a359    jp      p,59a3h
16ab 11c8ff    ld      de,0ffc8h
16ae 19        add     hl,de
16af ceff      adc     a,0ffh
16b1 2207d4    ld      (0d407h),hl
16b4 3209d4    ld      (0d409h),a
16b7 010800    ld      bc,0008h
16ba 2affd3    ld      hl,(0d3ffh)
16bd 09        add     hl,bc
16be 7d        ld      a,l
16bf e6e0      and     0e0h
16c1 6f        ld      l,a
16c2 22e3d2    ld      (0d2e3h),hl
16c5 011000    ld      bc,0010h
16c8 2a02d4    ld      hl,(0d402h)
16cb 09        add     hl,bc
16cc 7d        ld      a,l
16cd e6e0      and     0e0h
16cf 6f        ld      l,a
16d0 22e5d2    ld      (0d2e5h),hl
16d3 3e10      ld      a,10h
16d5 32e2d2    ld      (0d2e2h),a
16d8 111000    ld      de,0010h
16db 0e00      ld      c,00h
16dd cda833    call    33a8h
16e0 3e07      ld      a,07h
16e2 ef        rst     28h
16e3 c9        ret     

16e4 2a04d4    ld      hl,(0d404h)
16e7 3a06d4    ld      a,(0d406h)
16ea 4f        ld      c,a
16eb e680      and     80h
16ed 47        ld      b,a
16ee 3affd3    ld      a,(0d3ffh)
16f1 c608      add     a,08h
16f3 e61f      and     1fh
16f5 d610      sub     10h
16f7 e680      and     80h
16f9 b8        cp      b
16fa 2809      jr      z,1705h          ; (+09h)
16fc 7d        ld      a,l
16fd 2f        cpl     
16fe 6f        ld      l,a
16ff 7c        ld      a,h
1700 2f        cpl     
1701 67        ld      h,a
1702 79        ld      a,c
1703 2f        cpl     
1704 4f        ld      c,a
1705 110100    ld      de,0001h
1708 79        ld      a,c
1709 19        add     hl,de
170a ce00      adc     a,00h
170c 5d        ld      e,l
170d 54        ld      d,h
170e 4f        ld      c,a
170f cb29      sra     c
1711 cb1a      rr      d
1713 cb1b      rr      e
1715 19        add     hl,de
1716 89        adc     a,c
1717 2204d4    ld      (0d404h),hl
171a 3206d4    ld      (0d406h),a
171d c9        ret     

171e dd360a00  ld      (ix+0ah),00h
1722 dd360bf6  ld      (ix+0bh),0f6h
1726 dd360cff  ld      (ix+0ch),0ffh
172a 3e04      ld      a,04h
172c ef        rst     28h
172d c9        ret     

172e dd360a00  ld      (ix+0ah),00h
1732 dd360bf4  ld      (ix+0bh),0f4h
1736 dd360cff  ld      (ix+0ch),0ffh
173a 3e04      ld      a,04h
173c ef        rst     28h
173d c9        ret     

173e dd360a00  ld      (ix+0ah),00h
1742 dd360bf2  ld      (ix+0bh),0f2h
1746 dd360cff  ld      (ix+0ch),0ffh
174a 3e04      ld      a,04h
174c ef        rst     28h
174d c9        ret     

174e 3ab1d2    ld      a,(0d2b1h)
1751 a7        and     a
1752 c0        ret     nz

1753 cd825a    call    5a82h
1756 110100    ld      de,0001h
1759 2a04d4    ld      hl,(0d404h)
175c 7d        ld      a,l
175d 2f        cpl     
175e 6f        ld      l,a
175f 7c        ld      a,h
1760 2f        cpl     
1761 67        ld      h,a
1762 3a06d4    ld      a,(0d406h)
1765 2f        cpl     
1766 19        add     hl,de
1767 ce00      adc     a,00h
1769 1100ff    ld      de,0ff00h
176c 0eff      ld      c,0ffh
176e fa685a    jp      m,5a68h
1771 110001    ld      de,0100h
1774 0e00      ld      c,00h
1776 19        add     hl,de
1777 89        adc     a,c
1778 2204d4    ld      (0d404h),hl
177b 3206d4    ld      (0d406h),a
177e 21b1d2    ld      hl,0d2b1h
1781 3604      ld      (hl),04h
1783 23        inc     hl
1784 360e      ld      (hl),0eh
1786 23        inc     hl
1787 36ff      ld      (hl),0ffh
1789 23        inc     hl
178a 360f      ld      (hl),0fh
178c 3e07      ld      a,07h
178e ef        rst     28h
178f c9        ret     

1790 3a06d4    ld      a,(0d406h)
1793 a7        and     a
1794 11f0ff    ld      de,0fff0h
1797 f28f5a    jp      p,5a8fh
179a 112000    ld      de,0020h
179d 2affd3    ld      hl,(0d3ffh)
17a0 010800    ld      bc,0008h
17a3 09        add     hl,bc
17a4 7d        ld      a,l
17a5 e6e0      and     0e0h
17a7 6f        ld      l,a
17a8 19        add     hl,de
17a9 22ffd3    ld      (0d3ffh),hl
17ac c9        ret     

17ad 3ab1d2    ld      a,(0d2b1h)
17b0 a7        and     a
17b1 c0        ret     nz

17b2 cd825a    call    5a82h
17b5 cdd659    call    59d6h
17b8 110100    ld      de,0001h
17bb 2a07d4    ld      hl,(0d407h)
17be 7d        ld      a,l
17bf 2f        cpl     
17c0 6f        ld      l,a
17c1 7c        ld      a,h
17c2 2f        cpl     
17c3 67        ld      h,a
17c4 3a09d4    ld      a,(0d409h)
17c7 2f        cpl     
17c8 19        add     hl,de
17c9 ce00      adc     a,00h
17cb a7        and     a
17cc f2c75a    jp      p,5ac7h
17cf 11c8ff    ld      de,0ffc8h
17d2 19        add     hl,de
17d3 ceff      adc     a,0ffh
17d5 2207d4    ld      (0d407h),hl
17d8 3209d4    ld      (0d409h),a
17db c3705a    jp      5a70h
17de 2aead2    ld      hl,(0d2eah)
17e1 118200    ld      de,0082h
17e4 a7        and     a
17e5 ed52      sbc     hl,de
17e7 d8        ret     c

17e8 fdcb0546  bit     0,(iy+05h)
17ec cad72f    jp      z,2fd7h
17ef c9        ret     

17f0 3a15d4    ld      a,(0d415h)
17f3 07        rlca    
17f4 d0        ret     nc

17f5 2affd3    ld      hl,(0d3ffh)
17f8 010800    ld      bc,0008h
17fb 09        add     hl,bc
17fc 7d        ld      a,l
17fd e61f      and     1fh
17ff fe10      cp      10h
1801 3042      jr      nc,1845h         ; (+42h)
1803 2affd3    ld      hl,(0d3ffh)
1806 010800    ld      bc,0008h
1809 09        add     hl,bc
180a 7d        ld      a,l
180b e6e0      and     0e0h
180d 4f        ld      c,a
180e 44        ld      b,h
180f 2a02d4    ld      hl,(0d402h)
1812 111000    ld      de,0010h
1815 19        add     hl,de
1816 7d        ld      a,l
1817 e6e0      and     0e0h
1819 5f        ld      e,a
181a 54        ld      d,h
181b cd775b    call    5b77h
181e d8        ret     c

181f 010800    ld      bc,0008h
1822 111000    ld      de,0010h
1825 cdd330    call    30d3h
1828 0e00      ld      c,00h
182a 7e        ld      a,(hl)
182b fe8a      cp      8ah
182d 2802      jr      z,1831h          ; (+02h)
182f 0e89      ld      c,89h
1831 71        ld      (hl),c
1832 c9        ret     

1833 3a15d4    ld      a,(0d415h)
1836 07        rlca    
1837 d0        ret     nc

1838 2affd3    ld      hl,(0d3ffh)
183b 010800    ld      bc,0008h
183e 09        add     hl,bc
183f 7d        ld      a,l
1840 e61f      and     1fh
1842 fe10      cp      10h
1844 d8        ret     c

1845 7d        ld      a,l
1846 e6e0      and     0e0h
1848 c610      add     a,10h
184a 4f        ld      c,a
184b 44        ld      b,h
184c 2a02d4    ld      hl,(0d402h)
184f 111000    ld      de,0010h
1852 19        add     hl,de
1853 7d        ld      a,l
1854 e6e0      and     0e0h
1856 5f        ld      e,a
1857 54        ld      d,h
1858 cd775b    call    5b77h
185b d8        ret     c

185c 010800    ld      bc,0008h
185f 111000    ld      de,0010h
1862 cdd330    call    30d3h
1865 0e00      ld      c,00h
1867 7e        ld      a,(hl)
1868 fe89      cp      89h
186a 28c5      jr      z,1831h          ; (-3bh)
186c 0e8a      ld      c,8ah
186e 71        ld      (hl),c
186f c9        ret     

1870 3a15d4    ld      a,(0d415h)
1873 07        rlca    
1874 d0        ret     nc

1875 2affd3    ld      hl,(0d3ffh)
1878 010800    ld      bc,0008h
187b 09        add     hl,bc
187c 7d        ld      a,l
187d e61f      and     1fh
187f fe10      cp      10h
1881 d0        ret     nc

1882 c3f55a    jp      5af5h
1885 c5        push    bc
1886 d5        push    de
1887 cdb67c    call    7cb6h
188a d1        pop     de
188b c1        pop     bc
188c d8        ret     c

188d dde5      push    ix
188f e5        push    hl
1890 dde1      pop     ix
1892 af        xor     a
1893 dd36002e  ld      (ix+00h),2eh
1897 dd7701    ld      (ix+01h),a
189a dd7102    ld      (ix+02h),c
189d dd7003    ld      (ix+03h),b
18a0 dd7704    ld      (ix+04h),a
18a3 dd7305    ld      (ix+05h),e
18a6 dd7206    ld      (ix+06h),d
18a9 dd7707    ld      (ix+07h),a
18ac dd7708    ld      (ix+08h),a
18af dd7709    ld      (ix+09h),a
18b2 dd770a    ld      (ix+0ah),a
18b5 dd770b    ld      (ix+0bh),a
18b8 dd770c    ld      (ix+0ch),a
18bb dd7718    ld      (ix+18h),a
18be dde1      pop     ix
18c0 a7        and     a
18c1 c9        ret     

18c2 ddcb187e  bit     7,(ix+18h)
18c6 c8        ret     z

18c7 2a02d4    ld      hl,(0d402h)
18ca ed5b57d2  ld      de,(0d257h)
18ce a7        and     a
18cf ed52      sbc     hl,de
18d1 d0        ret     nc

18d2 fd3603ff  ld      (iy+03h),0ffh
18d6 c9        ret     

18d7 2aead2    ld      hl,(0d2eah)
18da 118200    ld      de,0082h
18dd a7        and     a
18de ed52      sbc     hl,de
18e0 d8        ret     c

18e1 2affd3    ld      hl,(0d3ffh)
18e4 110800    ld      de,0008h
18e7 19        add     hl,de
18e8 7d        ld      a,l
18e9 e61f      and     1fh
18eb fe06      cp      06h
18ed d8        ret     c

18ee fe1a      cp      1ah
18f0 d0        ret     nc

18f1 fdcb0546  bit     0,(iy+05h)
18f5 cad72f    jp      z,2fd7h
18f8 c9        ret     

18f9 63        ld      h,e
18fa 57        ld      d,a
18fb 6d        ld      l,l
18fc 57        ld      d,a
18fd 75        ld      (hl),l
18fe 57        ld      d,a
18ff b6        or      (hl)
1900 57        ld      d,a
1901 d457fd    call    nc,0fd57h
1904 57        ld      d,a
1905 1f        rra     
1906 58        ld      e,b
1907 37        scf     
1908 58        ld      e,b
1909 4f        ld      c,a
190a 58        ld      e,b
190b 5d        ld      e,l
190c 58        ld      e,b
190d 89        adc     a,c
190e 58        ld      e,b
190f 92        sub     d
1910 58        ld      e,b
1911 03        inc     bc
1912 59        ld      e,c
1913 23        inc     hl
1914 59        ld      e,c
1915 4d        ld      c,l
1916 59        ld      e,c
1917 5d        ld      e,l
1918 59        ld      e,c
1919 6d        ld      l,l
191a 59        ld      e,c
191b 7d        ld      a,l
191c 59        ld      e,c
191d 105a      djnz    1979h            ; (+5ah)
191f 205a      jr      nz,197bh         ; (+5ah)
1921 305a      jr      nc,197dh         ; (+5ah)
1923 40        ld      b,b
1924 5a        ld      e,d
1925 9f        sbc     a,a
1926 5a        ld      e,d
1927 d0        ret     nc

1928 5a        ld      e,d
1929 e25a25    jp      po,255ah
192c 5b        ld      e,e
192d 62        ld      h,d
192e 5b        ld      e,e
192f b4        or      h
1930 5b        ld      e,e
1931 c9        ret     

1932 5b        ld      e,e
1933 b4        or      h
1934 b6        or      (hl)
1935 ff        rst     38h
1936 ff        rst     38h
1937 ff        rst     38h
1938 ff        rst     38h
1939 b8        cp      b
193a ba        cp      d
193b ff        rst     38h
193c ff        rst     38h
193d ff        rst     38h
193e ff        rst     38h
193f ff        rst     38h
1940 ff        rst     38h
1941 b6        or      (hl)
1942 b8        cp      b
1943 ff        rst     38h
1944 ff        rst     38h
1945 ff        rst     38h
1946 ff        rst     38h
1947 ba        cp      d
1948 b8        cp      b
1949 ff        rst     38h
194a ff        rst     38h
194b ff        rst     38h
194c ff        rst     38h
194d ff        rst     38h
194e ff        rst     38h
194f b4        or      h
1950 b6        or      (hl)
1951 b8        cp      b
1952 ff        rst     38h
1953 ff        rst     38h
1954 ff        rst     38h
1955 ba        cp      d
1956 bc        cp      h
1957 be        cp      (hl)
1958 ff        rst     38h
1959 ff        rst     38h
195a ff        rst     38h
195b ff        rst     38h
195c ff        rst     38h
195d b8        cp      b
195e b6        or      (hl)
195f b4        or      h
1960 ff        rst     38h
1961 ff        rst     38h
1962 ff        rst     38h
1963 be        cp      (hl)
1964 bc        cp      h
1965 ba        cp      d
1966 ff        rst     38h
1967 ff        rst     38h
1968 ff        rst     38h
1969 ff        rst     38h
196a ff        rst     38h
196b 00        nop     
196c 00        nop     
196d 00        nop     
196e 00        nop     
196f 00        nop     
1970 00        nop     
1971 00        nop     
1972 00        nop     
1973 99        sbc     a,c
1974 5c        ld      e,h
1975 99        sbc     a,c
1976 5c        ld      e,h
1977 cb5c      bit     3,h
1979 dd5c      ld      e,ixh
197b df        rst     18h
197c 5c        ld      e,h
197d e25ce5    jp      po,0e55ch
1980 5c        ld      e,h
1981 e7        rst     20h
1982 5c        ld      e,h
1983 ea5ced    jp      pe,0ed5ch
1986 5c        ld      e,h
1987 35        dec     (hl)
1988 5d        ld      e,l
1989 43        ld      b,e
198a 5d        ld      e,l
198b 46        ld      b,(hl)
198c 5d        ld      e,l
198d 49        ld      c,c
198e 5d        ld      e,l
198f 8d        adc     a,l
1990 5d        ld      e,l
1991 a3        and     e
1992 5d        ld      e,l
1993 af        xor     a
1994 5d        ld      e,l
1995 b2        or      d
1996 5d        ld      e,l
1997 c0        ret     nz

1998 5d        ld      e,l
1999 c35dc6    jp      0c65dh
199c 5d        ld      e,l
199d c9        ret     

199e 5d        ld      e,l
199f cc5de2    call    z,0e25dh
19a2 5d        ld      e,l
19a3 e5        push    hl
19a4 5d        ld      e,l
19a5 e8        ret     pe

19a6 5d        ld      e,l
19a7 04        inc     b
19a8 04        inc     b
19a9 04        inc     b
19aa 04        inc     b
19ab 04        inc     b
19ac 04        inc     b
19ad 04        inc     b
19ae 04        inc     b
19af 05        dec     b
19b0 05        dec     b
19b1 05        dec     b
19b2 05        dec     b
19b3 05        dec     b
19b4 05        dec     b
19b5 05        dec     b
19b6 05        dec     b
19b7 0606      ld      b,06h
19b9 0606      ld      b,06h
19bb 0606      ld      b,06h
19bd 0606      ld      b,06h
19bf 07        rlca    
19c0 07        rlca    
19c1 07        rlca    
19c2 07        rlca    
19c3 07        rlca    
19c4 07        rlca    
19c5 07        rlca    
19c6 07        rlca    
19c7 08        ex      af,af'
19c8 08        ex      af,af'
19c9 08        ex      af,af'
19ca 08        ex      af,af'
19cb 08        ex      af,af'
19cc 08        ex      af,af'
19cd 08        ex      af,af'
19ce 08        ex      af,af'
19cf 09        add     hl,bc
19d0 09        add     hl,bc
19d1 09        add     hl,bc
19d2 09        add     hl,bc
19d3 09        add     hl,bc
19d4 09        add     hl,bc
19d5 09        add     hl,bc
19d6 09        add     hl,bc
19d7 ff        rst     38h
19d8 00        nop     
19d9 0b        dec     bc
19da 0b        dec     bc
19db 0b        dec     bc
19dc 0b        dec     bc
19dd 0c        inc     c
19de 0c        inc     c
19df 0c        inc     c
19e0 0c        inc     c
19e1 0d        dec     c
19e2 0d        dec     c
19e3 0d        dec     c
19e4 0d        dec     c
19e5 0e0e      ld      c,0eh
19e7 0e0e      ld      c,0eh
19e9 ff        rst     38h
19ea 00        nop     
19eb ff        rst     38h
19ec 00        nop     
19ed 00        nop     
19ee ff        rst     38h
19ef 00        nop     
19f0 00        nop     
19f1 ff        rst     38h
19f2 00        nop     
19f3 ff        rst     38h
19f4 00        nop     
19f5 0a        ld      a,(bc)
19f6 ff        rst     38h
19f7 00        nop     
19f8 00        nop     
19f9 ff        rst     38h
19fa 00        nop     
19fb 13        inc     de
19fc 13        inc     de
19fd 13        inc     de
19fe 13        inc     de
19ff 13        inc     de
1a00 13        inc     de
1a01 13        inc     de
1a02 13        inc     de
1a03 13        inc     de
1a04 13        inc     de
1a05 13        inc     de
1a06 13        inc     de
1a07 13        inc     de
1a08 13        inc     de
1a09 0f        rrca    
1a0a 0f        rrca    
1a0b 0f        rrca    
1a0c 0f        rrca    
1a0d 0f        rrca    
1a0e 0f        rrca    
1a0f 0f        rrca    
1a10 0f        rrca    
1a11 0f        rrca    
1a12 0f        rrca    
1a13 0f        rrca    
1a14 0f        rrca    
1a15 0f        rrca    
1a16 0f        rrca    
1a17 1010      djnz    1a29h            ; (+10h)
1a19 1010      djnz    1a2bh            ; (+10h)
1a1b 1010      djnz    1a2dh            ; (+10h)
1a1d 1010      djnz    1a2fh            ; (+10h)
1a1f 1010      djnz    1a31h            ; (+10h)
1a21 1010      djnz    1a33h            ; (+10h)
1a23 1010      djnz    1a35h            ; (+10h)
1a25 111111    ld      de,1111h
1a28 111111    ld      de,1111h
1a2b 111111    ld      de,1111h
1a2e 111111    ld      de,1111h
1a31 111112    ld      de,1211h
1a34 12        ld      (de),a
1a35 12        ld      (de),a
1a36 12        ld      (de),a
1a37 12        ld      (de),a
1a38 12        ld      (de),a
1a39 12        ld      (de),a
1a3a 12        ld      (de),a
1a3b 12        ld      (de),a
1a3c 12        ld      (de),a
1a3d 12        ld      (de),a
1a3e 12        ld      (de),a
1a3f 12        ld      (de),a
1a40 12        ld      (de),a
1a41 ff        rst     38h
1a42 00        nop     
1a43 19        add     hl,de
1a44 19        add     hl,de
1a45 19        add     hl,de
1a46 19        add     hl,de
1a47 19        add     hl,de
1a48 19        add     hl,de
1a49 1a        ld      a,(de)
1a4a 1a        ld      a,(de)
1a4b 1a        ld      a,(de)
1a4c 1a        ld      a,(de)
1a4d 1a        ld      a,(de)
1a4e 1a        ld      a,(de)
1a4f ff        rst     38h
1a50 00        nop     
1a51 18ff      jr      1a52h            ; (-01h)
1a53 00        nop     
1a54 16ff      ld      d,0ffh
1a56 00        nop     
1a57 02        ld      (bc),a
1a58 02        ld      (bc),a
1a59 02        ld      (bc),a
1a5a 02        ld      (bc),a
1a5b 02        ld      (bc),a
1a5c 02        ld      (bc),a
1a5d 02        ld      (bc),a
1a5e 02        ld      (bc),a
1a5f 02        ld      (bc),a
1a60 02        ld      (bc),a
1a61 02        ld      (bc),a
1a62 02        ld      (bc),a
1a63 02        ld      (bc),a
1a64 02        ld      (bc),a
1a65 02        ld      (bc),a
1a66 02        ld      (bc),a
1a67 010101    ld      bc,0101h
1a6a 010101    ld      bc,0101h
1a6d 010101    ld      bc,0101h
1a70 010101    ld      bc,0101h
1a73 010101    ld      bc,0101h
1a76 010101    ld      bc,0101h
1a79 02        ld      (bc),a
1a7a 02        ld      (bc),a
1a7b 02        ld      (bc),a
1a7c 02        ld      (bc),a
1a7d 02        ld      (bc),a
1a7e 02        ld      (bc),a
1a7f 02        ld      (bc),a
1a80 02        ld      (bc),a
1a81 02        ld      (bc),a
1a82 02        ld      (bc),a
1a83 02        ld      (bc),a
1a84 02        ld      (bc),a
1a85 02        ld      (bc),a
1a86 02        ld      (bc),a
1a87 02        ld      (bc),a
1a88 02        ld      (bc),a
1a89 03        inc     bc
1a8a 03        inc     bc
1a8b 03        inc     bc
1a8c 03        inc     bc
1a8d 03        inc     bc
1a8e 03        inc     bc
1a8f 03        inc     bc
1a90 03        inc     bc
1a91 03        inc     bc
1a92 03        inc     bc
1a93 03        inc     bc
1a94 03        inc     bc
1a95 03        inc     bc
1a96 03        inc     bc
1a97 03        inc     bc
1a98 03        inc     bc
1a99 ff        rst     38h
1a9a 221818    ld      (1818h),hl
1a9d 1818      jr      1ab7h            ; (+18h)
1a9f 1818      jr      1ab9h            ; (+18h)
1aa1 181d      jr      1ac0h            ; (+1dh)
1aa3 1d        dec     e
1aa4 1d        dec     e
1aa5 1d        dec     e
1aa6 1d        dec     e
1aa7 1e1e      ld      e,1eh
1aa9 1e1e      ld      e,1eh
1aab 1f        rra     
1aac 1f        rra     
1aad 1f        rra     
1aae 1f        rra     
1aaf ff        rst     38h
1ab0 12        ld      (de),a
1ab1 13        inc     de
1ab2 13        inc     de
1ab3 0f        rrca    
1ab4 0f        rrca    
1ab5 1010      djnz    1ac7h            ; (+10h)
1ab7 111112    ld      de,1211h
1aba 12        ld      (de),a
1abb ff        rst     38h
1abc 00        nop     
1abd 14        inc     d
1abe ff        rst     38h
1abf 00        nop     
1ac0 14        inc     d
1ac1 14        inc     d
1ac2 14        inc     d
1ac3 14        inc     d
1ac4 14        inc     d
1ac5 14        inc     d
1ac6 15        dec     d
1ac7 15        dec     d
1ac8 15        dec     d
1ac9 15        dec     d
1aca 15        dec     d
1acb 15        dec     d
1acc ff        rst     38h
1acd 00        nop     
1ace 00        nop     
1acf ff        rst     38h
1ad0 00        nop     
1ad1 17        rla     
1ad2 ff        rst     38h
1ad3 00        nop     
1ad4 1c        inc     e
1ad5 ff        rst     38h
1ad6 00        nop     
1ad7 1b        dec     de
1ad8 ff        rst     38h
1ad9 00        nop     
1ada 1f        rra     
1adb 1f        rra     
1adc 1f        rra     
1add 1e1e      ld      e,1eh
1adf 1e1e      ld      e,1eh
1ae1 1d        dec     e
1ae2 1d        dec     e
1ae3 1d        dec     e
1ae4 1d        dec     e
1ae5 1d        dec     e
1ae6 1818      jr      1b00h            ; (+18h)
1ae8 1818      jr      1b02h            ; (+18h)
1aea 1818      jr      1b04h            ; (+18h)
1aec 1818      jr      1b06h            ; (+18h)
1aee ff        rst     38h
1aef 12        ld      (de),a
1af0 1d        dec     e
1af1 ff        rst     38h
1af2 00        nop     
1af3 1eff      ld      e,0ffh
1af5 00        nop     
1af6 1f        rra     
1af7 ff        rst     38h
1af8 00        nop     
1af9 dd360d14  ld      (ix+0dh),14h
1afd dd360e18  ld      (ix+0eh),18h
1b01 cd9360    call    6093h
1b04 210300    ld      hl,0003h
1b07 2215d2    ld      (0d215h),hl
1b0a cd2633    call    3326h
1b0d 3812      jr      c,1b21h          ; (+12h)
1b0f cdd660    call    60d6h
1b12 380d      jr      c,1b21h          ; (+0dh)
1b14 3e10      ld      a,10h
1b16 cd7c33    call    337ch
1b19 af        xor     a
1b1a dd770f    ld      (ix+0fh),a
1b1d dd7710    ld      (ix+10h),a
1b20 c9        ret     

1b21 210052    ld      hl,5200h
1b24 cd830b    call    0b83h
1b27 dd360fa1  ld      (ix+0fh),0a1h
1b2b dd36105e  ld      (ix+10h),5eh
1b2f 3a24d2    ld      a,(0d224h)
1b32 e607      and     07h
1b34 fe05      cp      05h
1b36 d0        ret     nc

1b37 dd360fae  ld      (ix+0fh),0aeh
1b3b dd36105e  ld      (ix+10h),5eh
1b3f dd6e01    ld      l,(ix+01h)
1b42 dd6602    ld      h,(ix+02h)
1b45 dd7e03    ld      a,(ix+03h)
1b48 dd5e07    ld      e,(ix+07h)
1b4b dd5608    ld      d,(ix+08h)
1b4e 19        add     hl,de
1b4f dd8e09    adc     a,(ix+09h)
1b52 6c        ld      l,h
1b53 67        ld      h,a
1b54 220fd2    ld      (0d20fh),hl
1b57 dd6e04    ld      l,(ix+04h)
1b5a dd6605    ld      h,(ix+05h)
1b5d dd7e06    ld      a,(ix+06h)
1b60 ddcb187e  bit     7,(ix+18h)
1b64 200a      jr      nz,1b70h         ; (+0ah)
1b66 dd5e0a    ld      e,(ix+0ah)
1b69 dd560b    ld      d,(ix+0bh)
1b6c 19        add     hl,de
1b6d dd8e0c    adc     a,(ix+0ch)
1b70 6c        ld      l,h
1b71 67        ld      h,a
1b72 2211d2    ld      (0d211h),hl
1b75 210400    ld      hl,0004h
1b78 2213d2    ld      (0d213h),hl
1b7b 210000    ld      hl,0000h
1b7e 2215d2    ld      (0d215h),hl
1b81 3e5c      ld      a,5ch
1b83 cd5b2f    call    2f5bh
1b86 210c00    ld      hl,000ch
1b89 2213d2    ld      (0d213h),hl
1b8c 3e5e      ld      a,5eh
1b8e cd5b2f    call    2f5bh
1b91 ddcb184e  bit     1,(ix+18h)
1b95 c8        ret     z

1b96 dd6e0a    ld      l,(ix+0ah)
1b99 dd660b    ld      h,(ix+0bh)
1b9c dd7e0c    ld      a,(ix+0ch)
1b9f 114000    ld      de,0040h
1ba2 19        add     hl,de
1ba3 ce00      adc     a,00h
1ba5 dd750a    ld      (ix+0ah),l
1ba8 dd740b    ld      (ix+0bh),h
1bab dd770c    ld      (ix+0ch),a
1bae c9        ret     

1baf 54        ld      d,h
1bb0 56        ld      d,(hl)
1bb1 58        ld      e,b
1bb2 ff        rst     38h
1bb3 ff        rst     38h
1bb4 ff        rst     38h
1bb5 aa        xor     d
1bb6 ac        xor     h
1bb7 ae        xor     (hl)
1bb8 ff        rst     38h
1bb9 ff        rst     38h
1bba ff        rst     38h
1bbb ff        rst     38h
1bbc 54        ld      d,h
1bbd fe58      cp      58h
1bbf ff        rst     38h
1bc0 ff        rst     38h
1bc1 ff        rst     38h
1bc2 aa        xor     d
1bc3 ac        xor     h
1bc4 ae        xor     (hl)
1bc5 ff        rst     38h
1bc6 ff        rst     38h
1bc7 ff        rst     38h
1bc8 ff        rst     38h
1bc9 dd360d14  ld      (ix+0dh),14h
1bcd dd360e18  ld      (ix+0eh),18h
1bd1 cd9360    call    6093h
1bd4 210300    ld      hl,0003h
1bd7 2215d2    ld      (0d215h),hl
1bda cd2633    call    3326h
1bdd 3810      jr      c,1befh          ; (+10h)
1bdf cdd660    call    60d6h
1be2 380b      jr      c,1befh          ; (+0bh)
1be4 3ef0      ld      a,0f0h
1be6 3212d4    ld      (0d412h),a
1be9 3e02      ld      a,02h
1beb ef        rst     28h
1bec c30b5e    jp      5e0bh
1bef 218052    ld      hl,5280h
1bf2 c3165e    jp      5e16h
1bf5 dd360d14  ld      (ix+0dh),14h
1bf9 dd360e18  ld      (ix+0eh),18h
1bfd cd9360    call    6093h
1c00 2106d3    ld      hl,0d306h
1c03 cd680b    call    0b68h
1c06 7e        ld      a,(hl)
1c07 a1        and     c
1c08 2807      jr      z,1c11h          ; (+07h)
1c0a dd3600ff  ld      (ix+00h),0ffh
1c0e c30b5e    jp      5e0bh
1c11 210300    ld      hl,0003h
1c14 2215d2    ld      (0d215h),hl
1c17 cd2633    call    3326h
1c1a 382e      jr      c,1c4ah          ; (+2eh)
1c1c cdd660    call    60d6h
1c1f 3829      jr      c,1c4ah          ; (+29h)
1c21 ddcb1856  bit     2,(ix+18h)
1c25 c2065e    jp      nz,5e06h
1c28 2140d2    ld      hl,0d240h
1c2b 34        inc     (hl)
1c2c 2106d3    ld      hl,0d306h
1c2f cd680b    call    0b68h
1c32 7e        ld      a,(hl)
1c33 b1        or      c
1c34 77        ld      (hl),a
1c35 af        xor     a
1c36 dd770f    ld      (ix+0fh),a
1c39 dd7710    ld      (ix+10h),a
1c3c 3e09      ld      a,09h
1c3e ef        rst     28h
1c3f 3a38d2    ld      a,(0d238h)
1c42 fe1c      cp      1ch
1c44 d0        ret     nc

1c45 217ad2    ld      hl,0d27ah
1c48 34        inc     (hl)
1c49 c9        ret     

1c4a 3a38d2    ld      a,(0d238h)
1c4d fe04      cp      04h
1c4f 2812      jr      z,1c63h          ; (+12h)
1c51 fe09      cp      09h
1c53 2837      jr      z,1c8ch          ; (+37h)
1c55 fe0c      cp      0ch
1c57 284f      jr      z,1ca8h          ; (+4fh)
1c59 fe11      cp      11h
1c5b 285d      jr      z,1cbah          ; (+5dh)
1c5d 210053    ld      hl,5300h
1c60 c3165e    jp      5e16h
1c63 0e00      ld      c,00h
1c65 114000    ld      de,0040h
1c68 dd7e13    ld      a,(ix+13h)
1c6b fe3c      cp      3ch
1c6d 3804      jr      c,1c73h          ; (+04h)
1c6f 0d        dec     c
1c70 11c0ff    ld      de,0ffc0h
1c73 dd730a    ld      (ix+0ah),e
1c76 dd720b    ld      (ix+0bh),d
1c79 dd710c    ld      (ix+0ch),c
1c7c dd3413    inc     (ix+13h)
1c7f dd7e13    ld      a,(ix+13h)
1c82 fe50      cp      50h
1c84 38d7      jr      c,1c5dh          ; (-29h)
1c86 dd361328  ld      (ix+13h),28h
1c8a 18d1      jr      1c5dh            ; (-2fh)
1c8c ddcb18d6  set     2,(ix+18h)
1c90 2118d3    ld      hl,0d318h
1c93 cd680b    call    0b68h
1c96 7e        ld      a,(hl)
1c97 210052    ld      hl,5200h
1c9a a1        and     c
1c9b ca165e    jp      z,5e16h
1c9e ddcb1896  res     2,(ix+18h)
1ca2 210053    ld      hl,5300h
1ca5 c3165e    jp      5e16h
1ca8 ddcb18ce  set     1,(ix+18h)
1cac dd360780  ld      (ix+07h),80h
1cb0 dd360800  ld      (ix+08h),00h
1cb4 dd360900  ld      (ix+09h),00h
1cb8 18a3      jr      1c5dh            ; (-5dh)
1cba 3a7ad2    ld      a,(0d27ah)
1cbd fe11      cp      11h
1cbf 309c      jr      nc,1c5dh         ; (-64h)
1cc1 dd3600ff  ld      (ix+00h),0ffh
1cc5 1896      jr      1c5dh            ; (-6ah)
1cc7 dd360d14  ld      (ix+0dh),14h
1ccb dd360e18  ld      (ix+0eh),18h
1ccf cd9360    call    6093h
1cd2 210300    ld      hl,0003h
1cd5 2215d2    ld      (0d215h),hl
1cd8 cd2633    call    3326h
1cdb 380c      jr      c,1ce9h          ; (+0ch)
1cdd cdd660    call    60d6h
1ce0 3807      jr      c,1ce9h          ; (+07h)
1ce2 fdcb06ee  set     5,(iy+06h)
1ce6 c30b5e    jp      5e0bh
1ce9 218053    ld      hl,5380h
1cec c3165e    jp      5e16h
1cef dd360d14  ld      (ix+0dh),14h
1cf3 dd360e18  ld      (ix+0eh),18h
1cf7 cd9360    call    6093h
1cfa 210300    ld      hl,0003h
1cfd 2215d2    ld      (0d215h),hl
1d00 cd2633    call    3326h
1d03 381d      jr      c,1d22h          ; (+1dh)
1d05 cdd660    call    60d6h
1d08 3818      jr      c,1d22h          ; (+18h)
1d0a fdcb08c6  set     0,(iy+08h)
1d0e 3ef0      ld      a,0f0h
1d10 3287d2    ld      (0d287h),a
1d13 3e18      ld      a,18h
1d15 32f4d2    ld      (0d2f4h),a
1d18 af        xor     a
1d19 32f5d2    ld      (0d2f5h),a
1d1c 3e08      ld      a,08h
1d1e df        rst     18h
1d1f c30b5e    jp      5e0bh
1d22 210054    ld      hl,5400h
1d25 c3165e    jp      5e16h
1d28 dd360d14  ld      (ix+0dh),14h
1d2c dd360e18  ld      (ix+0eh),18h
1d30 cd9360    call    6093h
1d33 210300    ld      hl,0003h
1d36 2215d2    ld      (0d215h),hl
1d39 cd2633    call    3326h
1d3c 3835      jr      c,1d73h          ; (+35h)
1d3e cdd660    call    60d6h
1d41 3830      jr      c,1d73h          ; (+30h)
1d43 2112d3    ld      hl,0d312h
1d46 cd680b    call    0b68h
1d49 7e        ld      a,(hl)
1d4a b1        or      c
1d4b 77        ld      (hl),a
1d4c 3a38d2    ld      a,(0d238h)
1d4f 87        add     a,a
1d50 5f        ld      e,a
1d51 1600      ld      d,00h
1d53 212fd3    ld      hl,0d32fh
1d56 19        add     hl,de
1d57 eb        ex      de,hl
1d58 dd6e02    ld      l,(ix+02h)
1d5b dd6603    ld      h,(ix+03h)
1d5e 29        add     hl,hl
1d5f 29        add     hl,hl
1d60 29        add     hl,hl
1d61 7c        ld      a,h
1d62 12        ld      (de),a
1d63 13        inc     de
1d64 dd6e05    ld      l,(ix+05h)
1d67 dd6606    ld      h,(ix+06h)
1d6a 29        add     hl,hl
1d6b 29        add     hl,hl
1d6c 29        add     hl,hl
1d6d 7c        ld      a,h
1d6e 3d        dec     a
1d6f 12        ld      (de),a
1d70 c30b5e    jp      5e0bh
1d73 210055    ld      hl,5500h
1d76 c3165e    jp      5e16h
1d79 dd360d14  ld      (ix+0dh),14h
1d7d dd360e18  ld      (ix+0eh),18h
1d81 cd9360    call    6093h
1d84 210300    ld      hl,0003h
1d87 2215d2    ld      (0d215h),hl
1d8a cd2633    call    3326h
1d8d 380c      jr      c,1d9bh          ; (+0ch)
1d8f cdd660    call    60d6h
1d92 3807      jr      c,1d9bh          ; (+07h)
1d94 fdcb09de  set     3,(iy+09h)
1d98 c30b5e    jp      5e0bh
1d9b 218055    ld      hl,5580h
1d9e c3165e    jp      5e16h
1da1 ddcb1846  bit     0,(ix+18h)
1da5 c0        ret     nz

1da6 3ad5d2    ld      a,(0d2d5h)
1da9 a7        and     a
1daa 2013      jr      nz,1dbfh         ; (+13h)
1dac 010000    ld      bc,0000h
1daf 59        ld      e,c
1db0 50        ld      d,b
1db1 cdd330    call    30d3h
1db4 111600    ld      de,0016h
1db7 011600    ld      bc,0016h
1dba 7e        ld      a,(hl)
1dbb feb0      cp      0b0h
1dbd 2806      jr      z,1dc5h          ; (+06h)
1dbf 110400    ld      de,0004h
1dc2 010000    ld      bc,0000h
1dc5 dd6e02    ld      l,(ix+02h)
1dc8 dd6603    ld      h,(ix+03h)
1dcb 19        add     hl,de
1dcc dd7502    ld      (ix+02h),l
1dcf dd7403    ld      (ix+03h),h
1dd2 dd6e05    ld      l,(ix+05h)
1dd5 dd6606    ld      h,(ix+06h)
1dd8 09        add     hl,bc
1dd9 dd7505    ld      (ix+05h),l
1ddc dd7406    ld      (ix+06h),h
1ddf ddcb18c6  set     0,(ix+18h)
1de3 c9        ret     

1de4 210408    ld      hl,0804h
1de7 220fd2    ld      (0d20fh),hl
1dea 3a15d4    ld      a,(0d415h)
1ded e601      and     01h
1def 2051      jr      nz,1e42h         ; (+51h)
1df1 ed5bffd3  ld      de,(0d3ffh)
1df5 dd4e02    ld      c,(ix+02h)
1df8 dd4603    ld      b,(ix+03h)
1dfb 21f6ff    ld      hl,0fff6h
1dfe 09        add     hl,bc
1dff a7        and     a
1e00 ed52      sbc     hl,de
1e02 3062      jr      nc,1e66h         ; (+62h)
1e04 211000    ld      hl,0010h
1e07 09        add     hl,bc
1e08 a7        and     a
1e09 ed52      sbc     hl,de
1e0b 3859      jr      c,1e66h          ; (+59h)
1e0d 3a15d4    ld      a,(0d415h)
1e10 e604      and     04h
1e12 2027      jr      nz,1e3bh         ; (+27h)
1e14 dd6e05    ld      l,(ix+05h)
1e17 dd6606    ld      h,(ix+06h)
1e1a 3a0bd4    ld      a,(0d40bh)
1e1d 4f        ld      c,a
1e1e af        xor     a
1e1f 47        ld      b,a
1e20 ed42      sbc     hl,bc
1e22 2202d4    ld      (0d402h),hl
1e25 3288d2    ld      (0d288h),a
1e28 3ae9d2    ld      a,(0d2e9h)
1e2b 2ae7d2    ld      hl,(0d2e7h)
1e2e 2207d4    ld      (0d407h),hl
1e31 3209d4    ld      (0d409h),a
1e34 2115d4    ld      hl,0d415h
1e37 cbfe      set     7,(hl)
1e39 37        scf     
1e3a c9        ret     

1e3b 3a09d4    ld      a,(0d409h)
1e3e a7        and     a
1e3f fa3961    jp      m,6139h
1e42 cd9830    call    3098h
1e45 a7        and     a
1e46 c9        ret     

1e47 dd360a80  ld      (ix+0ah),80h
1e4b dd360bfe  ld      (ix+0bh),0feh
1e4f dd360cff  ld      (ix+0ch),0ffh
1e53 210004    ld      hl,0400h
1e56 af        xor     a
1e57 2207d4    ld      (0d407h),hl
1e5a 3209d4    ld      (0d409h),a
1e5d 3288d2    ld      (0d288h),a
1e60 ddcb18ce  set     1,(ix+18h)
1e64 37        scf     
1e65 c9        ret     

1e66 2affd3    ld      hl,(0d3ffh)
1e69 110800    ld      de,0008h
1e6c 19        add     hl,de
1e6d eb        ex      de,hl
1e6e dd6e02    ld      l,(ix+02h)
1e71 dd6603    ld      h,(ix+03h)
1e74 010a00    ld      bc,000ah
1e77 09        add     hl,bc
1e78 01f3ff    ld      bc,0fff3h
1e7b a7        and     a
1e7c ed52      sbc     hl,de
1e7e 3003      jr      nc,1e83h         ; (+03h)
1e80 011500    ld      bc,0015h
1e83 dd6e02    ld      l,(ix+02h)
1e86 dd6603    ld      h,(ix+03h)
1e89 09        add     hl,bc
1e8a 22ffd3    ld      (0d3ffh),hl
1e8d af        xor     a
1e8e 32fed3    ld      (0d3feh),a
1e91 6f        ld      l,a
1e92 67        ld      h,a
1e93 3204d4    ld      (0d404h),a
1e96 2205d4    ld      (0d405h),hl
1e99 37        scf     
1e9a c9        ret     

1e9b 210cd3    ld      hl,0d30ch
1e9e cd680b    call    0b68h
1ea1 7e        ld      a,(hl)
1ea2 a1        and     c
1ea3 2032      jr      nz,1ed7h         ; (+32h)
1ea5 dd360d0c  ld      (ix+0dh),0ch
1ea9 dd360e11  ld      (ix+0eh),11h
1ead cd9360    call    6093h
1eb0 af        xor     a
1eb1 dd770f    ld      (ix+0fh),a
1eb4 dd7710    ld      (ix+10h),a
1eb7 210202    ld      hl,0202h
1eba 2215d2    ld      (0d215h),hl
1ebd cd2633    call    3326h
1ec0 381a      jr      c,1edch          ; (+1ah)
1ec2 210cd3    ld      hl,0d30ch
1ec5 cd680b    call    0b68h
1ec8 7e        ld      a,(hl)
1ec9 b1        or      c
1eca 77        ld      (hl),a
1ecb 2179d2    ld      hl,0d279h
1ece 34        inc     (hl)
1ecf 3efe      ld      a,0feh
1ed1 3285d2    ld      (0d285h),a
1ed4 3e14      ld      a,14h
1ed6 df        rst     18h
1ed7 dd3600ff  ld      (ix+00h),0ffh
1edb c9        ret     

1edc 3a24d2    ld      a,(0d224h)
1edf 0f        rrca    
1ee0 3808      jr      c,1eeah          ; (+08h)
1ee2 dd360ffb  ld      (ix+0fh),0fbh
1ee6 dd361061  ld      (ix+10h),61h
1eea dd6e0a    ld      l,(ix+0ah)
1eed dd660b    ld      h,(ix+0bh)
1ef0 dd7e0c    ld      a,(ix+0ch)
1ef3 112000    ld      de,0020h
1ef6 19        add     hl,de
1ef7 ce00      adc     a,00h
1ef9 dd750a    ld      (ix+0ah),l
1efc dd740b    ld      (ix+0bh),h
1eff dd770c    ld      (ix+0ch),a
1f02 218054    ld      hl,5480h
1f05 cd830b    call    0b83h
1f08 c9        ret     

1f09 5c        ld      e,h
1f0a 5e        ld      e,(hl)
1f0b ff        rst     38h
1f0c ff        rst     38h
1f0d ff        rst     38h
1f0e ff        rst     38h
1f0f ff        rst     38h
1f10 dd360d18  ld      (ix+0dh),18h
1f14 dd360e30  ld      (ix+0eh),30h
1f18 ddcb1146  bit     0,(ix+11h)
1f1c 2022      jr      nz,1f40h         ; (+22h)
1f1e fdcb06be  res     7,(iy+06h)
1f22 fdcb059e  res     3,(iy+05h)
1f26 21b83a    ld      hl,3ab8h
1f29 110020    ld      de,2000h
1f2c 3e09      ld      a,09h
1f2e cdce03    call    03ceh
1f31 3e0e      ld      a,0eh
1f33 322dd2    ld      (0d22dh),a
1f36 3aa9d2    ld      a,(0d2a9h)
1f39 32aad2    ld      (0d2aah),a
1f3c ddcb11c6  set     0,(ix+11h)
1f40 2a54d2    ld      hl,(0d254h)
1f43 226dd2    ld      (0d26dh),hl
1f46 dd6e02    ld      l,(ix+02h)
1f49 dd6603    ld      h,(ix+03h)
1f4c 1190ff    ld      de,0ff90h
1f4f 19        add     hl,de
1f50 226fd2    ld      (0d26fh),hl
1f53 217000    ld      hl,0070h
1f56 2265d2    ld      (0d265h),hl
1f59 217800    ld      hl,0078h
1f5c 2267d2    ld      (0d267h),hl
1f5f dd4e13    ld      c,(ix+13h)
1f62 3a15d4    ld      a,(0d415h)
1f65 e680      and     80h
1f67 dd7713    ld      (ix+13h),a
1f6a 2834      jr      z,1fa0h          ; (+34h)
1f6c b9        cp      c
1f6d 2831      jr      z,1fa0h          ; (+31h)
1f6f ddcb187e  bit     7,(ix+18h)
1f73 282b      jr      z,1fa0h          ; (+2bh)
1f75 dd5e02    ld      e,(ix+02h)
1f78 dd5603    ld      d,(ix+03h)
1f7b 2affd3    ld      hl,(0d3ffh)
1f7e a7        and     a
1f7f ed52      sbc     hl,de
1f81 cb7c      bit     7,h
1f83 2807      jr      z,1f8ch          ; (+07h)
1f85 7d        ld      a,l
1f86 2f        cpl     
1f87 6f        ld      l,a
1f88 7c        ld      a,h
1f89 2f        cpl     
1f8a 67        ld      h,a
1f8b 23        inc     hl
1f8c 116400    ld      de,0064h
1f8f a7        and     a
1f90 ed52      sbc     hl,de
1f92 300c      jr      nc,1fa0h         ; (+0ch)
1f94 dd360a00  ld      (ix+0ah),00h
1f98 dd360bfe  ld      (ix+0bh),0feh
1f9c dd360cff  ld      (ix+0ch),0ffh
1fa0 dd6e0a    ld      l,(ix+0ah)
1fa3 dd660b    ld      h,(ix+0bh)
1fa6 dd7e0c    ld      a,(ix+0ch)
1fa9 111a00    ld      de,001ah
1fac 19        add     hl,de
1fad ce00      adc     a,00h
1faf dd750a    ld      (ix+0ah),l
1fb2 dd740b    ld      (ix+0bh),h
1fb5 dd770c    ld      (ix+0ch),a
1fb8 ddcb115e  bit     3,(ix+11h)
1fbc 2072      jr      nz,2030h         ; (+72h)
1fbe ddcb1156  bit     2,(ix+11h)
1fc2 2820      jr      z,1fe4h          ; (+20h)
1fc4 ddcb187e  bit     7,(ix+18h)
1fc8 2866      jr      z,2030h          ; (+66h)
1fca 3e09      ld      a,09h
1fcc df        rst     18h
1fcd 3e0c      ld      a,0ch
1fcf ef        rst     28h
1fd0 ddcb1196  res     2,(ix+11h)
1fd4 ddcb11de  set     3,(ix+11h)
1fd8 3ea0      ld      a,0a0h
1fda 3283d2    ld      (0d283h),a
1fdd fdcb06ce  set     1,(iy+06h)
1fe1 c32263    jp      6322h
1fe4 210a0a    ld      hl,0a0ah
1fe7 2215d2    ld      (0d215h),hl
1fea cd2633    call    3326h
1fed 3841      jr      c,2030h          ; (+41h)
1fef ddcb0c7e  bit     7,(ix+0ch)
1ff3 203b      jr      nz,2030h         ; (+3bh)
1ff5 ddcb114e  bit     1,(ix+11h)
1ff9 2035      jr      nz,2030h         ; (+35h)
1ffb ed5b04d4  ld      de,(0d404h)
1fff cb7a      bit     7,d
2001 2807      jr      z,200ah          ; (+07h)
2003 7b        ld      a,e
2004 2f        cpl     
2005 5f        ld      e,a
2006 7a        ld      a,d
2007 2f        cpl     
2008 57        ld      d,a
2009 13        inc     de
200a ed5301d3  ld      (0d301h),de
200e 210003    ld      hl,0300h
2011 a7        and     a
2012 ed52      sbc     hl,de
2014 3003      jr      nc,2019h         ; (+03h)
2016 110003    ld      de,0300h
2019 eb        ex      de,hl
201a 29        add     hl,hl
201b dd7514    ld      (ix+14h),l
201e dd7415    ld      (ix+15h),h
2021 dd361200  ld      (ix+12h),00h
2025 ddcb11ce  set     1,(ix+11h)
2029 fdcb069e  res     3,(iy+06h)
202d 3e0b      ld      a,0bh
202f ef        rst     28h
2030 11b264    ld      de,64b2h
2033 ddcb114e  bit     1,(ix+11h)
2037 c2f163    jp      nz,63f1h
203a ddcb1156  bit     2,(ix+11h)
203e c2f163    jp      nz,63f1h
2041 11cc64    ld      de,64cch
2044 ddcb115e  bit     3,(ix+11h)
2048 caf163    jp      z,63f1h
204b 3a38d2    ld      a,(0d238h)
204e fe0c      cp      0ch
2050 380b      jr      c,205dh          ; (+0bh)
2052 fe1c      cp      1ch
2054 3813      jr      c,2069h          ; (+13h)
2056 11e964    ld      de,64e9h
2059 0e01      ld      c,01h
205b 1828      jr      2085h            ; (+28h)
205d 110365    ld      de,6503h
2060 0e04      ld      c,04h
2062 3aaad2    ld      a,(0d2aah)
2065 fe50      cp      50h
2067 301c      jr      nc,2085h         ; (+1ch)
2069 3a00d3    ld      a,(0d300h)
206c fe02      cp      02h
206e 2007      jr      nz,2077h         ; (+07h)
2070 111d65    ld      de,651dh
2073 0e03      ld      c,03h
2075 180e      jr      2085h            ; (+0eh)
2077 11cf64    ld      de,64cfh
207a 0e02      ld      c,02h
207c fe03      cp      03h
207e 3005      jr      nc,2085h         ; (+05h)
2080 11e964    ld      de,64e9h
2083 0e01      ld      c,01h
2085 79        ld      a,c
2086 3282d2    ld      (0d282h),a
2089 d5        push    de
208a ed5b01d3  ld      de,(0d301h)
208e 7a        ld      a,d
208f 21cf65    ld      hl,65cfh
2092 fe04      cp      04h
2094 3029      jr      nc,20bfh         ; (+29h)
2096 a7        and     a
2097 2865      jr      z,20feh          ; (+65h)
2099 21c765    ld      hl,65c7h
209c 3d        dec     a
209d 200e      jr      nz,20adh         ; (+0eh)
209f 7b        ld      a,e
20a0 fe60      cp      60h
20a2 385a      jr      c,20feh          ; (+5ah)
20a4 fea0      cp      0a0h
20a6 3817      jr      c,20bfh          ; (+17h)
20a8 21df65    ld      hl,65dfh
20ab 1812      jr      20bfh            ; (+12h)
20ad 21cf65    ld      hl,65cfh
20b0 3d        dec     a
20b1 204b      jr      nz,20feh         ; (+4bh)
20b3 7b        ld      a,e
20b4 fe80      cp      80h
20b6 3807      jr      c,20bfh          ; (+07h)
20b8 fea0      cp      0a0h
20ba 3042      jr      nc,20feh         ; (+42h)
20bc 21d765    ld      hl,65d7h
20bf 5e        ld      e,(hl)
20c0 23        inc     hl
20c1 56        ld      d,(hl)
20c2 23        inc     hl
20c3 4e        ld      c,(hl)
20c4 23        inc     hl
20c5 46        ld      b,(hl)
20c6 23        inc     hl
20c7 e5        push    hl
20c8 d5        push    de
20c9 dd6e05    ld      l,(ix+05h)
20cc dd6606    ld      h,(ix+06h)
20cf 11f2ff    ld      de,0fff2h
20d2 19        add     hl,de
20d3 ed5b57d2  ld      de,(0d257h)
20d7 a7        and     a
20d8 ed52      sbc     hl,de
20da eb        ex      de,hl
20db dd6e02    ld      l,(ix+02h)
20de dd6603    ld      h,(ix+03h)
20e1 09        add     hl,bc
20e2 ed4b54d2  ld      bc,(0d254h)
20e6 a7        and     a
20e7 ed42      sbc     hl,bc
20e9 c1        pop     bc
20ea c4052f    call    nz,2f05h
20ed e1        pop     hl
20ee 4e        ld      c,(hl)
20ef 23        inc     hl
20f0 5e        ld      e,(hl)
20f1 23        inc     hl
20f2 56        ld      d,(hl)
20f3 ddcb117e  bit     7,(ix+11h)
20f7 cca833    call    z,33a8h
20fa ddcb11fe  set     7,(ix+11h)
20fe d1        pop     de
20ff dd6e12    ld      l,(ix+12h)
2102 2600      ld      h,00h
2104 19        add     hl,de
2105 7e        ld      a,(hl)
2106 feff      cp      0ffh
2108 2008      jr      nz,2112h         ; (+08h)
210a 23        inc     hl
210b 7e        ld      a,(hl)
210c dd7712    ld      (ix+12h),a
210f c3f163    jp      63f1h
2112 6f        ld      l,a
2113 2600      ld      h,00h
2115 29        add     hl,hl
2116 5d        ld      e,l
2117 54        ld      d,h
2118 29        add     hl,hl
2119 29        add     hl,hl
211a 29        add     hl,hl
211b 19        add     hl,de
211c 113765    ld      de,6537h
211f 19        add     hl,de
2120 dd750f    ld      (ix+0fh),l
2123 dd7410    ld      (ix+10h),h
2126 ddcb114e  bit     1,(ix+11h)
212a 2004      jr      nz,2130h         ; (+04h)
212c dd3412    inc     (ix+12h)
212f c9        ret     

2130 dd7e14    ld      a,(ix+14h)
2133 dd8616    add     a,(ix+16h)
2136 dd7716    ld      (ix+16h),a
2139 dd7e15    ld      a,(ix+15h)
213c f5        push    af
213d dd8e17    adc     a,(ix+17h)
2140 dd7717    ld      (ix+17h),a
2143 f1        pop     af
2144 dd8e12    adc     a,(ix+12h)
2147 fe18      cp      18h
2149 3801      jr      c,214ch          ; (+01h)
214b af        xor     a
214c dd7712    ld      (ix+12h),a
214f dd5e0a    ld      e,(ix+0ah)
2152 dd560b    ld      d,(ix+0bh)
2155 dd7e0c    ld      a,(ix+0ch)
2158 a7        and     a
2159 f25464    jp      p,6454h
215c 2100fc    ld      hl,0fc00h
215f ed52      sbc     hl,de
2161 d0        ret     nc

2162 eb        ex      de,hl
2163 dd5e14    ld      e,(ix+14h)
2166 dd5615    ld      d,(ix+15h)
2169 4b        ld      c,e
216a 42        ld      b,d
216b cb3a      srl     d
216d cb1b      rr      e
216f cb3a      srl     d
2171 cb1b      rr      e
2173 cb3a      srl     d
2175 cb1b      rr      e
2177 cb3a      srl     d
2179 cb1b      rr      e
217b cb3a      srl     d
217d cb1b      rr      e
217f a7        and     a
2180 ed52      sbc     hl,de
2182 de00      sbc     a,00h
2184 dd750a    ld      (ix+0ah),l
2187 dd740b    ld      (ix+0bh),h
218a dd770c    ld      (ix+0ch),a
218d dd6e05    ld      l,(ix+05h)
2190 dd6606    ld      h,(ix+06h)
2193 af        xor     a
2194 110800    ld      de,0008h
2197 ed52      sbc     hl,de
2199 380f      jr      c,21aah          ; (+0fh)
219b 69        ld      l,c
219c 60        ld      h,b
219d 111000    ld      de,0010h
21a0 af        xor     a
21a1 ed52      sbc     hl,de
21a3 dd7514    ld      (ix+14h),l
21a6 dd7415    ld      (ix+15h),h
21a9 d0        ret     nc

21aa dd770a    ld      (ix+0ah),a
21ad dd770b    ld      (ix+0bh),a
21b0 dd770c    ld      (ix+0ch),a
21b3 ddcb118e  res     1,(ix+11h)
21b7 ddcb11d6  set     2,(ix+11h)
21bb dd361200  ld      (ix+12h),00h
21bf c9        ret     

21c0 00        nop     
21c1 00        nop     
21c2 00        nop     
21c3 00        nop     
21c4 00        nop     
21c5 00        nop     
21c6 03        inc     bc
21c7 03        inc     bc
21c8 03        inc     bc
21c9 03        inc     bc
21ca 03        inc     bc
21cb 03        inc     bc
21cc 02        ld      (bc),a
21cd 02        ld      (bc),a
21ce 02        ld      (bc),a
21cf 02        ld      (bc),a
21d0 02        ld      (bc),a
21d1 02        ld      (bc),a
21d2 04        inc     b
21d3 04        inc     b
21d4 04        inc     b
21d5 04        inc     b
21d6 04        inc     b
21d7 04        inc     b
21d8 ff        rst     38h
21d9 00        nop     
21da 00        nop     
21db ff        rst     38h
21dc 00        nop     
21dd 00        nop     
21de 00        nop     
21df 00        nop     
21e0 00        nop     
21e1 00        nop     
21e2 00        nop     
21e3 03        inc     bc
21e4 03        inc     bc
21e5 03        inc     bc
21e6 03        inc     bc
21e7 03        inc     bc
21e8 03        inc     bc
21e9 02        ld      (bc),a
21ea 02        ld      (bc),a
21eb 02        ld      (bc),a
21ec 02        ld      (bc),a
21ed 02        ld      (bc),a
21ee 02        ld      (bc),a
21ef 010101    ld      bc,0101h
21f2 010101    ld      bc,0101h
21f5 ff        rst     38h
21f6 12        ld      (de),a
21f7 00        nop     
21f8 00        nop     
21f9 00        nop     
21fa 00        nop     
21fb 00        nop     
21fc 00        nop     
21fd 03        inc     bc
21fe 03        inc     bc
21ff 03        inc     bc
2200 03        inc     bc
2201 03        inc     bc
2202 03        inc     bc
2203 02        ld      (bc),a
2204 02        ld      (bc),a
2205 02        ld      (bc),a
2206 02        ld      (bc),a
2207 02        ld      (bc),a
2208 02        ld      (bc),a
2209 05        dec     b
220a 05        dec     b
220b 05        dec     b
220c 05        dec     b
220d 05        dec     b
220e 05        dec     b
220f ff        rst     38h
2210 12        ld      (de),a
2211 00        nop     
2212 00        nop     
2213 00        nop     
2214 00        nop     
2215 00        nop     
2216 00        nop     
2217 03        inc     bc
2218 03        inc     bc
2219 03        inc     bc
221a 03        inc     bc
221b 03        inc     bc
221c 03        inc     bc
221d 02        ld      (bc),a
221e 02        ld      (bc),a
221f 02        ld      (bc),a
2220 02        ld      (bc),a
2221 02        ld      (bc),a
2222 02        ld      (bc),a
2223 0606      ld      b,06h
2225 0606      ld      b,06h
2227 0606      ld      b,06h
2229 ff        rst     38h
222a 12        ld      (de),a
222b 00        nop     
222c 00        nop     
222d 00        nop     
222e 00        nop     
222f 00        nop     
2230 00        nop     
2231 03        inc     bc
2232 03        inc     bc
2233 03        inc     bc
2234 03        inc     bc
2235 03        inc     bc
2236 03        inc     bc
2237 02        ld      (bc),a
2238 02        ld      (bc),a
2239 02        ld      (bc),a
223a 02        ld      (bc),a
223b 02        ld      (bc),a
223c 02        ld      (bc),a
223d 07        rlca    
223e 07        rlca    
223f 07        rlca    
2240 07        rlca    
2241 07        rlca    
2242 07        rlca    
2243 ff        rst     38h
2244 12        ld      (de),a
2245 4e        ld      c,(hl)
2246 50        ld      d,b
2247 52        ld      d,d
2248 54        ld      d,h
2249 ff        rst     38h
224a ff        rst     38h
224b 6e        ld      l,(hl)
224c 70        ld      (hl),b
224d 72        ld      (hl),d
224e 74        ld      (hl),h
224f ff        rst     38h
2250 ff        rst     38h
2251 fe42      cp      42h
2253 44        ld      b,h
2254 ff        rst     38h
2255 ff        rst     38h
2256 ff        rst     38h
2257 08        ex      af,af'
2258 0a        ld      a,(bc)
2259 0c        inc     c
225a 0eff      ld      c,0ffh
225c ff        rst     38h
225d 282a      jr      z,2289h          ; (+2ah)
225f 2c        inc     l
2260 2eff      ld      l,0ffh
2262 ff        rst     38h
2263 fe42      cp      42h
2265 44        ld      b,h
2266 ff        rst     38h
2267 ff        rst     38h
2268 ff        rst     38h
2269 fe12      cp      12h
226b 14        inc     d
226c ff        rst     38h
226d ff        rst     38h
226e ff        rst     38h
226f fe32      cp      32h
2271 34        inc     (hl)
2272 ff        rst     38h
2273 ff        rst     38h
2274 ff        rst     38h
2275 fe42      cp      42h
2277 44        ld      b,h
2278 ff        rst     38h
2279 ff        rst     38h
227a ff        rst     38h
227b 1618      ld      d,18h
227d 1a        ld      a,(de)
227e 1c        inc     e
227f ff        rst     38h
2280 ff        rst     38h
2281 3638      ld      (hl),38h
2283 3a3cff    ld      a,(0ff3ch)
2286 ff        rst     38h
2287 fe42      cp      42h
2289 44        ld      b,h
228a ff        rst     38h
228b ff        rst     38h
228c ff        rst     38h
228d 56        ld      d,(hl)
228e 58        ld      e,b
228f 5a        ld      e,d
2290 5c        ld      e,h
2291 ff        rst     38h
2292 ff        rst     38h
2293 76        halt    
2294 78        ld      a,b
2295 7a        ld      a,d
2296 7c        ld      a,h
2297 ff        rst     38h
2298 ff        rst     38h
2299 fe42      cp      42h
229b 44        ld      b,h
229c ff        rst     38h
229d ff        rst     38h
229e ff        rst     38h
229f 00        nop     
22a0 02        ld      (bc),a
22a1 04        inc     b
22a2 06ff      ld      b,0ffh
22a4 ff        rst     38h
22a5 2022      jr      nz,22c9h         ; (+22h)
22a7 24        inc     h
22a8 26ff      ld      h,0ffh
22aa ff        rst     38h
22ab fe42      cp      42h
22ad 44        ld      b,h
22ae ff        rst     38h
22af ff        rst     38h
22b0 ff        rst     38h
22b1 4e        ld      c,(hl)
22b2 4a        ld      c,d
22b3 4c        ld      c,h
22b4 54        ld      d,h
22b5 ff        rst     38h
22b6 ff        rst     38h
22b7 6e        ld      l,(hl)
22b8 6a        ld      l,d
22b9 6c        ld      l,h
22ba 74        ld      (hl),h
22bb ff        rst     38h
22bc ff        rst     38h
22bd fe42      cp      42h
22bf 44        ld      b,h
22c0 ff        rst     38h
22c1 ff        rst     38h
22c2 ff        rst     38h
22c3 4e        ld      c,(hl)
22c4 46        ld      b,(hl)
22c5 48        ld      c,b
22c6 54        ld      d,h
22c7 ff        rst     38h
22c8 ff        rst     38h
22c9 6e        ld      l,(hl)
22ca 66        ld      h,(hl)
22cb 68        ld      l,b
22cc 74        ld      (hl),h
22cd ff        rst     38h
22ce ff        rst     38h
22cf fe42      cp      42h
22d1 44        ld      b,h
22d2 ff        rst     38h
22d3 ff        rst     38h
22d4 ff        rst     38h
22d5 e7        rst     20h
22d6 65        ld      h,l
22d7 04        inc     b
22d8 00        nop     
22d9 00        nop     
22da 1000      djnz    22dch            ; (+00h)
22dc 00        nop     
22dd ee65      xor     65h
22df 00        nop     
22e0 00        nop     
22e1 00        nop     
22e2 00        nop     
22e3 1000      djnz    22e5h            ; (+00h)
22e5 f5        push    af
22e6 65        ld      h,l
22e7 feff      cp      0ffh
22e9 010000    ld      bc,0000h
22ec 00        nop     
22ed fc6502    call    m,0265h
22f0 00        nop     
22f1 00        nop     
22f2 00        nop     
22f3 0100fe    ld      bc,0fe00h
22f6 60        ld      h,b
22f7 ff        rst     38h
22f8 ff        rst     38h
22f9 ff        rst     38h
22fa ff        rst     38h
22fb ff        rst     38h
22fc fe60      cp      60h
22fe 62        ld      h,d
22ff ff        rst     38h
2300 ff        rst     38h
2301 ff        rst     38h
2302 ff        rst     38h
2303 fe60      cp      60h
2305 62        ld      h,d
2306 64        ld      h,h
2307 ff        rst     38h
2308 ff        rst     38h
2309 ff        rst     38h
230a fe60      cp      60h
230c 64        ld      h,h
230d ff        rst     38h
230e ff        rst     38h
230f ff        rst     38h
2310 ff        rst     38h
2311 dd360d10  ld      (ix+0dh),10h
2315 dd360e1f  ld      (ix+0eh),1fh
2319 dd5e12    ld      e,(ix+12h)
231c 1600      ld      d,00h
231e 21da66    ld      hl,66dah
2321 19        add     hl,de
2322 2215d2    ld      (0d215h),hl
2325 7e        ld      a,(hl)
2326 a7        and     a
2327 2007      jr      nz,2330h         ; (+07h)
2329 dd7712    ld      (ix+12h),a
232c 5f        ld      e,a
232d c31066    jp      6610h
2330 3d        dec     a
2331 2008      jr      nz,233bh         ; (+08h)
2333 0e00      ld      c,00h
2335 61        ld      h,c
2336 2e28      ld      l,28h
2338 c38466    jp      6684h
233b 3d        dec     a
233c 2008      jr      nz,2346h         ; (+08h)
233e 0eff      ld      c,0ffh
2340 21d8ff    ld      hl,0ffd8h
2343 c38466    jp      6684h
2346 3d        dec     a
2347 2007      jr      nz,2350h         ; (+07h)
2349 0e00      ld      c,00h
234b 69        ld      l,c
234c 61        ld      h,c
234d c38466    jp      6684h
2350 dd7e11    ld      a,(ix+11h)
2353 fe20      cp      20h
2355 c28d66    jp      nz,668dh
2358 21ffff    ld      hl,0ffffh
235b 2213d2    ld      (0d213h),hl
235e 21fcff    ld      hl,0fffch
2361 2215d2    ld      (0d215h),hl
2364 cdb67c    call    7cb6h
2367 da8d66    jp      c,668dh
236a 110000    ld      de,0000h
236d 4b        ld      c,e
236e 42        ld      b,d
236f cd5bac    call    0ac5bh
2372 210100    ld      hl,0001h
2375 2213d2    ld      (0d213h),hl
2378 21fcff    ld      hl,0fffch
237b 2215d2    ld      (0d215h),hl
237e cdb67c    call    7cb6h
2381 3818      jr      c,239bh          ; (+18h)
2383 110e00    ld      de,000eh
2386 010000    ld      bc,0000h
2389 cd5bac    call    0ac5bh
238c 3e0a      ld      a,0ah
238e ef        rst     28h
238f c38d66    jp      668dh
2392 dd7507    ld      (ix+07h),l
2395 dd7408    ld      (ix+08h),h
2398 dd7109    ld      (ix+09h),c
239b dd6e11    ld      l,(ix+11h)
239e dd6612    ld      h,(ix+12h)
23a1 110800    ld      de,0008h
23a4 19        add     hl,de
23a5 dd7511    ld      (ix+11h),l
23a8 dd7412    ld      (ix+12h),h
23ab dd6e0a    ld      l,(ix+0ah)
23ae dd660b    ld      h,(ix+0bh)
23b1 dd7e0c    ld      a,(ix+0ch)
23b4 112000    ld      de,0020h
23b7 19        add     hl,de
23b8 8a        adc     a,d
23b9 dd750a    ld      (ix+0ah),l
23bc dd740b    ld      (ix+0bh),h
23bf dd770c    ld      (ix+0ch),a
23c2 2a15d2    ld      hl,(0d215h)
23c5 7e        ld      a,(hl)
23c6 87        add     a,a
23c7 5f        ld      e,a
23c8 21f566    ld      hl,66f5h
23cb 19        add     hl,de
23cc 4e        ld      c,(hl)
23cd 23        inc     hl
23ce 46        ld      b,(hl)
23cf 110e67    ld      de,670eh
23d2 cd7c7c    call    7c7ch
23d5 21040a    ld      hl,0a04h
23d8 2215d2    ld      (0d215h),hl
23db cd2633    call    3326h
23de 210408    ld      hl,0804h
23e1 220fd2    ld      (0d20fh),hl
23e4 d4bf2f    call    nc,2fbfh
23e7 c9        ret     

23e8 010101    ld      bc,0101h
23eb 010101    ld      bc,0101h
23ee 010101    ld      bc,0101h
23f1 010303    ld      bc,0303h
23f4 04        inc     b
23f5 02        ld      (bc),a
23f6 02        ld      (bc),a
23f7 02        ld      (bc),a
23f8 02        ld      (bc),a
23f9 02        ld      (bc),a
23fa 02        ld      (bc),a
23fb 02        ld      (bc),a
23fc 02        ld      (bc),a
23fd 02        ld      (bc),a
23fe 02        ld      (bc),a
23ff 03        inc     bc
2400 03        inc     bc
2401 04        inc     b
2402 00        nop     
2403 ff        rst     38h
2404 66        ld      h,(hl)
2405 ff        rst     38h
2406 66        ld      h,(hl)
2407 ff        rst     38h
2408 66        ld      h,(hl)
2409 08        ex      af,af'
240a 67        ld      h,a
240b 0b        dec     bc
240c 67        ld      h,a
240d 00        nop     
240e 0c        inc     c
240f 010c02    ld      bc,020ch
2412 0c        inc     c
2413 010cff    ld      bc,0ff0ch
2416 0101ff    ld      bc,0ff01h
2419 03        inc     bc
241a 01ff00    ld      bc,00ffh
241d 02        ld      (bc),a
241e 04        inc     b
241f ff        rst     38h
2420 ff        rst     38h
2421 ff        rst     38h
2422 2022      jr      nz,2446h         ; (+22h)
2424 24        inc     h
2425 ff        rst     38h
2426 ff        rst     38h
2427 ff        rst     38h
2428 ff        rst     38h
2429 ff        rst     38h
242a ff        rst     38h
242b ff        rst     38h
242c ff        rst     38h
242d ff        rst     38h
242e 00        nop     
242f 02        ld      (bc),a
2430 44        ld      b,h
2431 ff        rst     38h
2432 ff        rst     38h
2433 ff        rst     38h
2434 46        ld      b,(hl)
2435 224aff    ld      (0ff4ah),hl
2438 ff        rst     38h
2439 ff        rst     38h
243a ff        rst     38h
243b ff        rst     38h
243c ff        rst     38h
243d ff        rst     38h
243e ff        rst     38h
243f ff        rst     38h
2440 40        ld      b,b
2441 02        ld      (bc),a
2442 44        ld      b,h
2443 ff        rst     38h
2444 ff        rst     38h
2445 ff        rst     38h
2446 2622      ld      h,22h
2448 2affff    ld      hl,(0ffffh)
244b ff        rst     38h
244c ff        rst     38h
244d ff        rst     38h
244e ff        rst     38h
244f ff        rst     38h
2450 ff        rst     38h
2451 ff        rst     38h
2452 40        ld      b,b
2453 02        ld      (bc),a
2454 04        inc     b
2455 ff        rst     38h
2456 ff        rst     38h
2457 ff        rst     38h
2458 46        ld      b,(hl)
2459 224aff    ld      (0ff4ah),hl
245c ff        rst     38h
245d ff        rst     38h
245e ff        rst     38h
245f ddcb18ee  set     5,(ix+18h)
2463 214000    ld      hl,0040h
2466 2265d2    ld      (0d265h),hl
2469 214000    ld      hl,0040h
246c 2267d2    ld      (0d267h),hl
246f ddcb1846  bit     0,(ix+18h)
2473 2024      jr      nz,2499h         ; (+24h)
2475 dd6e02    ld      l,(ix+02h)
2478 dd6603    ld      h,(ix+03h)
247b dd7512    ld      (ix+12h),l
247e dd7413    ld      (ix+13h),h
2481 dd6e05    ld      l,(ix+05h)
2484 dd6606    ld      h,(ix+06h)
2487 dd7514    ld      (ix+14h),l
248a dd7415    ld      (ix+15h),h
248d dd3611e0  ld      (ix+11h),0e0h
2491 ddcb18c6  set     0,(ix+18h)
2495 ddcb18ce  set     1,(ix+18h)
2499 dd360d1a  ld      (ix+0dh),1ah
249d dd360e10  ld      (ix+0eh),10h
24a1 dd6e02    ld      l,(ix+02h)
24a4 dd6603    ld      h,(ix+03h)
24a7 220fd2    ld      (0d20fh),hl
24aa 213868    ld      hl,6838h
24ad dd5e11    ld      e,(ix+11h)
24b0 1600      ld      d,00h
24b2 19        add     hl,de
24b3 4d        ld      c,l
24b4 44        ld      b,h
24b5 0a        ld      a,(bc)
24b6 a7        and     a
24b7 f2ad67    jp      p,67adh
24ba 15        dec     d
24bb 5f        ld      e,a
24bc dd6e12    ld      l,(ix+12h)
24bf dd6613    ld      h,(ix+13h)
24c2 19        add     hl,de
24c3 dd7502    ld      (ix+02h),l
24c6 dd7403    ld      (ix+03h),h
24c9 ed5b0fd2  ld      de,(0d20fh)
24cd a7        and     a
24ce ed52      sbc     hl,de
24d0 220fd2    ld      (0d20fh),hl
24d3 03        inc     bc
24d4 1600      ld      d,00h
24d6 0a        ld      a,(bc)
24d7 a7        and     a
24d8 f2ce67    jp      p,67ceh
24db 15        dec     d
24dc 5f        ld      e,a
24dd dd6e14    ld      l,(ix+14h)
24e0 dd6615    ld      h,(ix+15h)
24e3 19        add     hl,de
24e4 dd7505    ld      (ix+05h),l
24e7 dd7406    ld      (ix+06h),h
24ea 3a09d4    ld      a,(0d409h)
24ed a7        and     a
24ee fa0268    jp      m,6802h
24f1 210608    ld      hl,0806h
24f4 2215d2    ld      (0d215h),hl
24f7 cd2633    call    3326h
24fa 3814      jr      c,2510h          ; (+14h)
24fc 2affd3    ld      hl,(0d3ffh)
24ff ed5b0fd2  ld      de,(0d20fh)
2503 19        add     hl,de
2504 22ffd3    ld      (0d3ffh),hl
2507 011000    ld      bc,0010h
250a 110000    ld      de,0000h
250d cdfc7c    call    7cfch
2510 211a69    ld      hl,691ah
2513 3ad5d2    ld      a,(0d2d5h)
2516 a7        and     a
2517 2803      jr      z,251ch          ; (+03h)
2519 212c69    ld      hl,692ch
251c dd750f    ld      (ix+0fh),l
251f dd7410    ld      (ix+10h),h
2522 ddcb184e  bit     1,(ix+18h)
2526 2010      jr      nz,2538h         ; (+10h)
2528 dd7e11    ld      a,(ix+11h)
252b 3c        inc     a
252c 3c        inc     a
252d dd7711    ld      (ix+11h),a
2530 fee0      cp      0e0h
2532 d8        ret     c

2533 ddcb18ce  set     1,(ix+18h)
2537 c9        ret     

2538 dd7e11    ld      a,(ix+11h)
253b 3d        dec     a
253c 3d        dec     a
253d dd7711    ld      (ix+11h),a
2540 c0        ret     nz

2541 ddcb188e  res     1,(ix+18h)
2545 c9        ret     

2546 cd00cd    call    0cd00h
2549 01cd01    ld      bc,01cdh
254c cd02cd    call    0cd02h
254f 02        ld      (bc),a
2550 cd03cd    call    0cd03h
2553 04        inc     b
2554 cd04cd    call    0cd04h
2557 05        dec     b
2558 cd06cd    call    0cd06h
255b 06cd      ld      b,0cdh
255d 07        rlca    
255e cd08ce    call    0ce08h
2561 09        add     hl,bc
2562 ce09      adc     a,09h
2564 ce0a      adc     a,0ah
2566 ce0b      adc     a,0bh
2568 ce0c      adc     a,0ch
256a ce0d      adc     a,0dh
256c cf        rst     08h
256d 0ecf      ld      c,0cfh
256f 0f        rrca    
2570 cf        rst     08h
2571 10d0      djnz    2543h            ; (-30h)
2573 11d012    ld      de,12d0h
2576 d0        ret     nc

2577 13        inc     de
2578 d1        pop     de
2579 14        inc     d
257a d1        pop     de
257b 15        dec     d
257c d216d3    jp      nc,0d316h
257f 18d3      jr      2554h            ; (-2dh)
2581 19        add     hl,de
2582 d41ad5    call    nc,0d51ah
2585 1b        dec     de
2586 d61d      sub     1dh
2588 d61e      sub     1eh
258a d7        rst     10h
258b 1f        rra     
258c d8        ret     c

258d 20d9      jr      nz,2568h         ; (-27h)
258f 22db23    ld      (23dbh),hl
2592 dc24dd    call    c,0dd24h
2595 25        dec     h
2596 de27      sbc     a,27h
2598 e0        ret     po

2599 28e1      jr      z,257ch          ; (-1fh)
259b 29        add     hl,hl
259c e3        ex      (sp),hl
259d 2ae52b    ld      hl,(2be5h)
25a0 e62c      and     2ch
25a2 e8        ret     pe

25a3 2d        dec     l
25a4 ea2eec    jp      pe,0ec2eh
25a7 2f        cpl     
25a8 ee30      xor     30h
25aa f0        ret     p

25ab 31f231    ld      sp,31f2h
25ae f5        push    af
25af 32f732    ld      (32f7h),a
25b2 f9        ld      sp,hl
25b3 33        inc     sp
25b4 fb        ei      
25b5 33        inc     sp
25b6 fe33      cp      33h
25b8 00        nop     
25b9 33        inc     sp
25ba 02        ld      (bc),a
25bb 33        inc     sp
25bc 05        dec     b
25bd 33        inc     sp
25be 07        rlca    
25bf 33        inc     sp
25c0 09        add     hl,bc
25c1 320b32    ld      (320bh),a
25c4 0e31      ld      c,31h
25c6 1031      djnz    25f9h            ; (+31h)
25c8 12        ld      (de),a
25c9 3014      jr      nc,25dfh         ; (+14h)
25cb 2f        cpl     
25cc 162e      ld      d,2eh
25ce 182d      jr      25fdh            ; (+2dh)
25d0 1a        ld      a,(de)
25d1 2c        inc     l
25d2 1c        inc     e
25d3 2b        dec     hl
25d4 1d        dec     e
25d5 2a1f29    ld      hl,(291fh)
25d8 2028      jr      nz,2602h         ; (+28h)
25da 222623    ld      (2326h),hl
25dd 25        dec     h
25de 25        dec     h
25df 24        inc     h
25e0 2623      ld      h,23h
25e2 27        daa     
25e3 212820    ld      hl,2028h
25e6 29        add     hl,hl
25e7 1f        rra     
25e8 2a1d2b    ld      hl,(2b1dh)
25eb 1c        inc     e
25ec 2c        inc     l
25ed 1b        dec     de
25ee 2c        inc     l
25ef 1a        ld      a,(de)
25f0 2d        dec     l
25f1 182e      jr      2621h            ; (+2eh)
25f3 17        rla     
25f4 2e16      ld      l,16h
25f6 2f        cpl     
25f7 15        dec     d
25f8 2f        cpl     
25f9 13        inc     de
25fa 3012      jr      nc,260eh         ; (+12h)
25fc 3011      jr      nc,260fh         ; (+11h)
25fe 311031    ld      sp,3110h
2601 0f        rrca    
2602 310e31    ld      sp,310eh
2605 0d        dec     c
2606 320c32    ld      (320ch),a
2609 0b        dec     bc
260a 320a32    ld      (320ah),a
260d 09        add     hl,bc
260e 320933    ld      (3309h),a
2611 08        ex      af,af'
2612 33        inc     sp
2613 07        rlca    
2614 33        inc     sp
2615 0633      ld      b,33h
2617 05        dec     b
2618 33        inc     sp
2619 05        dec     b
261a 33        inc     sp
261b 04        inc     b
261c 33        inc     sp
261d 03        inc     bc
261e 33        inc     sp
261f 03        inc     bc
2620 33        inc     sp
2621 02        ld      (bc),a
2622 33        inc     sp
2623 013301    ld      bc,0133h
2626 33        inc     sp
2627 00        nop     
2628 feff      cp      0ffh
262a ff        rst     38h
262b ff        rst     38h
262c ff        rst     38h
262d ff        rst     38h
262e 181a      jr      264ah            ; (+1ah)
2630 181a      jr      264ch            ; (+1ah)
2632 ff        rst     38h
2633 ff        rst     38h
2634 ff        rst     38h
2635 ff        rst     38h
2636 ff        rst     38h
2637 ff        rst     38h
2638 ff        rst     38h
2639 ff        rst     38h
263a feff      cp      0ffh
263c ff        rst     38h
263d ff        rst     38h
263e ff        rst     38h
263f ff        rst     38h
2640 6c        ld      l,h
2641 6e        ld      l,(hl)
2642 6e        ld      l,(hl)
2643 48        ld      c,b
2644 ff        rst     38h
2645 ff        rst     38h
2646 ff        rst     38h
2647 ff        rst     38h
2648 feff      cp      0ffh
264a ff        rst     38h
264b ff        rst     38h
264c ff        rst     38h
264d ff        rst     38h
264e 6c        ld      l,h
264f 6e        ld      l,(hl)
2650 6c        ld      l,h
2651 6e        ld      l,(hl)
2652 ff        rst     38h
2653 ff        rst     38h
2654 ff        rst     38h
2655 ff        rst     38h
2656 ddcb18ee  set     5,(ix+18h)
265a dd7e15    ld      a,(ix+15h)
265d feaa      cp      0aah
265f 2820      jr      z,2681h          ; (+20h)
2661 af        xor     a
2662 dd7711    ld      (ix+11h),a
2665 dd3615aa  ld      (ix+15h),0aah
2669 dd7716    ld      (ix+16h),a
266c dd7717    ld      (ix+17h),a
266f dd7707    ld      (ix+07h),a
2672 dd7708    ld      (ix+08h),a
2675 dd7709    ld      (ix+09h),a
2678 dd770a    ld      (ix+0ah),a
267b dd770b    ld      (ix+0bh),a
267e dd770c    ld      (ix+0ch),a
2681 dd7e11    ld      a,(ix+11h)
2684 3d        dec     a
2685 2035      jr      nz,26bch         ; (+35h)
2687 fdcb006e  bit     5,(iy+00h)
268b 282f      jr      z,26bch          ; (+2fh)
268d 3a38d2    ld      a,(0d238h)
2690 fe12      cp      12h
2692 2828      jr      z,26bch          ; (+28h)
2694 3a15d4    ld      a,(0d415h)
2697 07        rlca    
2698 3822      jr      c,26bch          ; (+22h)
269a 3ae9d2    ld      a,(0d2e9h)
269d ed5be7d2  ld      de,(0d2e7h)
26a1 13        inc     de
26a2 4f        ld      c,a
26a3 2a07d4    ld      hl,(0d407h)
26a6 7d        ld      a,l
26a7 2f        cpl     
26a8 6f        ld      l,a
26a9 7c        ld      a,h
26aa 2f        cpl     
26ab 67        ld      h,a
26ac 3a09d4    ld      a,(0d409h)
26af a7        and     a
26b0 faae69    jp      m,69aeh
26b3 2f        cpl     
26b4 19        add     hl,de
26b5 89        adc     a,c
26b6 2207d4    ld      (0d407h),hl
26b9 3209d4    ld      (0d409h),a
26bc 11cc69    ld      de,69cch
26bf 01c569    ld      bc,69c5h
26c2 cd7c7c    call    7c7ch
26c5 dd3411    inc     (ix+11h)
26c8 dd7e11    ld      a,(ix+11h)
26cb fe18      cp      18h
26cd d8        ret     c

26ce dd3600ff  ld      (ix+00h),0ffh
26d2 c9        ret     

26d3 00        nop     
26d4 08        ex      af,af'
26d5 010802    ld      bc,0208h
26d8 08        ex      af,af'
26d9 ff        rst     38h
26da 74        ld      (hl),h
26db 76        halt    
26dc ff        rst     38h
26dd ff        rst     38h
26de ff        rst     38h
26df ff        rst     38h
26e0 ff        rst     38h
26e1 ff        rst     38h
26e2 ff        rst     38h
26e3 ff        rst     38h
26e4 ff        rst     38h
26e5 ff        rst     38h
26e6 ff        rst     38h
26e7 ff        rst     38h
26e8 ff        rst     38h
26e9 ff        rst     38h
26ea ff        rst     38h
26eb ff        rst     38h
26ec 78        ld      a,b
26ed 7a        ld      a,d
26ee ff        rst     38h
26ef ff        rst     38h
26f0 ff        rst     38h
26f1 ff        rst     38h
26f2 ff        rst     38h
26f3 ff        rst     38h
26f4 ff        rst     38h
26f5 ff        rst     38h
26f6 ff        rst     38h
26f7 ff        rst     38h
26f8 ff        rst     38h
26f9 ff        rst     38h
26fa ff        rst     38h
26fb ff        rst     38h
26fc ff        rst     38h
26fd ff        rst     38h
26fe 7c        ld      a,h
26ff 7e        ld      a,(hl)
2700 ff        rst     38h
2701 ff        rst     38h
2702 ff        rst     38h
2703 ff        rst     38h
2704 ff        rst     38h
2705 ddcb18ee  set     5,(ix+18h)
2709 dd360d1a  ld      (ix+0dh),1ah
270d dd360e10  ld      (ix+0eh),10h
2711 211a69    ld      hl,691ah
2714 3ad5d2    ld      a,(0d2d5h)
2717 a7        and     a
2718 2803      jr      z,271dh          ; (+03h)
271a 212c69    ld      hl,692ch
271d dd750f    ld      (ix+0fh),l
2720 dd7410    ld      (ix+10h),h
2723 3a09d4    ld      a,(0d409h)
2726 a7        and     a
2727 fa466a    jp      m,6a46h
272a 210608    ld      hl,0806h
272d 2215d2    ld      (0d215h),hl
2730 cd2633    call    3326h
2733 381f      jr      c,2754h          ; (+1fh)
2735 110000    ld      de,0000h
2738 dd7e05    ld      a,(ix+05h)
273b e61f      and     1fh
273d fe10      cp      10h
273f 3002      jr      nc,2743h         ; (+02h)
2741 1e80      ld      e,80h
2743 dd730a    ld      (ix+0ah),e
2746 dd720b    ld      (ix+0bh),d
2749 dd360c00  ld      (ix+0ch),00h
274d 011000    ld      bc,0010h
2750 cdfc7c    call    7cfch
2753 c9        ret     

2754 0e00      ld      c,00h
2756 69        ld      l,c
2757 61        ld      h,c
2758 dd7e05    ld      a,(ix+05h)
275b e61f      and     1fh
275d 2804      jr      z,2763h          ; (+04h)
275f 21c0ff    ld      hl,0ffc0h
2762 0d        dec     c
2763 dd750a    ld      (ix+0ah),l
2766 dd740b    ld      (ix+0bh),h
2769 dd710c    ld      (ix+0ch),c
276c c9        ret     

276d ddcb18ee  set     5,(ix+18h)
2771 ddcb1846  bit     0,(ix+18h)
2775 2010      jr      nz,2787h         ; (+10h)
2777 dd7e05    ld      a,(ix+05h)
277a dd7711    ld      (ix+11h),a
277d dd7e06    ld      a,(ix+06h)
2780 dd7712    ld      (ix+12h),a
2783 ddcb18c6  set     0,(ix+18h)
2787 ddcb184e  bit     1,(ix+18h)
278b 281d      jr      z,27aah          ; (+1dh)
278d 2a57d2    ld      hl,(0d257h)
2790 01f0ff    ld      bc,0fff0h
2793 09        add     hl,bc
2794 dd5e05    ld      e,(ix+05h)
2797 dd5606    ld      d,(ix+06h)
279a af        xor     a
279b ed52      sbc     hl,de
279d 3007      jr      nc,27a6h         ; (+07h)
279f dd770f    ld      (ix+0fh),a
27a2 dd7710    ld      (ix+10h),a
27a5 c9        ret     

27a6 ddcb188e  res     1,(ix+18h)
27aa dd7e16    ld      a,(ix+16h)
27ad dd8617    add     a,(ix+17h)
27b0 dd7717    ld      (ix+17h),a
27b3 fe18      cp      18h
27b5 3817      jr      c,27ceh          ; (+17h)
27b7 dd6e0a    ld      l,(ix+0ah)
27ba dd660b    ld      h,(ix+0bh)
27bd dd7e0c    ld      a,(ix+0ch)
27c0 114000    ld      de,0040h
27c3 19        add     hl,de
27c4 8a        adc     a,d
27c5 dd750a    ld      (ix+0ah),l
27c8 dd740b    ld      (ix+0bh),h
27cb dd770c    ld      (ix+0ch),a
27ce dd360d1a  ld      (ix+0dh),1ah
27d2 dd360e10  ld      (ix+0eh),10h
27d6 3a09d4    ld      a,(0d409h)
27d9 a7        and     a
27da faea6a    jp      m,6aeah
27dd 210608    ld      hl,0806h
27e0 2215d2    ld      (0d215h),hl
27e3 cd2633    call    3326h
27e6 3810      jr      c,27f8h          ; (+10h)
27e8 dd361601  ld      (ix+16h),01h
27ec 011000    ld      bc,0010h
27ef dd5e0a    ld      e,(ix+0ah)
27f2 dd560b    ld      d,(ix+0bh)
27f5 cdfc7c    call    7cfch
27f8 211a69    ld      hl,691ah
27fb 3ad5d2    ld      a,(0d2d5h)
27fe a7        and     a
27ff 2803      jr      z,2804h          ; (+03h)
2801 212c69    ld      hl,692ch
2804 dd750f    ld      (ix+0fh),l
2807 dd7410    ld      (ix+10h),h
280a 2a57d2    ld      hl,(0d257h)
280d 11a800    ld      de,00a8h
2810 19        add     hl,de
2811 dd5e05    ld      e,(ix+05h)
2814 dd5606    ld      d,(ix+06h)
2817 af        xor     a
2818 ed52      sbc     hl,de
281a d0        ret     nc

281b dd770a    ld      (ix+0ah),a
281e dd770b    ld      (ix+0bh),a
2821 dd770c    ld      (ix+0ch),a
2824 dd7716    ld      (ix+16h),a
2827 dd7717    ld      (ix+17h),a
282a dd7704    ld      (ix+04h),a
282d dd7e11    ld      a,(ix+11h)
2830 dd7705    ld      (ix+05h),a
2833 dd7e12    ld      a,(ix+12h)
2836 dd7706    ld      (ix+06h),a
2839 ddcb18ce  set     1,(ix+18h)
283d c9        ret     

283e ddcb18ee  set     5,(ix+18h)
2842 dd360d02  ld      (ix+0dh),02h
2846 dd360e02  ld      (ix+0eh),02h
284a 210303    ld      hl,0303h
284d 2215d2    ld      (0d215h),hl
2850 cd2633    call    3326h
2853 d4d72f    call    nc,2fd7h
2856 dd6e0a    ld      l,(ix+0ah)
2859 dd660b    ld      h,(ix+0bh)
285c dd7e0c    ld      a,(ix+0ch)
285f dd5e13    ld      e,(ix+13h)
2862 dd5614    ld      d,(ix+14h)
2865 19        add     hl,de
2866 ce00      adc     a,00h
2868 dd750a    ld      (ix+0ah),l
286b dd740b    ld      (ix+0bh),h
286e dd770c    ld      (ix+0ch),a
2871 dd6e02    ld      l,(ix+02h)
2874 dd6603    ld      h,(ix+03h)
2877 220fd2    ld      (0d20fh),hl
287a dd6e05    ld      l,(ix+05h)
287d dd6606    ld      h,(ix+06h)
2880 2211d2    ld      (0d211h),hl
2883 210000    ld      hl,0000h
2886 2213d2    ld      (0d213h),hl
2889 2215d2    ld      (0d215h),hl
288c dd750f    ld      (ix+0fh),l
288f dd7410    ld      (ix+10h),h
2892 21e16b    ld      hl,6be1h
2895 3a38d2    ld      a,(0d238h)
2898 fe05      cp      05h
289a 2807      jr      z,28a3h          ; (+07h)
289c fe0b      cp      0bh
289e 2803      jr      z,28a3h          ; (+03h)
28a0 21df6b    ld      hl,6bdfh
28a3 3a24d2    ld      a,(0d224h)
28a6 e601      and     01h
28a8 5f        ld      e,a
28a9 1600      ld      d,00h
28ab 19        add     hl,de
28ac 7e        ld      a,(hl)
28ad cd5b2f    call    2f5bh
28b0 dd4e02    ld      c,(ix+02h)
28b3 dd4603    ld      b,(ix+03h)
28b6 69        ld      l,c
28b7 60        ld      h,b
28b8 11f8ff    ld      de,0fff8h
28bb 19        add     hl,de
28bc ed5b54d2  ld      de,(0d254h)
28c0 a7        and     a
28c1 ed52      sbc     hl,de
28c3 3823      jr      c,28e8h          ; (+23h)
28c5 14        inc     d
28c6 eb        ex      de,hl
28c7 ed42      sbc     hl,bc
28c9 381d      jr      c,28e8h          ; (+1dh)
28cb dd4e05    ld      c,(ix+05h)
28ce dd4606    ld      b,(ix+06h)
28d1 69        ld      l,c
28d2 60        ld      h,b
28d3 111000    ld      de,0010h
28d6 19        add     hl,de
28d7 ed5b57d2  ld      de,(0d257h)
28db a7        and     a
28dc ed52      sbc     hl,de
28de 3808      jr      c,28e8h          ; (+08h)
28e0 21c000    ld      hl,00c0h
28e3 19        add     hl,de
28e4 a7        and     a
28e5 ed42      sbc     hl,bc
28e7 d0        ret     nc

28e8 dd3600ff  ld      (ix+00h),0ffh
28ec c9        ret     

28ed 0608      ld      b,08h
28ef 34        inc     (hl)
28f0 36dd      ld      (hl),0ddh
28f2 cb18      rr      b
28f4 eedd      xor     0ddh
28f6 cb18      rr      b
28f8 46        ld      b,(hl)
28f9 202d      jr      nz,2928h         ; (+2dh)
28fb dd5e02    ld      e,(ix+02h)
28fe dd5603    ld      d,(ix+03h)
2901 dd7314    ld      (ix+14h),e
2904 dd7215    ld      (ix+15h),d
2907 af        xor     a
2908 dd770f    ld      (ix+0fh),a
290b dd7710    ld      (ix+10h),a
290e dd7712    ld      (ix+12h),a
2911 dd7707    ld      (ix+07h),a
2914 dd7708    ld      (ix+08h),a
2917 dd7709    ld      (ix+09h),a
291a 2a54d2    ld      hl,(0d254h)
291d 010001    ld      bc,0100h
2920 09        add     hl,bc
2921 ed52      sbc     hl,de
2923 d0        ret     nc

2924 ddcb18c6  set     0,(ix+18h)
2928 dd360d14  ld      (ix+0dh),14h
292c dd360e20  ld      (ix+0eh),20h
2930 dd6e02    ld      l,(ix+02h)
2933 dd6603    ld      h,(ix+03h)
2936 ed5bffd3  ld      de,(0d3ffh)
293a a7        and     a
293b ed52      sbc     hl,de
293d 3812      jr      c,2951h          ; (+12h)
293f 114000    ld      de,0040h
2942 ed52      sbc     hl,de
2944 300b      jr      nc,2951h         ; (+0bh)
2946 dd7e12    ld      a,(ix+12h)
2949 fe05      cp      05h
294b 3004      jr      nc,2951h         ; (+04h)
294d dd361205  ld      (ix+12h),05h
2951 dd5e12    ld      e,(ix+12h)
2954 1600      ld      d,00h
2956 21466d    ld      hl,6d46h
2959 19        add     hl,de
295a 2215d2    ld      (0d215h),hl
295d 7e        ld      a,(hl)
295e a7        and     a
295f 2007      jr      nz,2968h         ; (+07h)
2961 dd7712    ld      (ix+12h),a
2964 5f        ld      e,a
2965 c3486c    jp      6c48h
2968 3d        dec     a
2969 2032      jr      nz,299dh         ; (+32h)
296b dd6e02    ld      l,(ix+02h)
296e dd6603    ld      h,(ix+03h)
2971 113000    ld      de,0030h
2974 19        add     hl,de
2975 ed5b54d2  ld      de,(0d254h)
2979 af        xor     a
297a ed52      sbc     hl,de
297c 3017      jr      nc,2995h         ; (+17h)
297e dd770f    ld      (ix+0fh),a
2981 dd7710    ld      (ix+10h),a
2984 dd7e14    ld      a,(ix+14h)
2987 dd7702    ld      (ix+02h),a
298a dd7e15    ld      a,(ix+15h)
298d dd7703    ld      (ix+03h),a
2990 ddcb1886  res     0,(ix+18h)
2994 c9        ret     

2995 0eff      ld      c,0ffh
2997 2100fe    ld      hl,0fe00h
299a c3076d    jp      6d07h
299d 3d        dec     a
299e 2007      jr      nz,29a7h         ; (+07h)
29a0 0e00      ld      c,00h
29a2 69        ld      l,c
29a3 61        ld      h,c
29a4 c3076d    jp      6d07h
29a7 dd7e11    ld      a,(ix+11h)
29aa fe20      cp      20h
29ac c2106d    jp      nz,6d10h
29af cdb67c    call    7cb6h
29b2 da106d    jp      c,6d10h
29b5 c5        push    bc
29b6 dd5e02    ld      e,(ix+02h)
29b9 dd5603    ld      d,(ix+03h)
29bc dd4e05    ld      c,(ix+05h)
29bf dd4606    ld      b,(ix+06h)
29c2 dde5      push    ix
29c4 e5        push    hl
29c5 dde1      pop     ix
29c7 af        xor     a
29c8 dd36000d  ld      (ix+00h),0dh
29cc dd7701    ld      (ix+01h),a
29cf dd7302    ld      (ix+02h),e
29d2 dd7203    ld      (ix+03h),d
29d5 dd7704    ld      (ix+04h),a
29d8 212000    ld      hl,0020h
29db 09        add     hl,bc
29dc dd7505    ld      (ix+05h),l
29df dd7406    ld      (ix+06h),h
29e2 dd7711    ld      (ix+11h),a
29e5 dd7713    ld      (ix+13h),a
29e8 dd7714    ld      (ix+14h),a
29eb dd7715    ld      (ix+15h),a
29ee dd7716    ld      (ix+16h),a
29f1 dd7717    ld      (ix+17h),a
29f4 dd360700  ld      (ix+07h),00h
29f8 dd3608ff  ld      (ix+08h),0ffh
29fc dd3609ff  ld      (ix+09h),0ffh
2a00 dd360a80  ld      (ix+0ah),80h
2a04 dd360b01  ld      (ix+0bh),01h
2a08 dd770c    ld      (ix+0ch),a
2a0b dde1      pop     ix
2a0d c1        pop     bc
2a0e 3e0a      ld      a,0ah
2a10 ef        rst     28h
2a11 0e00      ld      c,00h
2a13 69        ld      l,c
2a14 61        ld      h,c
2a15 dd7507    ld      (ix+07h),l
2a18 dd7408    ld      (ix+08h),h
2a1b dd7109    ld      (ix+09h),c
2a1e dd6e11    ld      l,(ix+11h)
2a21 dd6612    ld      h,(ix+12h)
2a24 110800    ld      de,0008h
2a27 19        add     hl,de
2a28 dd7511    ld      (ix+11h),l
2a2b dd7412    ld      (ix+12h),h
2a2e 2a15d2    ld      hl,(0d215h)
2a31 7e        ld      a,(hl)
2a32 87        add     a,a
2a33 5f        ld      e,a
2a34 21516d    ld      hl,6d51h
2a37 19        add     hl,de
2a38 4e        ld      c,(hl)
2a39 23        inc     hl
2a3a 46        ld      b,(hl)
2a3b 11686d    ld      de,6d68h
2a3e cd7c7c    call    7c7ch
2a41 210010    ld      hl,1000h
2a44 2215d2    ld      (0d215h),hl
2a47 cd2633    call    3326h
2a4a 210410    ld      hl,1004h
2a4d 220fd2    ld      (0d20fh),hl
2a50 d4bf2f    call    nc,2fbfh
2a53 c9        ret     

2a54 010101    ld      bc,0101h
2a57 010002    ld      bc,0200h
2a5a 02        ld      (bc),a
2a5b 03        inc     bc
2a5c 010100    ld      bc,0001h
2a5f 59        ld      e,c
2a60 6d        ld      l,l
2a61 59        ld      e,c
2a62 6d        ld      l,l
2a63 5e        ld      e,(hl)
2a64 6d        ld      l,l
2a65 63        ld      h,e
2a66 6d        ld      l,l
2a67 00        nop     
2a68 02        ld      (bc),a
2a69 0102ff    ld      bc,0ff02h
2a6c 02        ld      (bc),a
2a6d 02        ld      (bc),a
2a6e 03        inc     bc
2a6f 02        ld      (bc),a
2a70 ff        rst     38h
2a71 04        inc     b
2a72 02        ld      (bc),a
2a73 05        dec     b
2a74 02        ld      (bc),a
2a75 ff        rst     38h
2a76 fe0a      cp      0ah
2a78 ff        rst     38h
2a79 ff        rst     38h
2a7a ff        rst     38h
2a7b ff        rst     38h
2a7c 0c        inc     c
2a7d 0e10      ld      c,10h
2a7f ff        rst     38h
2a80 ff        rst     38h
2a81 ff        rst     38h
2a82 ff        rst     38h
2a83 ff        rst     38h
2a84 ff        rst     38h
2a85 ff        rst     38h
2a86 ff        rst     38h
2a87 ff        rst     38h
2a88 feff      cp      0ffh
2a8a ff        rst     38h
2a8b ff        rst     38h
2a8c ff        rst     38h
2a8d ff        rst     38h
2a8e 0c        inc     c
2a8f 0e2c      ld      c,2ch
2a91 ff        rst     38h
2a92 ff        rst     38h
2a93 ff        rst     38h
2a94 ff        rst     38h
2a95 ff        rst     38h
2a96 ff        rst     38h
2a97 ff        rst     38h
2a98 ff        rst     38h
2a99 ff        rst     38h
2a9a fe0a      cp      0ah
2a9c ff        rst     38h
2a9d ff        rst     38h
2a9e ff        rst     38h
2a9f ff        rst     38h
2aa0 12        ld      (de),a
2aa1 14        inc     d
2aa2 16ff      ld      d,0ffh
2aa4 ff        rst     38h
2aa5 ff        rst     38h
2aa6 3234ff    ld      (0ff34h),a
2aa9 ff        rst     38h
2aaa ff        rst     38h
2aab ff        rst     38h
2aac feff      cp      0ffh
2aae ff        rst     38h
2aaf ff        rst     38h
2ab0 ff        rst     38h
2ab1 ff        rst     38h
2ab2 12        ld      (de),a
2ab3 14        inc     d
2ab4 16ff      ld      d,0ffh
2ab6 ff        rst     38h
2ab7 ff        rst     38h
2ab8 3234ff    ld      (0ff34h),a
2abb ff        rst     38h
2abc ff        rst     38h
2abd ff        rst     38h
2abe fe0a      cp      0ah
2ac0 ff        rst     38h
2ac1 ff        rst     38h
2ac2 ff        rst     38h
2ac3 ff        rst     38h
2ac4 12        ld      (de),a
2ac5 14        inc     d
2ac6 16ff      ld      d,0ffh
2ac8 ff        rst     38h
2ac9 ff        rst     38h
2aca 3034      jr      nc,2b00h         ; (+34h)
2acc ff        rst     38h
2acd ff        rst     38h
2ace ff        rst     38h
2acf ff        rst     38h
2ad0 feff      cp      0ffh
2ad2 ff        rst     38h
2ad3 ff        rst     38h
2ad4 ff        rst     38h
2ad5 ff        rst     38h
2ad6 12        ld      (de),a
2ad7 14        inc     d
2ad8 16ff      ld      d,0ffh
2ada ff        rst     38h
2adb ff        rst     38h
2adc 3034      jr      nc,2b12h         ; (+34h)
2ade ff        rst     38h
2adf ff        rst     38h
2ae0 ff        rst     38h
2ae1 ff        rst     38h
2ae2 ddcb18ee  set     5,(ix+18h)
2ae6 3a38d2    ld      a,(0d238h)
2ae9 fe07      cp      07h
2aeb 280c      jr      z,2af9h          ; (+0ch)
2aed 214000    ld      hl,0040h
2af0 2265d2    ld      (0d265h),hl
2af3 214000    ld      hl,0040h
2af6 2267d2    ld      (0d267h),hl
2af9 dd360d1a  ld      (ix+0dh),1ah
2afd dd360e10  ld      (ix+0eh),10h
2b01 0e00      ld      c,00h
2b03 3a09d4    ld      a,(0d409h)
2b06 a7        and     a
2b07 fa146e    jp      m,6e14h
2b0a 210608    ld      hl,0806h
2b0d 2215d2    ld      (0d215h),hl
2b10 cd2633    call    3326h
2b13 0e00      ld      c,00h
2b15 380b      jr      c,2b22h          ; (+0bh)
2b17 011000    ld      bc,0010h
2b1a 110000    ld      de,0000h
2b1d cdfc7c    call    7cfch
2b20 0e01      ld      c,01h
2b22 dd6e12    ld      l,(ix+12h)
2b25 dd6613    ld      h,(ix+13h)
2b28 23        inc     hl
2b29 dd7512    ld      (ix+12h),l
2b2c dd7413    ld      (ix+13h),h
2b2f 11a000    ld      de,00a0h
2b32 af        xor     a
2b33 ed52      sbc     hl,de
2b35 3809      jr      c,2b40h          ; (+09h)
2b37 dd7712    ld      (ix+12h),a
2b3a dd7713    ld      (ix+13h),a
2b3d dd3414    inc     (ix+14h)
2b40 110100    ld      de,0001h
2b43 ddcb1446  bit     0,(ix+14h)
2b47 2803      jr      z,2b4ch          ; (+03h)
2b49 11ffff    ld      de,0ffffh
2b4c dd6e02    ld      l,(ix+02h)
2b4f dd6603    ld      h,(ix+03h)
2b52 19        add     hl,de
2b53 dd7502    ld      (ix+02h),l
2b56 dd7403    ld      (ix+03h),h
2b59 79        ld      a,c
2b5a a7        and     a
2b5b 2807      jr      z,2b64h          ; (+07h)
2b5d 2affd3    ld      hl,(0d3ffh)
2b60 19        add     hl,de
2b61 22ffd3    ld      (0d3ffh),hl
2b64 211a69    ld      hl,691ah
2b67 3ad5d2    ld      a,(0d2d5h)
2b6a a7        and     a
2b6b 2809      jr      z,2b76h          ; (+09h)
2b6d 213a69    ld      hl,693ah
2b70 3d        dec     a
2b71 2803      jr      z,2b76h          ; (+03h)
2b73 212c69    ld      hl,692ch
2b76 dd750f    ld      (ix+0fh),l
2b79 dd7410    ld      (ix+10h),h
2b7c c9        ret     

2b7d ddcb18ae  res     5,(ix+18h)
2b81 dd360d0a  ld      (ix+0dh),0ah
2b85 dd360e10  ld      (ix+0eh),10h
2b89 dd5e12    ld      e,(ix+12h)
2b8c 1600      ld      d,00h
2b8e 21f96e    ld      hl,6ef9h
2b91 19        add     hl,de
2b92 2215d2    ld      (0d215h),hl
2b95 7e        ld      a,(hl)
2b96 a7        and     a
2b97 2007      jr      nz,2ba0h         ; (+07h)
2b99 dd7712    ld      (ix+12h),a
2b9c 5f        ld      e,a
2b9d c3806e    jp      6e80h
2ba0 3d        dec     a
2ba1 2008      jr      nz,2babh         ; (+08h)
2ba3 0eff      ld      c,0ffh
2ba5 2100ff    ld      hl,0ff00h
2ba8 c3ac6e    jp      6each
2bab 3d        dec     a
2bac 2008      jr      nz,2bb6h         ; (+08h)
2bae 0e00      ld      c,00h
2bb0 210001    ld      hl,0100h
2bb3 c3ac6e    jp      6each
2bb6 0e00      ld      c,00h
2bb8 69        ld      l,c
2bb9 61        ld      h,c
2bba dd7507    ld      (ix+07h),l
2bbd dd7408    ld      (ix+08h),h
2bc0 dd7109    ld      (ix+09h),c
2bc3 dd6e11    ld      l,(ix+11h)
2bc6 dd6612    ld      h,(ix+12h)
2bc9 110800    ld      de,0008h
2bcc 19        add     hl,de
2bcd dd7511    ld      (ix+11h),l
2bd0 dd7412    ld      (ix+12h),h
2bd3 dd360a00  ld      (ix+0ah),00h
2bd7 dd360b02  ld      (ix+0bh),02h
2bdb dd360c00  ld      (ix+0ch),00h
2bdf 2a15d2    ld      hl,(0d215h)
2be2 7e        ld      a,(hl)
2be3 87        add     a,a
2be4 5f        ld      e,a
2be5 1600      ld      d,00h
2be7 21146f    ld      hl,6f14h
2bea 19        add     hl,de
2beb 4e        ld      c,(hl)
2bec 23        inc     hl
2bed 46        ld      b,(hl)
2bee 112e6f    ld      de,6f2eh
2bf1 cd7c7c    call    7c7ch
2bf4 210302    ld      hl,0203h
2bf7 2215d2    ld      (0d215h),hl
2bfa cd2633    call    3326h
2bfd 210000    ld      hl,0000h
2c00 220fd2    ld      (0d20fh),hl
2c03 d4bf2f    call    nc,2fbfh
2c06 c9        ret     

2c07 010101    ld      bc,0101h
2c0a 010101    ld      bc,0101h
2c0d 010101    ld      bc,0101h
2c10 03        inc     bc
2c11 03        inc     bc
2c12 03        inc     bc
2c13 03        inc     bc
2c14 02        ld      (bc),a
2c15 02        ld      (bc),a
2c16 02        ld      (bc),a
2c17 02        ld      (bc),a
2c18 02        ld      (bc),a
2c19 02        ld      (bc),a
2c1a 02        ld      (bc),a
2c1b 02        ld      (bc),a
2c1c 02        ld      (bc),a
2c1d 04        inc     b
2c1e 04        inc     b
2c1f 04        inc     b
2c20 04        inc     b
2c21 00        nop     
2c22 1e6f      ld      e,6fh
2c24 1e6f      ld      e,6fh
2c26 23        inc     hl
2c27 6f        ld      l,a
2c28 286f      jr      z,2c99h          ; (+6fh)
2c2a 2b        dec     hl
2c2b 6f        ld      l,a
2c2c 00        nop     
2c2d 08        ex      af,af'
2c2e 0108ff    ld      bc,0ff08h
2c31 02        ld      (bc),a
2c32 08        ex      af,af'
2c33 03        inc     bc
2c34 08        ex      af,af'
2c35 ff        rst     38h
2c36 00        nop     
2c37 ff        rst     38h
2c38 ff        rst     38h
2c39 02        ld      (bc),a
2c3a ff        rst     38h
2c3b ff        rst     38h
2c3c 60        ld      h,b
2c3d 62        ld      h,d
2c3e ff        rst     38h
2c3f ff        rst     38h
2c40 ff        rst     38h
2c41 ff        rst     38h
2c42 ff        rst     38h
2c43 ff        rst     38h
2c44 ff        rst     38h
2c45 ff        rst     38h
2c46 ff        rst     38h
2c47 ff        rst     38h
2c48 ff        rst     38h
2c49 ff        rst     38h
2c4a ff        rst     38h
2c4b ff        rst     38h
2c4c ff        rst     38h
2c4d ff        rst     38h
2c4e 64        ld      h,h
2c4f 66        ld      h,(hl)
2c50 ff        rst     38h
2c51 ff        rst     38h
2c52 ff        rst     38h
2c53 ff        rst     38h
2c54 ff        rst     38h
2c55 ff        rst     38h
2c56 ff        rst     38h
2c57 ff        rst     38h
2c58 ff        rst     38h
2c59 ff        rst     38h
2c5a ff        rst     38h
2c5b ff        rst     38h
2c5c ff        rst     38h
2c5d ff        rst     38h
2c5e ff        rst     38h
2c5f ff        rst     38h
2c60 68        ld      l,b
2c61 6a        ld      l,d
2c62 ff        rst     38h
2c63 ff        rst     38h
2c64 ff        rst     38h
2c65 ff        rst     38h
2c66 ff        rst     38h
2c67 ff        rst     38h
2c68 ff        rst     38h
2c69 ff        rst     38h
2c6a ff        rst     38h
2c6b ff        rst     38h
2c6c ff        rst     38h
2c6d ff        rst     38h
2c6e ff        rst     38h
2c6f ff        rst     38h
2c70 ff        rst     38h
2c71 ff        rst     38h
2c72 6c        ld      l,h
2c73 6e        ld      l,(hl)
2c74 ff        rst     38h
2c75 ff        rst     38h
2c76 ff        rst     38h
2c77 ff        rst     38h
2c78 ff        rst     38h
2c79 ddcb18ee  set     5,(ix+18h)
2c7d dd360d0c  ld      (ix+0dh),0ch
2c81 dd360e14  ld      (ix+0eh),14h
2c85 dd7e11    ld      a,(ix+11h)
2c88 fe02      cp      02h
2c8a 2803      jr      z,2c8fh          ; (+03h)
2c8c a7        and     a
2c8d 2024      jr      nz,2cb3h         ; (+24h)
2c8f 3a24d2    ld      a,(0d224h)
2c92 e601      and     01h
2c94 2805      jr      z,2c9bh          ; (+05h)
2c96 010000    ld      bc,0000h
2c99 1803      jr      2c9eh            ; (+03h)
2c9b 015070    ld      bc,7050h
2c9e dd3417    inc     (ix+17h)
2ca1 dd7e17    ld      a,(ix+17h)
2ca4 fe3c      cp      3ch
2ca6 da3770    jp      c,7037h
2ca9 dd361700  ld      (ix+17h),00h
2cad dd3411    inc     (ix+11h)
2cb0 c33770    jp      7037h
2cb3 fe01      cp      01h
2cb5 c22470    jp      nz,7024h
2cb8 dd3417    inc     (ix+17h)
2cbb dd7e17    ld      a,(ix+17h)
2cbe fe64      cp      64h
2cc0 2060      jr      nz,2d22h         ; (+60h)
2cc2 cdb67c    call    7cb6h
2cc5 da1470    jp      c,7014h
2cc8 c5        push    bc
2cc9 dd5e02    ld      e,(ix+02h)
2ccc dd5603    ld      d,(ix+03h)
2ccf dd4e05    ld      c,(ix+05h)
2cd2 dd4606    ld      b,(ix+06h)
2cd5 dde5      push    ix
2cd7 e5        push    hl
2cd8 dde1      pop     ix
2cda af        xor     a
2cdb dd36000d  ld      (ix+00h),0dh
2cdf dd7701    ld      (ix+01h),a
2ce2 dd7302    ld      (ix+02h),e
2ce5 dd7203    ld      (ix+03h),d
2ce8 dd7704    ld      (ix+04h),a
2ceb 210600    ld      hl,0006h
2cee 09        add     hl,bc
2cef dd7505    ld      (ix+05h),l
2cf2 dd7406    ld      (ix+06h),h
2cf5 dd7711    ld      (ix+11h),a
2cf8 dd7713    ld      (ix+13h),a
2cfb dd7714    ld      (ix+14h),a
2cfe dd7715    ld      (ix+15h),a
2d01 dd7716    ld      (ix+16h),a
2d04 dd7717    ld      (ix+17h),a
2d07 dd360700  ld      (ix+07h),00h
2d0b dd3608fe  ld      (ix+08h),0feh
2d0f dd3609ff  ld      (ix+09h),0ffh
2d13 dd770a    ld      (ix+0ah),a
2d16 dd770b    ld      (ix+0bh),a
2d19 dd770c    ld      (ix+0ch),a
2d1c dde1      pop     ix
2d1e c1        pop     bc
2d1f 3e0a      ld      a,0ah
2d21 ef        rst     28h
2d22 015070    ld      bc,7050h
2d25 fe78      cp      78h
2d27 381c      jr      c,2d45h          ; (+1ch)
2d29 dd361700  ld      (ix+17h),00h
2d2d dd3411    inc     (ix+11h)
2d30 1813      jr      2d45h            ; (+13h)
2d32 fe03      cp      03h
2d34 200f      jr      nz,2d45h         ; (+0fh)
2d36 010000    ld      bc,0000h
2d39 dd3417    inc     (ix+17h)
2d3c dd7e17    ld      a,(ix+17h)
2d3f a7        and     a
2d40 2003      jr      nz,2d45h         ; (+03h)
2d42 dd7111    ld      (ix+11h),c
2d45 dd710f    ld      (ix+0fh),c
2d48 dd7010    ld      (ix+10h),b
2d4b 210202    ld      hl,0202h
2d4e 2215d2    ld      (0d215h),hl
2d51 cd2633    call    3326h
2d54 210000    ld      hl,0000h
2d57 220fd2    ld      (0d20fh),hl
2d5a d4bf2f    call    nc,2fbfh
2d5d c9        ret     

2d5e 1c        inc     e
2d5f 1eff      ld      e,0ffh
2d61 ff        rst     38h
2d62 ff        rst     38h
2d63 ff        rst     38h
2d64 fe3e      cp      3eh
2d66 ff        rst     38h
2d67 ff        rst     38h
2d68 ff        rst     38h
2d69 ff        rst     38h
2d6a ff        rst     38h
2d6b ff        rst     38h
2d6c ff        rst     38h
2d6d ff        rst     38h
2d6e ff        rst     38h
2d6f ff        rst     38h
2d70 40        ld      b,b
2d71 42        ld      b,d
2d72 ff        rst     38h
2d73 ff        rst     38h
2d74 ff        rst     38h
2d75 ff        rst     38h
2d76 fe62      cp      62h
2d78 ff        rst     38h
2d79 ff        rst     38h
2d7a ff        rst     38h
2d7b ff        rst     38h
2d7c ff        rst     38h
2d7d ddcb18ee  set     5,(ix+18h)
2d81 dd360d20  ld      (ix+0dh),20h
2d85 dd360e1c  ld      (ix+0eh),1ch
2d89 cde17c    call    7ce1h
2d8c ddcb1146  bit     0,(ix+11h)
2d90 2038      jr      nz,2dcah         ; (+38h)
2d92 211801    ld      hl,0118h
2d95 dd7505    ld      (ix+05h),l
2d98 dd7406    ld      (ix+06h),h
2d9b 21b7a8    ld      hl,0a8b7h
2d9e 110020    ld      de,2000h
2da1 3e09      ld      a,09h
2da3 cdce03    call    03ceh
2da6 3e11      ld      a,11h
2da8 322dd2    ld      (0d22dh),a
2dab 3e0b      ld      a,0bh
2dad df        rst     18h
2dae af        xor     a
2daf 32edd2    ld      (0d2edh),a
2db2 dd7712    ld      (ix+12h),a
2db5 dd3614fa  ld      (ix+14h),0fah
2db9 dd361572  ld      (ix+15h),72h
2dbd 216007    ld      hl,0760h
2dc0 110001    ld      de,0100h
2dc3 cdc77c    call    7cc7h
2dc6 ddcb11c6  set     0,(ix+11h)
2dca dd7e13    ld      a,(ix+13h)
2dcd e63f      and     3fh
2dcf 5f        ld      e,a
2dd0 1600      ld      d,00h
2dd2 21ba72    ld      hl,72bah
2dd5 19        add     hl,de
2dd6 7e        ld      a,(hl)
2dd7 a7        and     a
2dd8 f2d170    jp      p,70d1h
2ddb 0eff      ld      c,0ffh
2ddd 1802      jr      2de1h            ; (+02h)
2ddf 0e00      ld      c,00h
2de1 dd770a    ld      (ix+0ah),a
2de4 dd710b    ld      (ix+0bh),c
2de7 dd710c    ld      (ix+0ch),c
2dea dd5e12    ld      e,(ix+12h)
2ded 1600      ld      d,00h
2def dd6e14    ld      l,(ix+14h)
2df2 dd6615    ld      h,(ix+15h)
2df5 19        add     hl,de
2df6 2215d2    ld      (0d215h),hl
2df9 7e        ld      a,(hl)
2dfa a7        and     a
2dfb 2008      jr      nz,2e05h         ; (+08h)
2dfd 23        inc     hl
2dfe 7e        ld      a,(hl)
2dff dd7712    ld      (ix+12h),a
2e02 c3dc70    jp      70dch
2e05 3d        dec     a
2e06 87        add     a,a
2e07 5f        ld      e,a
2e08 1600      ld      d,00h
2e0a 21a472    ld      hl,72a4h
2e0d 19        add     hl,de
2e0e 7e        ld      a,(hl)
2e0f 23        inc     hl
2e10 66        ld      h,(hl)
2e11 6f        ld      l,a
2e12 e9        jp      (hl)
2e13 2a6dd2    ld      hl,(0d26dh)
2e16 112200    ld      de,0022h
2e19 19        add     hl,de
2e1a dd5e02    ld      e,(ix+02h)
2e1d dd5603    ld      d,(ix+03h)
2e20 a7        and     a
2e21 ed52      sbc     hl,de
2e23 0eff      ld      c,0ffh
2e25 2100ff    ld      hl,0ff00h
2e28 da5e72    jp      c,725eh
2e2b dd361200  ld      (ix+12h),00h
2e2f ddcb114e  bit     1,(ix+11h)
2e33 200f      jr      nz,2e44h         ; (+0fh)
2e35 dd3614fd  ld      (ix+14h),0fdh
2e39 dd361572  ld      (ix+15h),72h
2e3d ddcb11ce  set     1,(ix+11h)
2e41 c35e72    jp      725eh
2e44 dd361400  ld      (ix+14h),00h
2e48 dd361573  ld      (ix+15h),73h
2e4c ddcb118e  res     1,(ix+11h)
2e50 c35e72    jp      725eh
2e53 2a6dd2    ld      hl,(0d26dh)
2e56 11ba00    ld      de,00bah
2e59 19        add     hl,de
2e5a dd5e02    ld      e,(ix+02h)
2e5d dd5603    ld      d,(ix+03h)
2e60 a7        and     a
2e61 ed52      sbc     hl,de
2e63 0e00      ld      c,00h
2e65 210001    ld      hl,0100h
2e68 d25e72    jp      nc,725eh
2e6b dd361200  ld      (ix+12h),00h
2e6f ddcb1156  bit     2,(ix+11h)
2e73 200f      jr      nz,2e84h         ; (+0fh)
2e75 dd3614fa  ld      (ix+14h),0fah
2e79 dd361572  ld      (ix+15h),72h
2e7d ddcb11d6  set     2,(ix+11h)
2e81 c35e72    jp      725eh
2e84 dd361403  ld      (ix+14h),03h
2e88 dd361573  ld      (ix+15h),73h
2e8c ddcb1196  res     2,(ix+11h)
2e90 c35e72    jp      725eh
2e93 dd360a60  ld      (ix+0ah),60h
2e97 dd360b00  ld      (ix+0bh),00h
2e9b dd360c00  ld      (ix+0ch),00h
2e9f 2a57d2    ld      hl,(0d257h)
2ea2 116c00    ld      de,006ch
2ea5 19        add     hl,de
2ea6 dd5e05    ld      e,(ix+05h)
2ea9 dd5606    ld      d,(ix+06h)
2eac af        xor     a
2ead ed52      sbc     hl,de
2eaf 4f        ld      c,a
2eb0 69        ld      l,c
2eb1 61        ld      h,c
2eb2 d25e72    jp      nc,725eh
2eb5 dd361200  ld      (ix+12h),00h
2eb9 dd361409  ld      (ix+14h),09h
2ebd dd361573  ld      (ix+15h),73h
2ec1 c35e72    jp      725eh
2ec4 0e00      ld      c,00h
2ec6 210004    ld      hl,0400h
2ec9 c35e72    jp      725eh
2ecc dd360a60  ld      (ix+0ah),60h
2ed0 dd360b00  ld      (ix+0bh),00h
2ed4 dd360c00  ld      (ix+0ch),00h
2ed8 2a57d2    ld      hl,(0d257h)
2edb 116c00    ld      de,006ch
2ede 19        add     hl,de
2edf dd5e05    ld      e,(ix+05h)
2ee2 dd5606    ld      d,(ix+06h)
2ee5 af        xor     a
2ee6 ed52      sbc     hl,de
2ee8 4f        ld      c,a
2ee9 69        ld      l,c
2eea 61        ld      h,c
2eeb d25e72    jp      nc,725eh
2eee dd361200  ld      (ix+12h),00h
2ef2 dd361415  ld      (ix+14h),15h
2ef6 dd361573  ld      (ix+15h),73h
2efa c35e72    jp      725eh
2efd 0eff      ld      c,0ffh
2eff 2100fc    ld      hl,0fc00h
2f02 1868      jr      2f6ch            ; (+68h)
2f04 0e00      ld      c,00h
2f06 69        ld      l,c
2f07 61        ld      h,c
2f08 1862      jr      2f6ch            ; (+62h)
2f0a 0e00      ld      c,00h
2f0c 69        ld      l,c
2f0d 61        ld      h,c
2f0e dd361406  ld      (ix+14h),06h
2f12 dd361573  ld      (ix+15h),73h
2f16 dd7112    ld      (ix+12h),c
2f19 dd7113    ld      (ix+13h),c
2f1c 184e      jr      2f6ch            ; (+4eh)
2f1e dd360a00  ld      (ix+0ah),00h
2f22 dd360bff  ld      (ix+0bh),0ffh
2f26 dd360cff  ld      (ix+0ch),0ffh
2f2a 2a57d2    ld      hl,(0d257h)
2f2d 111800    ld      de,0018h
2f30 19        add     hl,de
2f31 dd5e05    ld      e,(ix+05h)
2f34 dd5606    ld      d,(ix+06h)
2f37 af        xor     a
2f38 ed52      sbc     hl,de
2f3a 4f        ld      c,a
2f3b 69        ld      l,c
2f3c 61        ld      h,c
2f3d da5e72    jp      c,725eh
2f40 dd6e02    ld      l,(ix+02h)
2f43 dd6603    ld      h,(ix+03h)
2f46 ed5b6dd2  ld      de,(0d26dh)
2f4a af        xor     a
2f4b ed52      sbc     hl,de
2f4d 4f        ld      c,a
2f4e 69        ld      l,c
2f4f 61        ld      h,c
2f50 380d      jr      c,2f5fh          ; (+0dh)
2f52 dd3614fa  ld      (ix+14h),0fah
2f56 dd361572  ld      (ix+15h),72h
2f5a dd7712    ld      (ix+12h),a
2f5d 180d      jr      2f6ch            ; (+0dh)
2f5f dd3614fd  ld      (ix+14h),0fdh
2f63 dd361572  ld      (ix+15h),72h
2f67 dd7712    ld      (ix+12h),a
2f6a 1800      jr      2f6ch            ; (+00h)
2f6c dd7507    ld      (ix+07h),l
2f6f dd7408    ld      (ix+08h),h
2f72 dd7109    ld      (ix+09h),c
2f75 2a15d2    ld      hl,(0d215h)
2f78 5e        ld      e,(hl)
2f79 1600      ld      d,00h
2f7b 212173    ld      hl,7321h
2f7e 19        add     hl,de
2f7f 7e        ld      a,(hl)
2f80 215173    ld      hl,7351h
2f83 a7        and     a
2f84 2803      jr      z,2f89h          ; (+03h)
2f86 216373    ld      hl,7363h
2f89 5f        ld      e,a
2f8a dd7e18    ld      a,(ix+18h)
2f8d e6fd      and     0fdh
2f8f b3        or      e
2f90 dd7718    ld      (ix+18h),a
2f93 dd750f    ld      (ix+0fh),l
2f96 dd7410    ld      (ix+10h),h
2f99 211200    ld      hl,0012h
2f9c 2217d2    ld      (0d217h),hl
2f9f cd0778    call    7807h
2fa2 cd3d7a    call    7a3dh
2fa5 dd3413    inc     (ix+13h)
2fa8 dd7e13    ld      a,(ix+13h)
2fab e60f      and     0fh
2fad c0        ret     nz

2fae dd3412    inc     (ix+12h)
2fb1 c9        ret     

2fb2 05        dec     b
2fb3 71        ld      (hl),c
2fb4 45        ld      b,l
2fb5 71        ld      (hl),c
2fb6 85        add     a,l
2fb7 71        ld      (hl),c
2fb8 b6        or      (hl)
2fb9 71        ld      (hl),c
2fba be        cp      (hl)
2fbb 71        ld      (hl),c
2fbc ef        rst     28h
2fbd 71        ld      (hl),c
2fbe f671      or      71h
2fc0 fc7110    call    m,1071h
2fc3 72        ld      (hl),d
2fc4 00        nop     
2fc5 00        nop     
2fc6 f671      or      71h
2fc8 00        nop     
2fc9 14        inc     d
2fca 2828      jr      z,2ff4h          ; (+28h)
2fcc 3c        inc     a
2fcd 3c        inc     a
2fce 3c        inc     a
2fcf 50        ld      d,b
2fd0 50        ld      d,b
2fd1 50        ld      d,b
2fd2 50        ld      d,b
2fd3 64        ld      h,h
2fd4 64        ld      h,h
2fd5 64        ld      h,h
2fd6 64        ld      h,h
2fd7 64        ld      h,h
2fd8 64        ld      h,h
2fd9 64        ld      h,h
2fda 64        ld      h,h
2fdb 64        ld      h,h
2fdc 64        ld      h,h
2fdd 50        ld      d,b
2fde 50        ld      d,b
2fdf 50        ld      d,b
2fe0 50        ld      d,b
2fe1 3c        inc     a
2fe2 3c        inc     a
2fe3 3c        inc     a
2fe4 2828      jr      z,300eh          ; (+28h)
2fe6 14        inc     d
2fe7 00        nop     
2fe8 00        nop     
2fe9 ecd8d8    call    pe,0d8d8h
2fec c4c4c4    call    nz,0c4c4h
2fef b0        or      b
2ff0 b0        or      b
2ff1 b0        or      b
2ff2 b0        or      b
2ff3 9c        sbc     a,h
2ff4 9c        sbc     a,h
2ff5 9c        sbc     a,h
2ff6 9c        sbc     a,h
2ff7 9c        sbc     a,h
2ff8 9c        sbc     a,h
2ff9 9c        sbc     a,h
2ffa 9c        sbc     a,h
2ffb 9c        sbc     a,h
2ffc 9c        sbc     a,h
2ffd b0        or      b
2ffe b0        or      b
2fff b0        or      b
3000 b0        or      b
3001 c4c4c4    call    nz,0c4c4h
3004 d8        ret     c

3005 d8        ret     c

3006 ec0001    call    pe,0100h
3009 00        nop     
300a 00        nop     
300b 02        ld      (bc),a
300c 00        nop     
300d 00        nop     
300e 03        inc     bc
300f 00        nop     
3010 00        nop     
3011 05        dec     b
3012 00        nop     
3013 00        nop     
3014 09        add     hl,bc
3015 00        nop     
3016 00        nop     
3017 07        rlca    
3018 07        rlca    
3019 07        rlca    
301a 07        rlca    
301b 04        inc     b
301c 04        inc     b
301d 04        inc     b
301e 04        inc     b
301f 04        inc     b
3020 08        ex      af,af'
3021 00        nop     
3022 00        nop     
3023 0b        dec     bc
3024 0b        dec     bc
3025 0b        dec     bc
3026 0b        dec     bc
3027 0606      ld      b,06h
3029 0606      ld      b,06h
302b 0608      ld      b,08h
302d 00        nop     
302e 00        nop     
302f 00        nop     
3030 00        nop     
3031 02        ld      (bc),a
3032 02        ld      (bc),a
3033 02        ld      (bc),a
3034 00        nop     
3035 00        nop     
3036 02        ld      (bc),a
3037 02        ld      (bc),a
3038 00        nop     
3039 02        ld      (bc),a
303a 00        nop     
303b 00        nop     
303c 00        nop     
303d 010401    ld      bc,0104h
3040 00        nop     
3041 010401    ld      bc,0104h
3044 010104    ld      bc,0401h
3047 010101    ld      bc,0101h
304a 04        inc     b
304b 01ff02    ld      bc,02ffh
304e 02        ld      (bc),a
304f 010501    ld      bc,0105h
3052 02        ld      (bc),a
3053 010501    ld      bc,0105h
3056 03        inc     bc
3057 010501    ld      bc,0105h
305a 03        inc     bc
305b 010501    ld      bc,0105h
305e ff        rst     38h
305f 2022      jr      nz,3083h         ; (+22h)
3061 24        inc     h
3062 2628      ld      h,28h
3064 ff        rst     38h
3065 40        ld      b,b
3066 42        ld      b,d
3067 44        ld      b,h
3068 46        ld      b,(hl)
3069 48        ld      c,b
306a ff        rst     38h
306b 60        ld      h,b
306c 62        ld      h,d
306d 64        ld      h,h
306e 66        ld      h,(hl)
306f 68        ld      l,b
3070 ff        rst     38h
3071 2a2c2e    ld      hl,(2e2ch)
3074 3032      jr      nc,30a8h         ; (+32h)
3076 ff        rst     38h
3077 4a        ld      c,d
3078 4c        ld      c,h
3079 4e        ld      c,(hl)
307a 50        ld      d,b
307b 52        ld      d,d
307c ff        rst     38h
307d 6a        ld      l,d
307e 6c        ld      l,h
307f 6e        ld      l,(hl)
3080 70        ld      (hl),b
3081 72        ld      (hl),d
3082 ff        rst     38h
3083 ddcb18ee  set     5,(ix+18h)
3087 ddcb1846  bit     0,(ix+18h)
308b 2014      jr      nz,30a1h         ; (+14h)
308d dd6e05    ld      l,(ix+05h)
3090 dd6606    ld      h,(ix+06h)
3093 111000    ld      de,0010h
3096 19        add     hl,de
3097 dd7505    ld      (ix+05h),l
309a dd7406    ld      (ix+06h),h
309d ddcb18c6  set     0,(ix+18h)
30a1 dd360d1c  ld      (ix+0dh),1ch
30a5 dd360e40  ld      (ix+0eh),40h
30a9 21ad75    ld      hl,75adh
30ac ddcb184e  bit     1,(ix+18h)
30b0 2803      jr      z,30b5h          ; (+03h)
30b2 21c575    ld      hl,75c5h
30b5 3a24d2    ld      a,(0d224h)
30b8 0f        rrca    
30b9 3004      jr      nc,30bfh         ; (+04h)
30bb 110c00    ld      de,000ch
30be 19        add     hl,de
30bf 4e        ld      c,(hl)
30c0 23        inc     hl
30c1 46        ld      b,(hl)
30c2 23        inc     hl
30c3 eb        ex      de,hl
30c4 dd6e02    ld      l,(ix+02h)
30c7 dd6603    ld      h,(ix+03h)
30ca 09        add     hl,bc
30cb 22abd2    ld      (0d2abh),hl
30ce eb        ex      de,hl
30cf 4e        ld      c,(hl)
30d0 23        inc     hl
30d1 46        ld      b,(hl)
30d2 23        inc     hl
30d3 22afd2    ld      (0d2afh),hl
30d6 dd6e05    ld      l,(ix+05h)
30d9 dd6606    ld      h,(ix+06h)
30dc 09        add     hl,bc
30dd 22add2    ld      (0d2adh),hl
30e0 217775    ld      hl,7577h
30e3 3a24d2    ld      a,(0d224h)
30e6 e610      and     10h
30e8 2803      jr      z,30edh          ; (+03h)
30ea 219b75    ld      hl,759bh
30ed dd750f    ld      (ix+0fh),l
30f0 dd7410    ld      (ix+10h),h
30f3 2a54d2    ld      hl,(0d254h)
30f6 226dd2    ld      (0d26dh),hl
30f9 dd6e02    ld      l,(ix+02h)
30fc dd6603    ld      h,(ix+03h)
30ff 1190ff    ld      de,0ff90h
3102 19        add     hl,de
3103 226fd2    ld      (0d26fh),hl
3106 210200    ld      hl,0002h
3109 2215d2    ld      (0d215h),hl
310c cd2633    call    3326h
310f daa474    jp      c,74a4h
3112 3a09d4    ld      a,(0d409h)
3115 a7        and     a
3116 faa474    jp      m,74a4h
3119 dd5e05    ld      e,(ix+05h)
311c dd5606    ld      d,(ix+06h)
311f 2a02d4    ld      hl,(0d402h)
3122 a7        and     a
3123 ed52      sbc     hl,de
3125 3826      jr      c,314dh          ; (+26h)
3127 dd6e02    ld      l,(ix+02h)
312a dd6603    ld      h,(ix+03h)
312d 111000    ld      de,0010h
3130 19        add     hl,de
3131 11f2ff    ld      de,0fff2h
3134 ed4bffd3  ld      bc,(0d3ffh)
3138 a7        and     a
3139 ed42      sbc     hl,bc
313b 3003      jr      nc,3140h         ; (+03h)
313d 111d00    ld      de,001dh
3140 dd6e02    ld      l,(ix+02h)
3143 dd6603    ld      h,(ix+03h)
3146 19        add     hl,de
3147 22ffd3    ld      (0d3ffh),hl
314a c39b74    jp      749bh
314d 2affd3    ld      hl,(0d3ffh)
3150 010800    ld      bc,0008h
3153 09        add     hl,bc
3154 4d        ld      c,l
3155 44        ld      b,h
3156 dd5e02    ld      e,(ix+02h)
3159 dd5603    ld      d,(ix+03h)
315c a7        and     a
315d ed52      sbc     hl,de
315f d8        ret     c

3160 eb        ex      de,hl
3161 112000    ld      de,0020h
3164 19        add     hl,de
3165 a7        and     a
3166 ed42      sbc     hl,bc
3168 d8        ret     c

3169 79        ld      a,c
316a e61f      and     1fh
316c 4f        ld      c,a
316d 0600      ld      b,00h
316f 215775    ld      hl,7557h
3172 09        add     hl,bc
3173 4e        ld      c,(hl)
3174 dd6e05    ld      l,(ix+05h)
3177 dd6606    ld      h,(ix+06h)
317a 11e0ff    ld      de,0ffe0h
317d 19        add     hl,de
317e 09        add     hl,bc
317f 2202d4    ld      (0d402h),hl
3182 3ae9d2    ld      a,(0d2e9h)
3185 2ae7d2    ld      hl,(0d2e7h)
3188 2207d4    ld      (0d407h),hl
318b 3209d4    ld      (0d409h),a
318e 2115d4    ld      hl,0d415h
3191 cbfe      set     7,(hl)
3193 79        ld      a,c
3194 fe03      cp      03h
3196 c0        ret     nz

3197 dd360f89  ld      (ix+0fh),89h
319b dd361075  ld      (ix+10h),75h
319f fdcb064e  bit     1,(iy+06h)
31a3 2012      jr      nz,31b7h         ; (+12h)
31a5 fdcb06ce  set     1,(iy+06h)
31a9 af        xor     a
31aa 6f        ld      l,a
31ab 67        ld      h,a
31ac 2204d4    ld      (0d404h),hl
31af 3206d4    ld      (0d406h),a
31b2 fdcb064e  bit     1,(iy+06h)
31b6 c8        ret     z

31b7 fdcb00ae  res     5,(iy+00h)
31bb dd7e12    ld      a,(ix+12h)
31be fe08      cp      08h
31c0 3014      jr      nc,31d6h         ; (+14h)
31c2 dd3411    inc     (ix+11h)
31c5 dd7e11    ld      a,(ix+11h)
31c8 fe14      cp      14h
31ca d8        ret     c

31cb dd361100  ld      (ix+11h),00h
31cf cd7d7a    call    7a7dh
31d2 dd3412    inc     (ix+12h)
31d5 c9        ret     

31d6 ddcb184e  bit     1,(ix+18h)
31da 200c      jr      nz,31e8h         ; (+0ch)
31dc 3ea0      ld      a,0a0h
31de 3283d2    ld      (0d283h),a
31e1 3e09      ld      a,09h
31e3 df        rst     18h
31e4 ddcb18ce  set     1,(ix+18h)
31e8 af        xor     a
31e9 dd770f    ld      (ix+0fh),a
31ec dd7710    ld      (ix+10h),a
31ef 3a24d2    ld      a,(0d224h)
31f2 e60f      and     0fh
31f4 c0        ret     nz

31f5 cd6306    call    0663h
31f8 e601      and     01h
31fa c623      add     a,23h
31fc cdff74    call    74ffh
31ff dd3416    inc     (ix+16h)
3202 dd7e16    ld      a,(ix+16h)
3205 fe0c      cp      0ch
3207 d8        ret     c

3208 dd3600ff  ld      (ix+00h),0ffh
320c c9        ret     

320d 3217d2    ld      (0d217h),a
3210 cdb67c    call    7cb6h
3213 d8        ret     c

3214 dd5e02    ld      e,(ix+02h)
3217 dd5603    ld      d,(ix+03h)
321a dd4e05    ld      c,(ix+05h)
321d dd4606    ld      b,(ix+06h)
3220 dde5      push    ix
3222 e5        push    hl
3223 dde1      pop     ix
3225 3a17d2    ld      a,(0d217h)
3228 dd7700    ld      (ix+00h),a
322b af        xor     a
322c dd7716    ld      (ix+16h),a
322f dd7717    ld      (ix+17h),a
3232 dd7701    ld      (ix+01h),a
3235 210800    ld      hl,0008h
3238 19        add     hl,de
3239 dd7502    ld      (ix+02h),l
323c dd7403    ld      (ix+03h),h
323f dd7704    ld      (ix+04h),a
3242 211a00    ld      hl,001ah
3245 09        add     hl,bc
3246 dd7505    ld      (ix+05h),l
3249 dd7406    ld      (ix+06h),h
324c cd6306    call    0663h
324f dd770a    ld      (ix+0ah),a
3252 cd6306    call    0663h
3255 e601      and     01h
3257 3c        inc     a
3258 3c        inc     a
3259 ed44      neg     
325b dd770b    ld      (ix+0bh),a
325e dd360cff  ld      (ix+0ch),0ffh
3262 dde1      pop     ix
3264 c9        ret     

3265 15        dec     d
3266 12        ld      (de),a
3267 111010    ld      de,1010h
326a 0f        rrca    
326b 0e0d      ld      c,0dh
326d 03        inc     bc
326e 03        inc     bc
326f 03        inc     bc
3270 03        inc     bc
3271 03        inc     bc
3272 03        inc     bc
3273 03        inc     bc
3274 03        inc     bc
3275 03        inc     bc
3276 03        inc     bc
3277 03        inc     bc
3278 03        inc     bc
3279 03        inc     bc
327a 03        inc     bc
327b 03        inc     bc
327c 03        inc     bc
327d 0d        dec     c
327e 0e0f      ld      c,0fh
3280 1010      djnz    3292h            ; (+10h)
3282 111215    ld      de,1512h
3285 00        nop     
3286 02        ld      (bc),a
3287 04        inc     b
3288 06ff      ld      b,0ffh
328a ff        rst     38h
328b 2022      jr      nz,32afh         ; (+22h)
328d 24        inc     h
328e 26ff      ld      h,0ffh
3290 ff        rst     38h
3291 40        ld      b,b
3292 42        ld      b,d
3293 44        ld      b,h
3294 46        ld      b,(hl)
3295 ff        rst     38h
3296 ff        rst     38h
3297 00        nop     
3298 08        ex      af,af'
3299 0a        ld      a,(bc)
329a 06ff      ld      b,0ffh
329c ff        rst     38h
329d 2022      jr      nz,32c1h         ; (+22h)
329f 24        inc     h
32a0 26ff      ld      h,0ffh
32a2 ff        rst     38h
32a3 40        ld      b,b
32a4 42        ld      b,d
32a5 44        ld      b,h
32a6 46        ld      b,(hl)
32a7 ff        rst     38h
32a8 ff        rst     38h
32a9 00        nop     
32aa 68        ld      l,b
32ab 6a        ld      l,d
32ac 06ff      ld      b,0ffh
32ae ff        rst     38h
32af 2022      jr      nz,32d3h         ; (+22h)
32b1 24        inc     h
32b2 26ff      ld      h,0ffh
32b4 ff        rst     38h
32b5 40        ld      b,b
32b6 42        ld      b,d
32b7 44        ld      b,h
32b8 46        ld      b,(hl)
32b9 ff        rst     38h
32ba ff        rst     38h
32bb 00        nop     
32bc 00        nop     
32bd 3000      jr      nc,32bfh         ; (+00h)
32bf 60        ld      h,b
32c0 19        add     hl,de
32c1 62        ld      h,d
32c2 19        add     hl,de
32c3 61        ld      h,c
32c4 19        add     hl,de
32c5 63        ld      h,e
32c6 19        add     hl,de
32c7 1000      djnz    32c9h            ; (+00h)
32c9 3000      jr      nc,32cbh         ; (+00h)
32cb 64        ld      h,h
32cc 19        add     hl,de
32cd 66        ld      h,(hl)
32ce 19        add     hl,de
32cf 65        ld      h,l
32d0 19        add     hl,de
32d1 67        ld      h,a
32d2 19        add     hl,de
32d3 00        nop     
32d4 00        nop     
32d5 2000      jr      nz,32d7h         ; (+00h)
32d7 00        nop     
32d8 00        nop     
32d9 00        nop     
32da 00        nop     
32db 49        ld      c,c
32dc 19        add     hl,de
32dd 4b        ld      c,e
32de 19        add     hl,de
32df 1000      djnz    32e1h            ; (+00h)
32e1 2000      jr      nz,32e3h         ; (+00h)
32e3 00        nop     
32e4 00        nop     
32e5 00        nop     
32e6 00        nop     
32e7 4d        ld      c,l
32e8 19        add     hl,de
32e9 4f        ld      c,a
32ea 19        add     hl,de
32eb ddcb18ae  res     5,(ix+18h)
32ef dd360d0c  ld      (ix+0dh),0ch
32f3 dd360e10  ld      (ix+0eh),10h
32f7 ddcb187e  bit     7,(ix+18h)
32fb 280c      jr      z,3309h          ; (+0ch)
32fd dd360a00  ld      (ix+0ah),00h
3301 dd360bfd  ld      (ix+0bh),0fdh
3305 dd360cff  ld      (ix+0ch),0ffh
3309 111200    ld      de,0012h
330c 3ad5d2    ld      a,(0d2d5h)
330f fe03      cp      03h
3311 2003      jr      nz,3316h         ; (+03h)
3313 113800    ld      de,0038h
3316 dd6e0a    ld      l,(ix+0ah)
3319 dd660b    ld      h,(ix+0bh)
331c dd7e0c    ld      a,(ix+0ch)
331f 19        add     hl,de
3320 ce00      adc     a,00h
3322 4f        ld      c,a
3323 fa2276    jp      m,7622h
3326 7c        ld      a,h
3327 fe02      cp      02h
3329 3805      jr      c,3330h          ; (+05h)
332b 210002    ld      hl,0200h
332e 0e00      ld      c,00h
3330 dd750a    ld      (ix+0ah),l
3333 dd740b    ld      (ix+0bh),h
3336 dd710c    ld      (ix+0ch),c
3339 2100fe    ld      hl,0fe00h
333c 3ad5d2    ld      a,(0d2d5h)
333f fe03      cp      03h
3341 2003      jr      nz,3346h         ; (+03h)
3343 2180fe    ld      hl,0fe80h
3346 dd7507    ld      (ix+07h),l
3349 dd7408    ld      (ix+08h),h
334c dd3609ff  ld      (ix+09h),0ffh
3350 017276    ld      bc,7672h
3353 3ad5d2    ld      a,(0d2d5h)
3356 a7        and     a
3357 280a      jr      z,3363h          ; (+0ah)
3359 017776    ld      bc,7677h
335c fe03      cp      03h
335e 2003      jr      nz,3363h         ; (+03h)
3360 017c76    ld      bc,767ch
3363 118176    ld      de,7681h
3366 cd7c7c    call    7c7ch
3369 dd6e02    ld      l,(ix+02h)
336c dd6603    ld      h,(ix+03h)
336f 11e0ff    ld      de,0ffe0h
3372 19        add     hl,de
3373 ed5b54d2  ld      de,(0d254h)
3377 a7        and     a
3378 ed52      sbc     hl,de
337a d0        ret     nc

337b dd3600ff  ld      (ix+00h),0ffh
337f c9        ret     

3380 00        nop     
3381 02        ld      (bc),a
3382 0102ff    ld      bc,0ff02h
3385 02        ld      (bc),a
3386 04        inc     b
3387 03        inc     bc
3388 04        inc     b
3389 ff        rst     38h
338a 04        inc     b
338b 03        inc     bc
338c 05        dec     b
338d 03        inc     bc
338e ff        rst     38h
338f 1012      djnz    33a3h            ; (+12h)
3391 ff        rst     38h
3392 ff        rst     38h
3393 ff        rst     38h
3394 ff        rst     38h
3395 ff        rst     38h
3396 ff        rst     38h
3397 ff        rst     38h
3398 ff        rst     38h
3399 ff        rst     38h
339a ff        rst     38h
339b ff        rst     38h
339c ff        rst     38h
339d ff        rst     38h
339e ff        rst     38h
339f ff        rst     38h
33a0 ff        rst     38h
33a1 6e        ld      l,(hl)
33a2 0eff      ld      c,0ffh
33a4 ff        rst     38h
33a5 ff        rst     38h
33a6 ff        rst     38h
33a7 ff        rst     38h
33a8 ff        rst     38h
33a9 ff        rst     38h
33aa ff        rst     38h
33ab ff        rst     38h
33ac ff        rst     38h
33ad ff        rst     38h
33ae ff        rst     38h
33af ff        rst     38h
33b0 ff        rst     38h
33b1 ff        rst     38h
33b2 ff        rst     38h
33b3 282a      jr      z,33dfh          ; (+2ah)
33b5 ff        rst     38h
33b6 ff        rst     38h
33b7 ff        rst     38h
33b8 ff        rst     38h
33b9 ff        rst     38h
33ba ff        rst     38h
33bb ff        rst     38h
33bc ff        rst     38h
33bd ff        rst     38h
33be ff        rst     38h
33bf ff        rst     38h
33c0 ff        rst     38h
33c1 ff        rst     38h
33c2 ff        rst     38h
33c3 ff        rst     38h
33c4 ff        rst     38h
33c5 2c        inc     l
33c6 2eff      ld      l,0ffh
33c8 ff        rst     38h
33c9 ff        rst     38h
33ca ff        rst     38h
33cb ff        rst     38h
33cc ff        rst     38h
33cd ff        rst     38h
33ce ff        rst     38h
33cf ff        rst     38h
33d0 ff        rst     38h
33d1 ff        rst     38h
33d2 ff        rst     38h
33d3 ff        rst     38h
33d4 ff        rst     38h
33d5 ff        rst     38h
33d6 ff        rst     38h
33d7 3032      jr      nc,340bh         ; (+32h)
33d9 ff        rst     38h
33da ff        rst     38h
33db ff        rst     38h
33dc ff        rst     38h
33dd ff        rst     38h
33de ff        rst     38h
33df ff        rst     38h
33e0 ff        rst     38h
33e1 ff        rst     38h
33e2 ff        rst     38h
33e3 ff        rst     38h
33e4 ff        rst     38h
33e5 ff        rst     38h
33e6 ff        rst     38h
33e7 ff        rst     38h
33e8 ff        rst     38h
33e9 50        ld      d,b
33ea 52        ld      d,d
33eb ff        rst     38h
33ec ff        rst     38h
33ed ff        rst     38h
33ee ff        rst     38h
33ef ff        rst     38h
33f0 ddcb18ae  res     5,(ix+18h)
33f4 dd360d0c  ld      (ix+0dh),0ch
33f8 dd360e20  ld      (ix+0eh),20h
33fc 21a977    ld      hl,77a9h
33ff 3ad5d2    ld      a,(0d2d5h)
3402 a7        and     a
3403 280f      jr      z,3414h          ; (+0fh)
3405 21c477    ld      hl,77c4h
3408 3d        dec     a
3409 2809      jr      z,3414h          ; (+09h)
340b 21df77    ld      hl,77dfh
340e 3d        dec     a
340f 2803      jr      z,3414h          ; (+03h)
3411 21fa77    ld      hl,77fah
3414 dd750f    ld      (ix+0fh),l
3417 dd7410    ld      (ix+10h),h
341a ddcb187e  bit     7,(ix+18h)
341e 2850      jr      z,3470h          ; (+50h)
3420 af        xor     a
3421 dd770a    ld      (ix+0ah),a
3424 dd360b01  ld      (ix+0bh),01h
3428 dd770c    ld      (ix+0ch),a
342b dd7707    ld      (ix+07h),a
342e dd7708    ld      (ix+08h),a
3431 dd7709    ld      (ix+09h),a
3434 219b77    ld      hl,779bh
3437 3ad5d2    ld      a,(0d2d5h)
343a 4f        ld      c,a
343b a7        and     a
343c 280f      jr      z,344dh          ; (+0fh)
343e 21b677    ld      hl,77b6h
3441 3d        dec     a
3442 2809      jr      z,344dh          ; (+09h)
3444 21d177    ld      hl,77d1h
3447 3d        dec     a
3448 2803      jr      z,344dh          ; (+03h)
344a 21ec77    ld      hl,77ech
344d dd750f    ld      (ix+0fh),l
3450 dd7410    ld      (ix+10h),h
3453 dd3411    inc     (ix+11h)
3456 dd7e11    ld      a,(ix+11h)
3459 fe08      cp      08h
345b d8        ret     c

345c 21fcff    ld      hl,0fffch
345f 79        ld      a,c
3460 a7        and     a
3461 2803      jr      z,3466h          ; (+03h)
3463 21feff    ld      hl,0fffeh
3466 dd360a00  ld      (ix+0ah),00h
346a dd750b    ld      (ix+0bh),l
346d dd740c    ld      (ix+0ch),h
3470 dd6e0a    ld      l,(ix+0ah)
3473 dd660b    ld      h,(ix+0bh)
3476 dd7e0c    ld      a,(ix+0ch)
3479 112800    ld      de,0028h
347c 19        add     hl,de
347d ce00      adc     a,00h
347f 4f        ld      c,a
3480 fa7f77    jp      m,777fh
3483 7c        ld      a,h
3484 fe02      cp      02h
3486 3805      jr      c,348dh          ; (+05h)
3488 210002    ld      hl,0200h
348b 0e00      ld      c,00h
348d dd750a    ld      (ix+0ah),l
3490 dd740b    ld      (ix+0bh),h
3493 dd710c    ld      (ix+0ch),c
3496 dd360780  ld      (ix+07h),80h
349a dd3608fe  ld      (ix+08h),0feh
349e dd3609ff  ld      (ix+09h),0ffh
34a2 dd361100  ld      (ix+11h),00h
34a6 c35b76    jp      765bh
34a9 70        ld      (hl),b
34aa 72        ld      (hl),d
34ab ff        rst     38h
34ac ff        rst     38h
34ad ff        rst     38h
34ae ff        rst     38h
34af 54        ld      d,h
34b0 56        ld      d,(hl)
34b1 ff        rst     38h
34b2 ff        rst     38h
34b3 ff        rst     38h
34b4 ff        rst     38h
34b5 ff        rst     38h
34b6 ff        rst     38h
34b7 5c        ld      e,h
34b8 5e        ld      e,(hl)
34b9 ff        rst     38h
34ba ff        rst     38h
34bb ff        rst     38h
34bc ff        rst     38h
34bd 58        ld      e,b
34be 5a        ld      e,d
34bf ff        rst     38h
34c0 ff        rst     38h
34c1 ff        rst     38h
34c2 ff        rst     38h
34c3 ff        rst     38h
34c4 feff      cp      0ffh
34c6 ff        rst     38h
34c7 ff        rst     38h
34c8 ff        rst     38h
34c9 ff        rst     38h
34ca 34        inc     (hl)
34cb 36ff      ld      (hl),0ffh
34cd ff        rst     38h
34ce ff        rst     38h
34cf ff        rst     38h
34d0 ff        rst     38h
34d1 ff        rst     38h
34d2 feff      cp      0ffh
34d4 ff        rst     38h
34d5 ff        rst     38h
34d6 ff        rst     38h
34d7 ff        rst     38h
34d8 383a      jr      c,3514h          ; (+3ah)
34da ff        rst     38h
34db ff        rst     38h
34dc ff        rst     38h
34dd ff        rst     38h
34de ff        rst     38h
34df feff      cp      0ffh
34e1 ff        rst     38h
34e2 ff        rst     38h
34e3 ff        rst     38h
34e4 ff        rst     38h
34e5 3c        inc     a
34e6 3eff      ld      a,0ffh
34e8 ff        rst     38h
34e9 ff        rst     38h
34ea ff        rst     38h
34eb ff        rst     38h
34ec ff        rst     38h
34ed feff      cp      0ffh
34ef ff        rst     38h
34f0 ff        rst     38h
34f1 ff        rst     38h
34f2 ff        rst     38h
34f3 1c        inc     e
34f4 1eff      ld      e,0ffh
34f6 ff        rst     38h
34f7 ff        rst     38h
34f8 ff        rst     38h
34f9 ff        rst     38h
34fa feff      cp      0ffh
34fc ff        rst     38h
34fd ff        rst     38h
34fe ff        rst     38h
34ff ff        rst     38h
3500 14        inc     d
3501 16ff      ld      d,0ffh
3503 ff        rst     38h
3504 ff        rst     38h
3505 ff        rst     38h
3506 ff        rst     38h
3507 ff        rst     38h
3508 feff      cp      0ffh
350a ff        rst     38h
350b ff        rst     38h
350c ff        rst     38h
350d ff        rst     38h
350e 181a      jr      352ah            ; (+1ah)
3510 ff        rst     38h
3511 ff        rst     38h
3512 ff        rst     38h
3513 ff        rst     38h
3514 ff        rst     38h
3515 3aedd2    ld      a,(0d2edh)
3518 fe08      cp      08h
351a d28478    jp      nc,7884h
351d 21080c    ld      hl,0c08h
3520 2215d2    ld      (0d215h),hl
3523 cd2633    call    3326h
3526 d8        ret     c

3527 fdcb0546  bit     0,(iy+05h)
352b c0        ret     nz

352c 3ab1d2    ld      a,(0d2b1h)
352f a7        and     a
3530 c0        ret     nz

3531 110100    ld      de,0001h
3534 2a07d4    ld      hl,(0d407h)
3537 7d        ld      a,l
3538 2f        cpl     
3539 6f        ld      l,a
353a 7c        ld      a,h
353b 2f        cpl     
353c 67        ld      h,a
353d 3a09d4    ld      a,(0d409h)
3540 2f        cpl     
3541 19        add     hl,de
3542 8a        adc     a,d
3543 2207d4    ld      (0d407h),hl
3546 3209d4    ld      (0d409h),a
3549 af        xor     a
354a 6f        ld      l,a
354b 67        ld      h,a
354c 2204d4    ld      (0d404h),hl
354f 3206d4    ld      (0d406h),a
3552 3a15d4    ld      a,(0d415h)
3555 0f        rrca    
3556 3805      jr      c,355dh          ; (+05h)
3558 e602      and     02h
355a cad72f    jp      z,2fd7h
355d 21b1d2    ld      hl,0d2b1h
3560 3618      ld      (hl),18h
3562 23        inc     hl
3563 368f      ld      (hl),8fh
3565 23        inc     hl
3566 36ff      ld      (hl),0ffh
3568 23        inc     hl
3569 360f      ld      (hl),0fh
356b 21edd2    ld      hl,0d2edh
356e 34        inc     (hl)
356f 3e01      ld      a,01h
3571 ef        rst     28h
3572 2a17d2    ld      hl,(0d217h)
3575 116579    ld      de,7965h
3578 19        add     hl,de
3579 ddcb184e  bit     1,(ix+18h)
357d 2804      jr      z,3583h          ; (+04h)
357f 111200    ld      de,0012h
3582 19        add     hl,de
3583 dd750f    ld      (ix+0fh),l
3586 dd7410    ld      (ix+10h),h
3589 21eed2    ld      hl,0d2eeh
358c 3618      ld      (hl),18h
358e 23        inc     hl
358f 3600      ld      (hl),00h
3591 c9        ret     

3592 af        xor     a
3593 dd7707    ld      (ix+07h),a
3596 dd7708    ld      (ix+08h),a
3599 dd7709    ld      (ix+09h),a
359c dd770a    ld      (ix+0ah),a
359f dd770b    ld      (ix+0bh),a
35a2 dd770c    ld      (ix+0ch),a
35a5 112400    ld      de,0024h
35a8 2a17d2    ld      hl,(0d217h)
35ab ddcb184e  bit     1,(ix+18h)
35af 2803      jr      z,35b4h          ; (+03h)
35b1 113600    ld      de,0036h
35b4 19        add     hl,de
35b5 116579    ld      de,7965h
35b8 19        add     hl,de
35b9 dd750f    ld      (ix+0fh),l
35bc dd7410    ld      (ix+10h),h
35bf 21efd2    ld      hl,0d2efh
35c2 7e        ld      a,(hl)
35c3 fe0a      cp      0ah
35c5 d2c578    jp      nc,78c5h
35c8 2b        dec     hl
35c9 35        dec     (hl)
35ca c0        ret     nz

35cb 3618      ld      (hl),18h
35cd 23        inc     hl
35ce 34        inc     (hl)
35cf cd7d7a    call    7a7dh
35d2 c9        ret     

35d3 3aefd2    ld      a,(0d2efh)
35d6 fe3a      cp      3ah
35d8 3018      jr      nc,35f2h         ; (+18h)
35da dd6e04    ld      l,(ix+04h)
35dd dd6605    ld      h,(ix+05h)
35e0 dd7e06    ld      a,(ix+06h)
35e3 112000    ld      de,0020h
35e6 19        add     hl,de
35e7 ce00      adc     a,00h
35e9 dd7504    ld      (ix+04h),l
35ec dd7405    ld      (ix+05h),h
35ef dd7706    ld      (ix+06h),a
35f2 21efd2    ld      hl,0d2efh
35f5 7e        ld      a,(hl)
35f6 fe5a      cp      5ah
35f8 3002      jr      nc,35fch         ; (+02h)
35fa 34        inc     (hl)
35fb c9        ret     

35fc 2013      jr      nz,3611h         ; (+13h)
35fe 365b      ld      (hl),5bh
3600 3af7d2    ld      a,(0d2f7h)
3603 df        rst     18h
3604 fd7e0a    ld      a,(iy+0ah)
3607 fdcb0086  res     0,(iy+00h)
360b cdef02    call    02efh
360e fd770a    ld      (iy+0ah),a
3611 dd360700  ld      (ix+07h),00h
3615 dd360803  ld      (ix+08h),03h
3619 dd360900  ld      (ix+09h),00h
361d dd360a60  ld      (ix+0ah),60h
3621 dd360bff  ld      (ix+0bh),0ffh
3625 dd360cff  ld      (ix+0ch),0ffh
3629 dd360f65  ld      (ix+0fh),65h
362d dd361079  ld      (ix+10h),79h
3631 dd6e02    ld      l,(ix+02h)
3634 dd6603    ld      h,(ix+03h)
3637 ed5b54d2  ld      de,(0d254h)
363b 14        inc     d
363c a7        and     a
363d ed52      sbc     hl,de
363f d8        ret     c

3640 dd3600ff  ld      (ix+00h),0ffh
3644 210020    ld      hl,2000h
3647 226fd2    ld      (0d26fh),hl
364a 210000    ld      hl,0000h
364d 2275d2    ld      (0d275h),hl
3650 fdcb00ee  set     5,(iy+00h)
3654 fdcb02c6  set     0,(iy+02h)
3658 fdcb028e  res     1,(iy+02h)
365c 3a38d2    ld      a,(0d238h)
365f fe0b      cp      0bh
3661 2004      jr      nz,3667h         ; (+04h)
3663 fdcb09ce  set     1,(iy+09h)
3667 21d0da    ld      hl,0dad0h
366a 110020    ld      de,2000h
366d 3e0c      ld      a,0ch
366f cdce03    call    03ceh
3672 c9        ret     

3673 2a2c2e    ld      hl,(2e2ch)
3676 3032      jr      nc,36aah         ; (+32h)
3678 ff        rst     38h
3679 4a        ld      c,d
367a 4c        ld      c,h
367b 4e        ld      c,(hl)
367c 50        ld      d,b
367d 52        ld      d,d
367e ff        rst     38h
367f 6a        ld      l,d
3680 6c        ld      l,h
3681 6e        ld      l,(hl)
3682 70        ld      (hl),b
3683 72        ld      (hl),d
3684 ff        rst     38h
3685 2010      jr      nz,3697h         ; (+10h)
3687 12        ld      (de),a
3688 14        inc     d
3689 28ff      jr      z,368ah          ; (-01h)
368b 40        ld      b,b
368c 42        ld      b,d
368d 44        ld      b,h
368e 46        ld      b,(hl)
368f 48        ld      c,b
3690 ff        rst     38h
3691 60        ld      h,b
3692 62        ld      h,d
3693 64        ld      h,h
3694 66        ld      h,(hl)
3695 68        ld      l,b
3696 ff        rst     38h
3697 2a1618    ld      hl,(1816h)
369a 1a        ld      a,(de)
369b 32ff4a    ld      (4affh),a
369e 4c        ld      c,h
369f 4e        ld      c,(hl)
36a0 50        ld      d,b
36a1 52        ld      d,d
36a2 ff        rst     38h
36a3 6a        ld      l,d
36a4 6c        ld      l,h
36a5 6e        ld      l,(hl)
36a6 70        ld      (hl),b
36a7 72        ld      (hl),d
36a8 ff        rst     38h
36a9 203a      jr      nz,36e5h         ; (+3ah)
36ab 3c        inc     a
36ac 3e28      ld      a,28h
36ae ff        rst     38h
36af 40        ld      b,b
36b0 42        ld      b,d
36b1 44        ld      b,h
36b2 46        ld      b,(hl)
36b3 48        ld      c,b
36b4 ff        rst     38h
36b5 60        ld      h,b
36b6 62        ld      h,d
36b7 64        ld      h,h
36b8 66        ld      h,(hl)
36b9 68        ld      l,b
36ba ff        rst     38h
36bb 2a3436    ld      hl,(3634h)
36be 3832      jr      c,36f2h          ; (+32h)
36c0 ff        rst     38h
36c1 4a        ld      c,d
36c2 4c        ld      c,h
36c3 4e        ld      c,(hl)
36c4 50        ld      d,b
36c5 52        ld      d,d
36c6 ff        rst     38h
36c7 6a        ld      l,d
36c8 6c        ld      l,h
36c9 6e        ld      l,(hl)
36ca 70        ld      (hl),b
36cb 72        ld      (hl),d
36cc ff        rst     38h
36cd 2010      jr      nz,36dfh         ; (+10h)
36cf 12        ld      (de),a
36d0 14        inc     d
36d1 28ff      jr      z,36d2h          ; (-01h)
36d3 40        ld      b,b
36d4 42        ld      b,d
36d5 44        ld      b,h
36d6 46        ld      b,(hl)
36d7 48        ld      c,b
36d8 ff        rst     38h
36d9 60        ld      h,b
36da 54        ld      d,h
36db 56        ld      d,(hl)
36dc 66        ld      h,(hl)
36dd 68        ld      l,b
36de ff        rst     38h
36df 2a1618    ld      hl,(1816h)
36e2 1a        ld      a,(de)
36e3 32ff4a    ld      (4affh),a
36e6 4c        ld      c,h
36e7 4e        ld      c,(hl)
36e8 50        ld      d,b
36e9 52        ld      d,d
36ea ff        rst     38h
36eb 6a        ld      l,d
36ec 5a        ld      e,d
36ed 5c        ld      e,h
36ee 70        ld      (hl),b
36ef 72        ld      (hl),d
36f0 ff        rst     38h
36f1 203a      jr      nz,372dh         ; (+3ah)
36f3 3c        inc     a
36f4 3e28      ld      a,28h
36f6 ff        rst     38h
36f7 40        ld      b,b
36f8 42        ld      b,d
36f9 44        ld      b,h
36fa 46        ld      b,(hl)
36fb 48        ld      c,b
36fc ff        rst     38h
36fd 60        ld      h,b
36fe 54        ld      d,h
36ff 56        ld      d,(hl)
3700 66        ld      h,(hl)
3701 68        ld      l,b
3702 ff        rst     38h
3703 2a3436    ld      hl,(3634h)
3706 3832      jr      c,373ah          ; (+32h)
3708 ff        rst     38h
3709 4a        ld      c,d
370a 4c        ld      c,h
370b 4e        ld      c,(hl)
370c 50        ld      d,b
370d 52        ld      d,d
370e ff        rst     38h
370f 6a        ld      l,d
3710 5a        ld      e,d
3711 5c        ld      e,h
3712 70        ld      (hl),b
3713 72        ld      (hl),d
3714 ff        rst     38h
3715 2006      jr      nz,371dh         ; (+06h)
3717 08        ex      af,af'
3718 0a        ld      a,(bc)
3719 28ff      jr      z,371ah          ; (-01h)
371b 40        ld      b,b
371c 42        ld      b,d
371d 44        ld      b,h
371e 46        ld      b,(hl)
371f 48        ld      c,b
3720 ff        rst     38h
3721 60        ld      h,b
3722 62        ld      h,d
3723 64        ld      h,h
3724 66        ld      h,(hl)
3725 68        ld      l,b
3726 ff        rst     38h
3727 2006      jr      nz,372fh         ; (+06h)
3729 08        ex      af,af'
372a 0a        ld      a,(bc)
372b 28ff      jr      z,372ch          ; (-01h)
372d 40        ld      b,b
372e 42        ld      b,d
372f 44        ld      b,h
3730 46        ld      b,(hl)
3731 48        ld      c,b
3732 ff        rst     38h
3733 60        ld      h,b
3734 62        ld      h,d
3735 64        ld      h,h
3736 66        ld      h,(hl)
3737 68        ld      l,b
3738 ff        rst     38h
3739 0e10      ld      c,10h
373b 12        ld      (de),a
373c 14        inc     d
373d 16ff      ld      d,0ffh
373f 40        ld      b,b
3740 42        ld      b,d
3741 44        ld      b,h
3742 46        ld      b,(hl)
3743 48        ld      c,b
3744 ff        rst     38h
3745 60        ld      h,b
3746 62        ld      h,d
3747 64        ld      h,h
3748 66        ld      h,(hl)
3749 68        ld      l,b
374a ff        rst     38h
374b dd7e07    ld      a,(ix+07h)
374e ddb608    or      (ix+08h)
3751 c8        ret     z

3752 3a24d2    ld      a,(0d224h)
3755 cb47      bit     0,a
3757 c0        ret     nz

3758 e602      and     02h
375a dd6e02    ld      l,(ix+02h)
375d dd6603    ld      h,(ix+03h)
3760 220fd2    ld      (0d20fh),hl
3763 dd6e05    ld      l,(ix+05h)
3766 dd6606    ld      h,(ix+06h)
3769 2211d2    ld      (0d211h),hl
376c 21f8ff    ld      hl,0fff8h
376f 111000    ld      de,0010h
3772 0e04      ld      c,04h
3774 ddcb097e  bit     7,(ix+09h)
3778 2805      jr      z,377fh          ; (+05h)
377a 212800    ld      hl,0028h
377d 0e00      ld      c,00h
377f 2213d2    ld      (0d213h),hl
3782 ed5315d2  ld      (0d215h),de
3786 81        add     a,c
3787 cd5b2f    call    2f5bh
378a c9        ret     

378b cdb67c    call    7cb6h
378e d8        ret     c

378f e5        push    hl
3790 cd6306    call    0663h
3793 e61f      and     1fh
3795 6f        ld      l,a
3796 2600      ld      h,00h
3798 220fd2    ld      (0d20fh),hl
379b cd6306    call    0663h
379e e61f      and     1fh
37a0 6f        ld      l,a
37a1 2600      ld      h,00h
37a3 2211d2    ld      (0d211h),hl
37a6 e1        pop     hl
37a7 dd5e02    ld      e,(ix+02h)
37aa dd5603    ld      d,(ix+03h)
37ad dd4e05    ld      c,(ix+05h)
37b0 dd4606    ld      b,(ix+06h)
37b3 dde5      push    ix
37b5 e5        push    hl
37b6 dde1      pop     ix
37b8 af        xor     a
37b9 dd36000a  ld      (ix+00h),0ah
37bd dd7701    ld      (ix+01h),a
37c0 2a0fd2    ld      hl,(0d20fh)
37c3 19        add     hl,de
37c4 dd7502    ld      (ix+02h),l
37c7 dd7403    ld      (ix+03h),h
37ca dd7704    ld      (ix+04h),a
37cd 2a11d2    ld      hl,(0d211h)
37d0 09        add     hl,bc
37d1 dd7505    ld      (ix+05h),l
37d4 dd7406    ld      (ix+06h),h
37d7 dd7711    ld      (ix+11h),a
37da dd7716    ld      (ix+16h),a
37dd dd7717    ld      (ix+17h),a
37e0 dd7707    ld      (ix+07h),a
37e3 dd7708    ld      (ix+08h),a
37e6 dd7709    ld      (ix+09h),a
37e9 dd770a    ld      (ix+0ah),a
37ec dd770b    ld      (ix+0bh),a
37ef dd770c    ld      (ix+0ch),a
37f2 dde1      pop     ix
37f4 3e01      ld      a,01h
37f6 ef        rst     28h
37f7 c9        ret     

37f8 ddcb18ee  set     5,(ix+18h)
37fc dd360d40  ld      (ix+0dh),40h
3800 dd360e40  ld      (ix+0eh),40h
3804 210000    ld      hl,0000h
3807 2215d2    ld      (0d215h),hl
380a cd2633    call    3326h
380d d8        ret     c

380e fdcb0676  bit     6,(iy+06h)
3812 c0        ret     nz

3813 3a15d4    ld      a,(0d415h)
3816 e680      and     80h
3818 c8        ret     z

3819 21fbff    ld      hl,0fffbh
381c af        xor     a
381d 3207d4    ld      (0d407h),a
3820 2208d4    ld      (0d408h),hl
3823 210300    ld      hl,0003h
3826 af        xor     a
3827 3204d4    ld      (0d404h),a
382a 2205d4    ld      (0d405h),hl
382d 2115d4    ld      hl,0d415h
3830 cb8e      res     1,(hl)
3832 fdcb06f6  set     6,(iy+06h)
3836 fd3603ff  ld      (iy+03h),0ffh
383a 3e11      ld      a,11h
383c ef        rst     28h
383d c9        ret     

383e ddcb18ee  set     5,(ix+18h)
3842 ddcb1846  bit     0,(ix+18h)
3846 200c      jr      nz,3854h         ; (+0ch)
3848 dd361132  ld      (ix+11h),32h
384c dd361200  ld      (ix+12h),00h
3850 ddcb18c6  set     0,(ix+18h)
3854 010000    ld      bc,0000h
3857 dd6e02    ld      l,(ix+02h)
385a dd6603    ld      h,(ix+03h)
385d 22abd2    ld      (0d2abh),hl
3860 dd6e05    ld      l,(ix+05h)
3863 dd6606    ld      h,(ix+06h)
3866 3a24d2    ld      a,(0d224h)
3869 0f        rrca    
386a 3005      jr      nc,3871h         ; (+05h)
386c 111000    ld      de,0010h
386f 19        add     hl,de
3870 03        inc     bc
3871 22add2    ld      (0d2adh),hl
3874 dd7e12    ld      a,(ix+12h)
3877 87        add     a,a
3878 87        add     a,a
3879 5f        ld      e,a
387a 1600      ld      d,00h
387c 21c87b    ld      hl,7bc8h
387f 19        add     hl,de
3880 e5        push    hl
3881 09        add     hl,bc
3882 7e        ld      a,(hl)
3883 87        add     a,a
3884 87        add     a,a
3885 87        add     a,a
3886 5f        ld      e,a
3887 1600      ld      d,00h
3889 21a07b    ld      hl,7ba0h
388c 19        add     hl,de
388d 22afd2    ld      (0d2afh),hl
3890 e1        pop     hl
3891 23        inc     hl
3892 23        inc     hl
3893 3a24d2    ld      a,(0d224h)
3896 0f        rrca    
3897 d8        ret     c

3898 dd3511    dec     (ix+11h)
389b c0        ret     nz

389c 7e        ld      a,(hl)
389d dd7711    ld      (ix+11h),a
38a0 dd3412    inc     (ix+12h)
38a3 dd7e12    ld      a,(ix+12h)
38a6 fe04      cp      04h
38a8 d8        ret     c

38a9 dd361200  ld      (ix+12h),00h
38ad c9        ret     

38ae 00        nop     
38af 00        nop     
38b0 00        nop     
38b1 00        nop     
38b2 00        nop     
38b3 00        nop     
38b4 00        nop     
38b5 00        nop     
38b6 f0        ret     p

38b7 00        nop     
38b8 f1        pop     af
38b9 00        nop     
38ba e200f2    jp      po,0f200h
38bd 00        nop     
38be 00        nop     
38bf 00        nop     
38c0 00        nop     
38c1 00        nop     
38c2 f0        ret     p

38c3 00        nop     
38c4 f1        pop     af
38c5 00        nop     
38c6 e200f2    jp      po,0f200h
38c9 00        nop     
38ca 2e00      ld      l,00h
38cc 2f        cpl     
38cd 00        nop     
38ce 2e00      ld      l,00h
38d0 2f        cpl     
38d1 00        nop     
38d2 2e00      ld      l,00h
38d4 2f        cpl     
38d5 00        nop     
38d6 00        nop     
38d7 010800    ld      bc,0008h
38da 02        ld      (bc),a
38db 03        inc     bc
38dc 78        ld      a,b
38dd 00        nop     
38de 010408    ld      bc,0804h
38e1 00        nop     
38e2 02        ld      (bc),a
38e3 03        inc     bc
38e4 78        ld      a,b
38e5 00        nop     
38e6 ddcb18ee  set     5,(ix+18h)
38ea fdcb09c6  set     0,(iy+09h)
38ee 3a24d2    ld      a,(0d224h)
38f1 e601      and     01h
38f3 ca057c    jp      z,7c05h
38f6 dd7e12    ld      a,(ix+12h)
38f9 4f        ld      c,a
38fa 87        add     a,a
38fb 81        add     a,c
38fc 4f        ld      c,a
38fd 0600      ld      b,00h
38ff 215a7c    ld      hl,7c5ah
3902 09        add     hl,bc
3903 5e        ld      e,(hl)
3904 23        inc     hl
3905 56        ld      d,(hl)
3906 23        inc     hl
3907 7e        ld      a,(hl)
3908 dd730f    ld      (ix+0fh),e
390b dd7210    ld      (ix+10h),d
390e 32fdd2    ld      (0d2fdh),a
3911 1806      jr      3919h            ; (+06h)
3913 dd770f    ld      (ix+0fh),a
3916 dd7710    ld      (ix+10h),a
3919 dd6e0a    ld      l,(ix+0ah)
391c dd660b    ld      h,(ix+0bh)
391f dd7e0c    ld      a,(ix+0ch)
3922 112000    ld      de,0020h
3925 19        add     hl,de
3926 ce00      adc     a,00h
3928 dd750a    ld      (ix+0ah),l
392b dd740b    ld      (ix+0bh),h
392e dd770c    ld      (ix+0ch),a
3931 dd5e05    ld      e,(ix+05h)
3934 dd5606    ld      d,(ix+06h)
3937 2a57d2    ld      hl,(0d257h)
393a 24        inc     h
393b af        xor     a
393c ed52      sbc     hl,de
393e 3009      jr      nc,3949h         ; (+09h)
3940 dd3600ff  ld      (ix+00h),0ffh
3944 fdcb0986  res     0,(iy+09h)
3948 c9        ret     

3949 dd7707    ld      (ix+07h),a
394c dd7708    ld      (ix+08h),a
394f dd7709    ld      (ix+09h),a
3952 dd3511    dec     (ix+11h)
3955 c0        ret     nz

3956 dd361104  ld      (ix+11h),04h
395a dd3412    inc     (ix+12h)
395d dd7e12    ld      a,(ix+12h)
3960 fe06      cp      06h
3962 d8        ret     c

3963 dd361200  ld      (ix+12h),00h
3967 c9        ret     

3968 6c        ld      l,h
3969 7c        ld      a,h
396a 01747c    ld      bc,7c74h
396d 016c7c    ld      bc,7c6ch
3970 02        ld      (bc),a
3971 74        ld      (hl),h
3972 7c        ld      a,h
3973 02        ld      (bc),a
3974 6c        ld      l,h
3975 7c        ld      a,h
3976 03        inc     bc
3977 74        ld      (hl),h
3978 7c        ld      a,h
3979 03        inc     bc
397a b4        or      h
397b b6        or      (hl)
397c ff        rst     38h
397d ff        rst     38h
397e ff        rst     38h
397f ff        rst     38h
3980 ff        rst     38h
3981 ff        rst     38h
3982 b8        cp      b
3983 ba        cp      d
3984 ff        rst     38h
3985 ff        rst     38h
3986 ff        rst     38h
3987 ff        rst     38h
3988 ff        rst     38h
3989 ff        rst     38h
398a dd6e17    ld      l,(ix+17h)
398d 2600      ld      h,00h
398f 09        add     hl,bc
3990 7e        ld      a,(hl)
3991 feff      cp      0ffh
3993 2008      jr      nz,399dh         ; (+08h)
3995 2e00      ld      l,00h
3997 dd7517    ld      (ix+17h),l
399a c37f7c    jp      7c7fh
399d 23        inc     hl
399e e5        push    hl
399f 6f        ld      l,a
39a0 2600      ld      h,00h
39a2 29        add     hl,hl
39a3 4d        ld      c,l
39a4 44        ld      b,h
39a5 29        add     hl,hl
39a6 29        add     hl,hl
39a7 29        add     hl,hl
39a8 09        add     hl,bc
39a9 19        add     hl,de
39aa dd750f    ld      (ix+0fh),l
39ad dd7410    ld      (ix+10h),h
39b0 e1        pop     hl
39b1 dd3416    inc     (ix+16h)
39b4 7e        ld      a,(hl)
39b5 ddbe16    cp      (ix+16h)
39b8 d0        ret     nc

39b9 dd361600  ld      (ix+16h),00h
39bd dd3417    inc     (ix+17h)
39c0 dd3417    inc     (ix+17h)
39c3 c9        ret     

39c4 2117d4    ld      hl,0d417h
39c7 111a00    ld      de,001ah
39ca 061f      ld      b,1fh
39cc 7e        ld      a,(hl)
39cd feff      cp      0ffh
39cf c8        ret     z

39d0 19        add     hl,de
39d1 10f9      djnz    39cch            ; (-07h)
39d3 37        scf     
39d4 c9        ret     

39d5 2275d2    ld      (0d275h),hl
39d8 ed5377d2  ld      (0d277h),de
39dc 2a54d2    ld      hl,(0d254h)
39df 226dd2    ld      (0d26dh),hl
39e2 226fd2    ld      (0d26fh),hl
39e5 2a57d2    ld      hl,(0d257h)
39e8 2271d2    ld      (0d271h),hl
39eb 2273d2    ld      (0d273h),hl
39ee c9        ret     

39ef 2a75d2    ld      hl,(0d275h)
39f2 ed5b54d2  ld      de,(0d254h)
39f6 a7        and     a
39f7 ed52      sbc     hl,de
39f9 c0        ret     nz

39fa 2a77d2    ld      hl,(0d277h)
39fd ed5b57d2  ld      de,(0d257h)
3a01 a7        and     a
3a02 ed52      sbc     hl,de
3a04 c0        ret     nz

3a05 fdcb00ae  res     5,(iy+00h)
3a09 c9        ret     

3a0a dd6e04    ld      l,(ix+04h)
3a0d dd6605    ld      h,(ix+05h)
3a10 af        xor     a
3a11 cb7a      bit     7,d
3a13 2801      jr      z,3a16h          ; (+01h)
3a15 3d        dec     a
3a16 19        add     hl,de
3a17 dd8e06    adc     a,(ix+06h)
3a1a 6c        ld      l,h
3a1b 67        ld      h,a
3a1c 09        add     hl,bc
3a1d 3a0bd4    ld      a,(0d40bh)
3a20 4f        ld      c,a
3a21 af        xor     a
3a22 47        ld      b,a
3a23 ed42      sbc     hl,bc
3a25 2202d4    ld      (0d402h),hl
3a28 3ae9d2    ld      a,(0d2e9h)
3a2b 2ae7d2    ld      hl,(0d2e7h)
3a2e 2207d4    ld      (0d407h),hl
3a31 3209d4    ld      (0d409h),a
3a34 2115d4    ld      hl,0d415h
3a37 cbfe      set     7,(hl)
3a39 c9        ret     

3a3a ddcb18ee  set     5,(ix+18h)
3a3e dd360d08  ld      (ix+0dh),08h
3a42 dd360e0c  ld      (ix+0eh),0ch
3a46 dd7e14    ld      a,(ix+14h)
3a49 a7        and     a
3a4a 280b      jr      z,3a57h          ; (+0bh)
3a4c dd3514    dec     (ix+14h)
3a4f af        xor     a
3a50 dd770f    ld      (ix+0fh),a
3a53 dd7710    ld      (ix+10h),a
3a56 c9        ret     

3a57 ddcb1846  bit     0,(ix+18h)
3a5b 2043      jr      nz,3aa0h         ; (+43h)
3a5d ddcb184e  bit     1,(ix+18h)
3a61 2024      jr      nz,3a87h         ; (+24h)
3a63 dd6e05    ld      l,(ix+05h)
3a66 dd6606    ld      h,(ix+06h)
3a69 11f4ff    ld      de,0fff4h
3a6c 19        add     hl,de
3a6d dd7512    ld      (ix+12h),l
3a70 dd7413    ld      (ix+13h),h
3a73 dd6e02    ld      l,(ix+02h)
3a76 dd6603    ld      h,(ix+03h)
3a79 110800    ld      de,0008h
3a7c 19        add     hl,de
3a7d dd7502    ld      (ix+02h),l
3a80 dd7403    ld      (ix+03h),h
3a83 ddcb18ce  set     1,(ix+18h)
3a87 dd360a00  ld      (ix+0ah),00h
3a8b dd360bfc  ld      (ix+0bh),0fch
3a8f dd360cff  ld      (ix+0ch),0ffh
3a93 ddcb18c6  set     0,(ix+18h)
3a97 3e12      ld      a,12h
3a99 ef        rst     28h
3a9a dd361103  ld      (ix+11h),03h
3a9e 1853      jr      3af3h            ; (+53h)
3aa0 dd6e0a    ld      l,(ix+0ah)
3aa3 dd660b    ld      h,(ix+0bh)
3aa6 dd7e0c    ld      a,(ix+0ch)
3aa9 111000    ld      de,0010h
3aac 19        add     hl,de
3aad ce00      adc     a,00h
3aaf eb        ex      de,hl
3ab0 a7        and     a
3ab1 fab17d    jp      m,7db1h
3ab4 210004    ld      hl,0400h
3ab7 a7        and     a
3ab8 ed52      sbc     hl,de
3aba 3003      jr      nc,3abfh         ; (+03h)
3abc 110004    ld      de,0400h
3abf dd730a    ld      (ix+0ah),e
3ac2 dd720b    ld      (ix+0bh),d
3ac5 dd770c    ld      (ix+0ch),a
3ac8 dd5e12    ld      e,(ix+12h)
3acb dd5613    ld      d,(ix+13h)
3ace dd6e05    ld      l,(ix+05h)
3ad1 dd6606    ld      h,(ix+06h)
3ad4 af        xor     a
3ad5 ed52      sbc     hl,de
3ad7 381a      jr      c,3af3h          ; (+1ah)
3ad9 dd7704    ld      (ix+04h),a
3adc dd7305    ld      (ix+05h),e
3adf dd7206    ld      (ix+06h),d
3ae2 dd770a    ld      (ix+0ah),a
3ae5 dd770b    ld      (ix+0bh),a
3ae8 dd770c    ld      (ix+0ch),a
3aeb dd36141e  ld      (ix+14h),1eh
3aef ddcb1886  res     0,(ix+18h)
3af3 11177e    ld      de,7e17h
3af6 01127e    ld      bc,7e12h
3af9 cd7c7c    call    7c7ch
3afc dd7e11    ld      a,(ix+11h)
3aff a7        and     a
3b00 280b      jr      z,3b0dh          ; (+0bh)
3b02 dd3511    dec     (ix+11h)
3b05 dd360f2d  ld      (ix+0fh),2dh
3b09 dd36107e  ld      (ix+10h),7eh
3b0d 210402    ld      hl,0204h
3b10 2215d2    ld      (0d215h),hl
3b13 cd2633    call    3326h
3b16 210000    ld      hl,0000h
3b19 220fd2    ld      (0d20fh),hl
3b1c d4bf2f    call    nc,2fbfh
3b1f c9        ret     

3b20 00        nop     
3b21 04        inc     b
3b22 0104ff    ld      bc,0ff04h
3b25 60        ld      h,b
3b26 62        ld      h,d
3b27 ff        rst     38h
3b28 ff        rst     38h
3b29 ff        rst     38h
3b2a ff        rst     38h
3b2b ff        rst     38h
3b2c ff        rst     38h
3b2d ff        rst     38h
3b2e ff        rst     38h
3b2f ff        rst     38h
3b30 ff        rst     38h
3b31 ff        rst     38h
3b32 ff        rst     38h
3b33 ff        rst     38h
3b34 ff        rst     38h
3b35 ff        rst     38h
3b36 ff        rst     38h
3b37 64        ld      h,h
3b38 66        ld      h,(hl)
3b39 ff        rst     38h
3b3a ff        rst     38h
3b3b ff        rst     38h
3b3c ff        rst     38h
3b3d ff        rst     38h
3b3e ff        rst     38h
3b3f 68        ld      l,b
3b40 6a        ld      l,d
3b41 ff        rst     38h
3b42 ff        rst     38h
3b43 ff        rst     38h
3b44 ff        rst     38h
3b45 ff        rst     38h
3b46 ddcb18ee  set     5,(ix+18h)
3b4a dd360d0c  ld      (ix+0dh),0ch
3b4e dd360e10  ld      (ix+0eh),10h
3b52 dd360fbd  ld      (ix+0fh),0bdh
3b56 dd36107e  ld      (ix+10h),7eh
3b5a dd6e05    ld      l,(ix+05h)
3b5d dd6606    ld      h,(ix+06h)
3b60 2203d3    ld      (0d303h),hl
3b63 ddcb1846  bit     0,(ix+18h)
3b67 201f      jr      nz,3b88h         ; (+1fh)
3b69 dd7e05    ld      a,(ix+05h)
3b6c dd7712    ld      (ix+12h),a
3b6f dd7e06    ld      a,(ix+06h)
3b72 dd7713    ld      (ix+13h),a
3b75 dd3614c0  ld      (ix+14h),0c0h
3b79 ddcb18c6  set     0,(ix+18h)
3b7d dd360a80  ld      (ix+0ah),80h
3b81 af        xor     a
3b82 dd770b    ld      (ix+0bh),a
3b85 dd770c    ld      (ix+0ch),a
3b88 cda17e    call    7ea1h
3b8b 3a24d2    ld      a,(0d224h)
3b8e e603      and     03h
3b90 c0        ret     nz

3b91 dd3411    inc     (ix+11h)
3b94 dd7e11    ld      a,(ix+11h)
3b97 ddbe14    cp      (ix+14h)
3b9a d8        ret     c

3b9b af        xor     a
3b9c dd7711    ld      (ix+11h),a
3b9f dd7704    ld      (ix+04h),a
3ba2 dd7e12    ld      a,(ix+12h)
3ba5 dd7705    ld      (ix+05h),a
3ba8 dd7e13    ld      a,(ix+13h)
3bab dd7706    ld      (ix+06h),a
3bae c9        ret     

3baf 3a09d4    ld      a,(0d409h)
3bb2 a7        and     a
3bb3 f8        ret     m

3bb4 210608    ld      hl,0806h
3bb7 2215d2    ld      (0d215h),hl
3bba cd2633    call    3326h
3bbd d8        ret     c

3bbe 011000    ld      bc,0010h
3bc1 dd5e0a    ld      e,(ix+0ah)
3bc4 dd560b    ld      d,(ix+0bh)
3bc7 cdfc7c    call    7cfch
3bca c9        ret     

3bcb feff      cp      0ffh
3bcd ff        rst     38h
3bce ff        rst     38h
3bcf ff        rst     38h
3bd0 ff        rst     38h
3bd1 181a      jr      3bedh            ; (+1ah)
3bd3 ff        rst     38h
3bd4 ff        rst     38h
3bd5 ff        rst     38h
3bd6 ff        rst     38h
3bd7 282e      jr      z,3c07h          ; (+2eh)
3bd9 ff        rst     38h
3bda ff        rst     38h
3bdb ff        rst     38h
3bdc ff        rst     38h
3bdd ddcb18ee  set     5,(ix+18h)
3be1 dd360d1a  ld      (ix+0dh),1ah
3be5 dd360e10  ld      (ix+0eh),10h
3be9 dd360ff6  ld      (ix+0fh),0f6h
3bed dd36107e  ld      (ix+10h),7eh
3bf1 2a03d3    ld      hl,(0d303h)
3bf4 112800    ld      de,0028h
3bf7 a7        and     a
3bf8 ed52      sbc     hl,de
3bfa dd7505    ld      (ix+05h),l
3bfd dd7406    ld      (ix+06h),h
3c00 cda17e    call    7ea1h
3c03 c9        ret     

3c04 feff      cp      0ffh
3c06 ff        rst     38h
3c07 ff        rst     38h
3c08 ff        rst     38h
3c09 ff        rst     38h
3c0a 6c        ld      l,h
3c0b 6e        ld      l,(hl)
3c0c 6e        ld      l,(hl)
3c0d 48        ld      c,b
3c0e ff        rst     38h
3c0f ff        rst     38h
3c10 ff        rst     38h
3c11 ddcb18ee  set     5,(ix+18h)
3c15 dd360d0a  ld      (ix+0dh),0ah
3c19 dd360e10  ld      (ix+0eh),10h
3c1d ddcb1846  bit     0,(ix+18h)
3c21 2014      jr      nz,3c37h         ; (+14h)
3c23 dd6e05    ld      l,(ix+05h)
3c26 dd6606    ld      h,(ix+06h)
3c29 11e8ff    ld      de,0ffe8h
3c2c 19        add     hl,de
3c2d dd7505    ld      (ix+05h),l
3c30 dd7406    ld      (ix+06h),h
3c33 ddcb18c6  set     0,(ix+18h)
3c37 dd360a40  ld      (ix+0ah),40h
3c3b af        xor     a
3c3c dd770b    ld      (ix+0bh),a
3c3f dd770c    ld      (ix+0ch),a
3c42 dd7e11    ld      a,(ix+11h)
3c45 fe14      cp      14h
3c47 380c      jr      c,3c55h          ; (+0ch)
3c49 dd360ac0  ld      (ix+0ah),0c0h
3c4d dd360bff  ld      (ix+0bh),0ffh
3c51 dd360cff  ld      (ix+0ch),0ffh
3c55 3a09d4    ld      a,(0d409h)
3c58 a7        and     a
3c59 fa1a80    jp      m,801ah
3c5c 210608    ld      hl,0806h
3c5f 2215d2    ld      (0d215h),hl
3c62 cd2633    call    3326h
3c65 da1a80    jp      c,801ah
3c68 011000    ld      bc,0010h
3c6b dd5e0a    ld      e,(ix+0ah)
3c6e dd560b    ld      d,(ix+0bh)
3c71 cdfc7c    call    7cfch
3c74 2a04d4    ld      hl,(0d404h)
3c77 7d        ld      a,l
3c78 b4        or      h
3c79 2829      jr      z,3ca4h          ; (+29h)
3c7b 011200    ld      bc,0012h
3c7e cb7c      bit     7,h
3c80 2803      jr      z,3c85h          ; (+03h)
3c82 01feff    ld      bc,0fffeh
3c85 110000    ld      de,0000h
3c88 cdd330    call    30d3h
3c8b 5e        ld      e,(hl)
3c8c 1600      ld      d,00h
3c8e 3ad5d2    ld      a,(0d2d5h)
3c91 87        add     a,a
3c92 4f        ld      c,a
3c93 42        ld      b,d
3c94 213b34    ld      hl,343bh
3c97 09        add     hl,bc
3c98 7e        ld      a,(hl)
3c99 23        inc     hl
3c9a 66        ld      h,(hl)
3c9b 6f        ld      l,a
3c9c 19        add     hl,de
3c9d 7e        ld      a,(hl)
3c9e e63f      and     3fh
3ca0 7a        ld      a,d
3ca1 5a        ld      e,d
3ca2 200c      jr      nz,3cb0h         ; (+0ch)
3ca4 3a04d4    ld      a,(0d404h)
3ca7 ed5b05d4  ld      de,(0d405h)
3cab cb2a      sra     d
3cad cb1b      rr      e
3caf 1f        rra     
3cb0 dd6e02    ld      l,(ix+02h)
3cb3 dd6603    ld      h,(ix+03h)
3cb6 dd8601    add     a,(ix+01h)
3cb9 ed5a      adc     hl,de
3cbb dd7701    ld      (ix+01h),a
3cbe dd7502    ld      (ix+02h),l
3cc1 dd7403    ld      (ix+03h),h
3cc4 32fed3    ld      (0d3feh),a
3cc7 22ffd3    ld      (0d3ffh),hl
3cca ed5b04d4  ld      de,(0d404h)
3cce cb7a      bit     7,d
3cd0 2807      jr      z,3cd9h          ; (+07h)
3cd2 7b        ld      a,e
3cd3 2f        cpl     
3cd4 5f        ld      e,a
3cd5 7a        ld      a,d
3cd6 2f        cpl     
3cd7 57        ld      d,a
3cd8 13        inc     de
3cd9 dd6e12    ld      l,(ix+12h)
3cdc dd6613    ld      h,(ix+13h)
3cdf 19        add     hl,de
3ce0 7c        ld      a,h
3ce1 fe09      cp      09h
3ce3 3829      jr      c,3d0eh          ; (+29h)
3ce5 d609      sub     09h
3ce7 67        ld      h,a
3ce8 1824      jr      3d0eh            ; (+24h)
3cea 00        nop     
3ceb 00        nop     
3cec 00        nop     
3ced 00        nop     
3cee 00        nop     
3cef 00        nop     
3cf0 00        nop     
3cf1 00        nop     
3cf2 00        nop     
3cf3 00        nop     
3cf4 00        nop     
3cf5 00        nop     
3cf6 00        nop     
3cf7 00        nop     
3cf8 00        nop     
3cf9 00        nop     
3cfa 00        nop     
3cfb 00        nop     
3cfc 00        nop     
3cfd 00        nop     
3cfe 54        ld      d,h
3cff 4d        ld      c,l
3d00 52        ld      d,d
3d01 2053      jr      nz,3d56h         ; (+53h)
3d03 45        ld      b,l
3d04 47        ld      b,a
3d05 41        ld      b,c
3d06 00        nop     
3d07 00        nop     
3d08 00        nop     
3d09 00        nop     
3d0a 08        ex      af,af'
3d0b 24        inc     h
3d0c 016000    ld      bc,0060h
