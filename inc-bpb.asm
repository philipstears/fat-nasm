; inc-bpb.asm
; -------------------------------------------
; vim: asmsyntax=nasm expandtab
;
;
; Bios Parameter Block Structures

struc bpb
    .jump               resb    3
    .oem                resb    8
    .bytesPerSector     resw    1
    .sectorsPerCluster  resb    1
    .reservedSectors    resw    1
    .fatCount           resb    1
    .dirEntryCount      resw    1
    .sectorCount        resw    1
    .mediaType          resb    1
    .sectorsPerFat      resw    1
    .sectorsPerTrack    resw    1
    .heads              resw    1
    .hiddenSectors      resd    1
    .sectorCountLarge   resd    1
endstruc

struc ebpb_fat1216
    .bpb                resb    bpb_size
	.driveNumber		resb	1
	.flags				resb	1
	.signature			resb	1
	.volumeId			resb	4
	.volumeLabel		resb	11
	.systemId			resb	8
	.bootCode			resb	448
	.bootSignature		resb	2
endstruc

struc ebpb_fat32
    .bpb                resb    bpb_size
	.sectorsPerFat32	resd	1
	.flags				resw	1
	.version			resw	1
	.rootCluster		resd	1
	.fsInfoSector		resw	1
	.bootBackupSector	resw	1
	.reserved			resb	12
	.driveNumber		resb	1
	.flags2				resb	1
	.signature			resb	1
	.volumeId			resb	4
	.volumeLabel		resb	11
	.systemId			resb	8
	.bootCode			resb	420
	.bootSignature		resb	2
endstruc


