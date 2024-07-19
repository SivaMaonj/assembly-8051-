org 0h
mov r0,#05h
mov r1,#01h
mov a,#00h
l1:
add a,r1
inc r1
inc r1
djnz r0,l1
mov dptr,#8500h
movx @dptr,a
here:sjmp here
end

