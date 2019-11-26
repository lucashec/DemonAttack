.text
main:	
	lui $20, 0x1001 #end. base

	addi $22, $0, 0xfffff7
	addi $11, $0, 0xb846a2 #nave 
	
for:
	li $2, 32
	li $4, 500
	syscall
	
	beq $21, 3, for2
	sw $11,544 ($20)
	sw $22,544 ($20)

	addi $20, $20, 4
	addi $21, $21, 1
	j for 
for2:
	add $21, $0, $0 
	li $2, 32
	li $4, 500
	syscall
	
	beq $22, 2, fim
	sw $11,544 ($20)

	addi $20, $20, 512
	addi $22, $22, 1
	j for2
fim:
	nop