; fat.asm
; -------------------------------------------
; vim: asmsyntax=nasm

%include "inc-bpb.asm"

mov al, [bx+bpb.jump]
