section .multiboot_header

header_start:
    dd 0xe85250d6                                                   ;multiboot 2 magic number
    dd 0                                                            ;protected mode i386
    dd header_end - header_start                                    ;header length
    dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start)) ;checksum

    dw 0                                                            ;
    dw 0                                                            ;end tag
    dw 8                                                            ;
header_end: