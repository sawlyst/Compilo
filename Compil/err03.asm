; entete
extrn lirent:proc, ecrent:proc, ecrbool:proc, ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE
debut:
STARTUPCODE
; main:
main:
; ouvbloc 16
enter 16,0
; iconst 1
push word ptr 1
; istore -6
pop ax
mov word ptr [bp-6],ax
; iconst 4
push word ptr 4
; iload -10
push word ptr [bp-10]
; imul
pop bx
pop ax
imul bx
push ax
; istore -16
pop ax
mov word ptr [bp-16],ax
; iload -16
push word ptr [bp-16]
; ineg
pop ax
neg ax
push ax
; istore -16
pop ax
mov word ptr [bp-16],ax
; iconst 12
push word ptr 12
; iconst 1
push word ptr 1
; iadd
pop bx
pop ax
add ax,bx
push ax
; iconst 5
push word ptr 5
; iconst 52
push word ptr 52
; iload -16
push word ptr [bp-16]
; idiv
pop bx
pop ax
cwd
idiv bx
push ax
; imul
pop bx
pop ax
imul bx
push ax
; isub
pop bx
pop ax
sub ax,bx
push ax
; iconst 6
push word ptr 6
; iadd
pop bx
pop ax
add ax,bx
push ax
; istore -4
pop ax
mov word ptr [bp-4],ax
; iload -12
push word ptr [bp-12]
; iload -4
push word ptr [bp-4]
; idiv
pop bx
pop ax
cwd
idiv bx
push ax
; istore -4
pop ax
mov word ptr [bp-4],ax
; iload -10
push word ptr [bp-10]
; iload -16
push word ptr [bp-16]
; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0
; istore -14
pop ax
mov word ptr [bp-14],ax
; iload -16
push word ptr [bp-16]
; iconst -1
push word ptr -1
; isupegal
pop bx
pop ax
cmp ax,bx
jl $+6
push -1
jmp $+4
push 0
; istore -12
pop ax
mov word ptr [bp-12],ax
; iload -12
push word ptr [bp-12]
; iload -14
push word ptr [bp-14]
; idiv
pop bx
pop ax
cwd
idiv bx
push ax
; istore -14
pop ax
mov word ptr [bp-14],ax
; iload -12
push word ptr [bp-12]
; iload -12
push word ptr [bp-12]
; inot
pop ax
not ax
push ax
; inot
pop ax
not ax
push ax
; iand
pop bx
pop ax
and ax,bx
push ax
; istore -12
pop ax
mov word ptr [bp-12],ax
; iconst 0
push word ptr 0
; inot
pop ax
not ax
push ax
; iconst 22
push word ptr 22
; iload -2
push word ptr [bp-2]
; isup
pop bx
pop ax
cmp ax,bx
jle $+6
push -1
jmp $+4
push 0
; iand
pop bx
pop ax
and ax,bx
push ax
; istore -14
pop ax
mov word ptr [bp-14],ax
; iload -14
push word ptr [bp-14]
; iload -10
push word ptr [bp-10]
; iconst 10
push word ptr 10
; idiff
pop bx
pop ax
cmp ax,bx
je $+6
push -1
jmp $+4
push 0
; iand
pop bx
pop ax
and ax,bx
push ax
; istore -12
pop ax
mov word ptr [bp-12],ax
; queue
nop
EXITCODE
end debut
