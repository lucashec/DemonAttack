.text
main:
	addi $2, $0, 5
	syscall
	
	add $8, $0, $2	
	
 	div $9, $8, 10
 	mfhi $9 #=> unidade
 	
 	div $10, $8, 100
 	mfhi $10 #=> dezena
	div $10, $10, 10
	
	div $11, $8, 1000
 	mfhi $11 #=> centena
	div $11, $11, 100
	
	div $12, $8, 10000
 	mfhi $12 #=>  unidade de milhar
	div $12, $12, 1000
	
	div $13, $8, 10000
 	mflo $13 #=>  unidade de milhar
		
	add $14, $13, $12
	add $15, $11, $10
	add $16, $14, $15
	add $16, $16, $9

 	add $4, $0, $16
 	addi $2, $0, 1
 	syscall
 	
 	addi $2, $0, 10
 	syscall 
	