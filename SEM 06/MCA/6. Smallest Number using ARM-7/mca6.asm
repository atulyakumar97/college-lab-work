   area smallest,code,readonly
entry
	mov r0,#0x00
	mov r1,#0x0a
	adr r2,array
	mov r3,#0
loop ldr r4,[r2,r3]
	cmp r0,r4
	bcc carry
carr2 add r3,r3,#4
	subs r1,r1,#1
	bne loop
stop b stop
carry mov r0,r4
	b carr2
	align
array dcd 2,4,9,8,4,7,3,2,1,0
	end
