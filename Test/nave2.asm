.text
main:	
	lui $20, 0x1001 #end. base
	lui $23, 0xffff
	lui $15, 0x1001 
	addi $22, $0, 0x000000
	addi $8, $0, 0x000094 #azul fundo
	addi $9, $0, 0xd5d5ff #degrade
	addi $10, $0, 0xf08080 #nave icone
	addi $11, $0, 0xb846a2 #nave 
	addi $12, $0, 0xd48cfc #tiro
	addi $19, $0, 0xe9b755 #placar
	addi $24, $0, 23156
loop:
	beq $0, $0, ver
	sw $5, 0($23)
ver:
	lw $5, 4($23)
	jal des_nave
	beq $5, 100,direita 
	beq $5, 97, esquerda
	beq $5, 106, tiroC
	j ver

des_nave:
	sw $11,25192 ($20)
	sw $11,25704 ($20)
	sw $11,26216 ($20)
	sw $11,24684 ($20)
	sw $11,25196 ($20)
	sw $11,25708 ($20)
	sw $11,26220 ($20)
	sw $11,23664 ($20)
	sw $11,24176 ($20)
	sw $11,24688 ($20)
	sw $11,25200 ($20)
	sw $12,24180 ($20)
	sw $12,24692 ($20)
	sw $12,25204 ($20)
	sw $12,25716 ($20)
	sw $11,23672 ($20)
	sw $11,24184 ($20)
	sw $11,24696 ($20)
	sw $11,25208 ($20)
	sw $11,24700 ($20)
	sw $11,25212 ($20)
	sw $11,25724 ($20)
	sw $11,26236 ($20)
	sw $11,25216 ($20)
	sw $11,25728 ($20)
	sw $11,26240 ($20)
	sw $22,23652 ($20)
sw $22,24164 ($20)
sw $22,24676 ($20)
sw $22,25188 ($20)
sw $22,25700 ($20)
sw $22,26212 ($20)
sw $22,23684 ($20)
sw $22,24196 ($20)
sw $22,24708 ($20)
sw $22,25220 ($20)
sw $22,25732 ($20)
sw $22,26244 ($20)
sw $22,23668 ($20)
sw $22,25712 ($20)
sw $22,26224 ($20)
sw $22,25720 ($20)
sw $22,26232 ($20)
sw $22,23660 ($20)
sw $22,24172 ($20)
sw $22,24168 ($20)
sw $22,24680 ($20)
sw $22,23676 ($20)
sw $22,24188 ($20)
sw $22,24192 ($20)
sw $22,24704 ($20)
	jr $31
tiro:
	addi $2, $0, 32
	addi $4, $0, 15
	syscall
	sw $22, 23668 ($15)
	sw $12,24180 ($15)
	sw $12,24692 ($15)
	sw $12,25204 ($15)
	sw $12,25716 ($15)
	sw $22, 26228 ($15)
	
	j tiroC
	j loop
tiroNave:	
	sw $22, 23668 ($15)
	sw $12,24180 ($15)
	sw $12,24692 ($15)
	sw $12,25204 ($15)
	sw $12,25716 ($15)
	sw $22, 26228 ($15)
	jr $31	
direita:
	beq $20, 0x1001017c, nulo
	addi $20, $20, 4
	addi $15, $15, 4
	add $5, $0, $0
	sw $5, 4($23)
	jal des_nave
	j loop
esquerda:
	beq $20, 0x1000ff98, nulo
	addi $20, $20, -4
	addi $15, $15, -4
	add $5, $0, $0
	sw $5, 4($23)
	jal des_nave
	j loop
nulo:
	j loop
tiroC:
	beq $24, 116, tf
	addi $15, $15, -512
	add $5, $0, $0	
	sw $5, 4($23)
	addi $24, $24, -512
	j tiro
	j loop
tf: 	
	sw $22, 23668 ($15)
	sw $22,24180 ($15)
	sw $22,24692 ($15)
	sw $22,25204 ($15)
	sw $22,25716 ($15)
	sw $22, 26228 ($15)
	j loop
