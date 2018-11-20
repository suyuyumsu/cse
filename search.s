
search:
        push  {r4,r5,r6,r7,r8,r9,r10,r11,lr}
	    mov r4,r0  
        mov r6,r2
        ldrh  r7, [r4,#2] //total number of student 
        ldr   r8, [r4,#8]  // index of fist student 
        mov   r5, #0       
        bl    loop1
loop1:
 	  cmp   r5,r7 
        bne   continue  
        
	  cmp   r5, r7  // loop all not found 
        beq   nfound     
        
	   
continue:
        ldr r10,[r8,#0]
        cmp r1,r10
        mov r9,#40
        beq   found1        //equal then found 
        blt   nfound     
        add   r8 ,r9  
        add   r5 ,#1   
        b     loop1
found1:
        mov   r0, #1
        str   r8, [r2]
        bl popre
nfound: 
        mov   r0, #0
        //mov   r0, 
        str   r8, [r2]
        bl    popre

popre:
	pop		{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	bx		lr

popre1:
	pop		{r4, r5, r6, r7, r9, r10, r11, lr}
	bx		lr		


