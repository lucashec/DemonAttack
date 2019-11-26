
.macro getKey (%dest)
	sw $2, 0($29)
	sw $3, 4($29)
	j getType

	typed:
		lw $3, 4($2)
		add %dest, $0, $3
		lw $2, 0($29)
		lw $3, 4($29)

	getType:
		lui $2, 0xffff
		lw $3, 0($2)
		bne $3, $0, typed
		lw $2, 0($29)
		lw $3, 4($29)
.end_macro


