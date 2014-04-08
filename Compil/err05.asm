; entete
extrn lirent:proc, ecrent:proc, ecrbool:proc, ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE
; f:
f:
; ouvbloc 2
enter 2,0
; iload 6
push word ptr [bp+6]
; ireturn 8
pop ax
mov [bp+8],ax
; fermebloc 4
leave 
ret 4
; f:
f:
; ouvbloc 2
enter 2,0
; iload -2
push word ptr [bp-2]
; ireturn 8
pop ax
mov [bp+8],ax
; fermebloc 4
leave 
ret 4
; g:
g:
; ouvbloc 0
enter 0,0
; iload 4
push word ptr [bp+4]
; iconst 1
push word ptr 1
; iadd
pop bx
pop ax
add ax,bx
push ax
; ireturn 8
pop ax
mov [bp+8],ax
; fermebloc 4
leave 
ret 4
debut:
STARTUPCODE
; main:
main:
; ouvbloc 0
enter 0,0
; reserveRetour
sub sp,2
; iconst -1
push word ptr -1
; iconst 4
push word ptr 4
; call f
call f
; ireturn 4
pop ax
mov [bp+4],ax
; queue
nop
EXITCODE
end debut
