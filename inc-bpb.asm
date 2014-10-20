; inc-bpb.asm
; -------------------------------------------
; vim: asmsyntax=nasm
;
;
; Bios Parameter Block Structures

struc BPB
	.jump				resb	3
	.oem				resb	8
	.bytesPerSector		resw	1
	.sectorsPerCluster	resb	1
endstruc
