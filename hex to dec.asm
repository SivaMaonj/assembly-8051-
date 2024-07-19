org 0h
mov dptr,#8500h
movx a,@dptr
mov b,#0Ah
div ab
mov r0,b
mov b,#0Ah
div ab
mov r1,a
mov r2,b

inc dptr
inc dptr
mov a,r2
swap a
add a,r0
movx @dptr,a

dec dpl
mov a,r1
movx @dptr,a
h:sjmp h
end
