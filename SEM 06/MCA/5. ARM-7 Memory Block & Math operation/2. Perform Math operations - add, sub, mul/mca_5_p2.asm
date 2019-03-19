		area maths, code, readonly
entry
		mov r7,#0x40000000
		mov r8,#0x40000004
		
		ldr r0,[r7]
		ldr r1,[r8]
		add r2,r0,r1
		str r2,[r7,#8]
		
		sub r2,r2,r0
		str r2,[r7,#12]
		 
		umull r3,r2,r1,r0
		str r3,[r7,#16]
		str r2,[r7,#20]
exit	b exit
		end
