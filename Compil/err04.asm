; entete
extrn lirent:proc, ecrent:proc, ecrbool:proc, ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE
; p:
p:
; ouvbloc 2
enter 2,0
; iconst 2
push word ptr 2
; ireturn 8
pop ax
mov [bp+8],ax
; fermebloc 4
leave 
ret 4
; q:
q:
; ouvbloc 2
enter 2,0
; reserveRetour
sub sp,2
; iconst -1
push word ptr -1
; iconst 0
push word ptr 0
; call p
call p
; ireturn 4
pop ax
mov [bp+4],ax
; fermebloc 0
leave 
ret 0
; un:
un:
; ouvbloc 0
enter 0,0
; iload 4
push word ptr [bp+4]
; iconst 1
push word ptr 1
; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0
; ireturn 6
pop ax
mov [bp+6],ax
; fermebloc 2
leave 
ret 2
debut:
STARTUPCODE
; main:
main:
; iconst 5
push word ptr 5
; ouvbloc 6
enter 6,0
; reserveRetour
sub sp,2
; iconst -1
push word ptr -1
; iload -2
push word ptr [bp-2]
; call p
call p
; istore -4
pop ax
mov word ptr [bp-4],ax
; reserveRetour
sub sp,2
; iconst -1
push word ptr -1
; iload -6
push word ptr [bp-6]
; iconst -1
push word ptr -1
; call p
call p
; istore -4
pop ax
mov word ptr [bp-4],ax
; reserveRetour
sub sp,2
; iconst -1
push word ptr -1
; call p
call p
; istore -4
pop ax
mov word ptr [bp-4],ax
; reserveRetour
sub sp,2
; iconst -1
push word ptr -1
; call q
call q
; istore -4
pop ax
mov word ptr [bp-4],ax
; reserveRetour
sub sp,2
; call q
call q
; istore 0
pop ax
mov word ptr [bp+0],ax
; reserveRetour
sub sp,2
; call p
call p
; istore -4
pop ax
mov word ptr [bp-4],ax
; reserveRetour
sub sp,2
; iconst -1
push word ptr -1
; iconst 0
push word ptr 0
; call p
call p
; istore 5
pop ax
mov word ptr [bp+5],ax
; reserveRetour
sub sp,2
; iconst -1
push word ptr -1
; reserveRetour
sub sp,2
; iconst 10
push word ptr 10
; iconst 4
push word ptr 4
; call un
call un
; call p
call p
; istore -2
pop ax
mov word ptr [bp-2],ax
; reserveRetour
sub sp,2
; iconst -1
push word ptr -1
; reserveRetour
sub sp,2
; reserveRetour
sub sp,2
; call q
call q
; call un
call un
; iconst -1
push word ptr -1
; call p
call p
; istore -2
pop ax
mov word ptr [bp-2],ax
; reserveRetour
sub sp,2
; iconst -1
push word ptr -1
; reserveRetour
sub sp,2
; call q
call q
; call p
call p
; istore -2
pop ax
mov word ptr [bp-2],ax
; reserveRetour
sub sp,2
; iconst 6
push word ptr 6
; call un
call un
; istore -2
pop ax
mov word ptr [bp-2],ax
; queue
nop
EXITCODE
end debut
