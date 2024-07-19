org 0h
mov dptr,#9000h
mov a,#00h
movx @dptr,a
inc dptr
mov a,#01h
movx @dptr,a

mov r0,#00h
mov r1,#01h
mov r2,#06h

l1:
add a,r0
inc dptr
movx @dptr,a
dec dpl
movx a,@dptr
mov r0,a
inc dptr
movx a,@dptr
djnz r2,l1
here:sjmp here
end 
