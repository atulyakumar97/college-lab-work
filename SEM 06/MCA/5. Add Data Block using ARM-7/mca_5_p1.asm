		area add, code, readonly
entry
		mov r0, #0
		mov r1, #0x0A
		mov r4, #0
		adr r2,data
loop 	ldr r3, [r2,r4]
		add r0, r3, r0
		add r4, r4, #4
		subs r1, r1, #1
		bne loop
stop	b stop

		align
data	dcd 1,1,1,1,1,1,1,1,1,1
		end
