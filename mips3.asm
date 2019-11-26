.text
main:
    	addi $s0, $0, 113 
 	lui $t0, 0xFFFF   #$t0 = 0xFFFF0000
	lui $10, 0x1001	
poll:                 # polling procedure
    lw $t1, 0($t0) 
    andi $t1, $t1, 0x0001
    beq $t1, $zero, poll 

    lw $a0, 4($t0) 