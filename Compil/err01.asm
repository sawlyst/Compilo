; entete
extrn lirent:proc, ecrent:proc, ecrbool:proc, ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE
debut:
STARTUPCODE
; main:
main:
; iconst 4
push word ptr 4
; iconst 4
push word ptr 4
; iconst 2365
push word ptr 2365
; iconst 4
push word ptr 4
; iconst 0
push word ptr 0
; iconst 2
push word ptr 2
; iconst 0
push word ptr 0
; ouvbloc 0
enter 0,0
; iconst 4
push word ptr 4
; istore 4
pop ax
mov word ptr [bp+4],ax
; queue
nop
EXITCODE
end debut
