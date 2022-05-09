.model small
.stack 64
.data 
  mensaje db 0Ah, 0dh,"mi nombre es:","$"
.code
inicio:
  mov cx, 0005
ciclo:
  mov ax,@data
  mov ds,ax
  mov dx,offset mensaje
  mov ah, 09h
  int 21h
  loop ciclo
  mov ah,04ch
  int 21h
end
