; entete
extrn lirent:proc, ecrent:proc, ecrbool:proc, ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE
; max:
max:
; ouvbloc 4
enter 4,0
; lireEnt -2
lea dx,[bp-2]
push dx
call lirent
; aLaLigne
call ligsuiv
; lireEnt -4
lea dx,[bp-4]
push dx
call lirent
; aLaLigne
call ligsuiv
; iload -2
push word ptr [bp-2]
; iload -4
push word ptr [bp-4]
; isup
pop bx
pop ax
cmp ax,bx
jle $+6
push -1
jmp $+4
push 0
; iffaux SINON1
pop ax
cmp ax,0
je SINON1
; iload -2
push word ptr [bp-2]
; ireturn 4
pop ax
mov [bp+4],ax
; goto FSI1
jmp FSI1
SINON1:
; iload -4
push word ptr [bp-4]
; ireturn 4
pop ax
mov [bp+4],ax
FSI1:
; fermebloc 0
leave 
ret 0
debut:
STARTUPCODE
; main:
main:
; ouvbloc 4
enter 4,0
; reserveRetour
sub sp,2
; call max
call max
; istore -2
pop ax
mov word ptr [bp-2],ax
; iload -2
push word ptr [bp-2]
; ecrireEnt
call ecrent
; queue
nop
EXITCODE
end debut
