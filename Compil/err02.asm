; entete
extrn lirent:proc, ecrent:proc, ecrbool:proc, ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE
debut:
STARTUPCODE
; main:
main:
; iconst 1
push word ptr 1
; ouvbloc 14
enter 14,0
; iconst 2
push word ptr 2
; istore -2
pop ax
mov word ptr [bp-2],ax
; istore -4
pop ax
mov word ptr [bp-4],ax
; queue
nop
EXITCODE
end debut
