;move.w    0x10fd68,d0
;addq.w    #1,d0

check_overflow:
cmp.w     #0x9e,d0
blt.b     evict
subi.w    #0x9e,d0

evict:
; 240P TESTSUITE (not a game)
; cmp.w     #1,d0
; beq       next

; XEVIOUS (stuck on splash screen) original location
; cmp.w     #154,d0
; XEVIOUS (stuck on splash screen) new location
cmp.w     #155,d0

beq       next
; THE EYE OF TYPHOON (crash) original location
; cmp.w     #126,d0
; THE EYE OF TYPHOON (crash) new location
cmp.w     #135,d0
beq       next

bra       exit
next:
addq.w    #1,d0
bra       check_overflow

exit:
jmp      0xc0a5ce
