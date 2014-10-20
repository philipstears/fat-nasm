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
endstruc

struc ebpb_fat32
    .bpb                resb    bpb_size
endstruc


