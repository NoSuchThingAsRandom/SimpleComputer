include "printString.ASM"
mov bx, [loading]
add bx, 0x7c00
mov ah , 0x0e
mov al,[bx]
int 0x10
call print
add bx, 0x7c00
mov bx,done
call print

loading:
        db 'Loading...',0
done:
        db 'Done!',0
times 510 -( $ - $$ ) db 0 ; Pad the boot sector out with zeros
dw 0xaa55