; entete
extrn lirent:proc, ecrent:proc, ecrbool:proc, ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE
debut:
STARTUPCODE
; main:
main:
; iconst 10
push word ptr 10
; iconst 20
push word ptr 20
; ouvbloc 10
enter 10,0
; iconst 10
push word ptr 10
; iconst 20
push word ptr 20
; iconst 2
push word ptr 2
; idiv
pop bx
pop ax
cwd
idiv bx
push ax
; iadd
pop bx
pop ax
add ax,bx
push ax
; iconst 5
push word ptr 5
; idiv
pop bx
pop ax
cwd
idiv bx
push ax
; istore -2
pop ax
mov word ptr [bp-2],ax
; iload -2
push word ptr [bp-2]
; ecrireEnt
call ecrent
; aLaLigne
call ligsuiv
; iload -2
push word ptr [bp-2]
; iconst 3
push word ptr 3
; iload -2
push word ptr [bp-2]
; imul
pop bx
pop ax
imul bx
push ax
; iadd
pop bx
pop ax
add ax,bx
push ax
; iconst 10
push word ptr 10
; isub
pop bx
pop ax
sub ax,bx
push ax
; istore -4
pop ax
mov word ptr [bp-4],ax
; iload -4
push word ptr [bp-4]
; ecrireEnt
call ecrent
; aLaLigne
call ligsuiv
; iconst 2
push word ptr 2
; ineg
pop ax
neg ax
push ax
; iconst 3
push word ptr 3
; ineg
pop ax
neg ax
push ax
; imul
pop bx
pop ax
imul bx
push ax
; ineg
pop ax
neg ax
push ax
; iconst 7
push word ptr 7
; ineg
pop ax
neg ax
push ax
; isub
pop bx
pop ax
sub ax,bx
push ax
; ecrireEnt
call ecrent
; aLaLigne
call ligsuiv
; ecrireChaine "ce programme a du ecrire 4 puis 6 puis 1"
.DATA
mess0 DB "ce programme a du ecrire 4 puis 6 puis 1$"
.CODE
lea dx,mess0
push dx
call ecrch
; queue
nop
EXITCODE
end debut
