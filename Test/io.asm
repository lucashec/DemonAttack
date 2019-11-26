.text
main:
    	addi $s0, $0, 113 
 	lui $t0, 0xFFFF   #$t0 = 0xFFFF000 endereço base pra mapear
	lui $10, 0x1001	#end base da área de dados
	addi $11,$0, 0x3cd333 #cor verde
	addi $12,$0, 0x000000 #cor preta
	add $1, $0, $0 #tentativa frustrada de zerar o registrador 1
loop:
	j ver #função inútil q pode ser substituida por um beq $0, $0, ver| já que a condição sempre será verdadeira
ver:
 	lw $4, 4($8) #pega o que foi digitado no teclado | fica armazenado no end seguinte
 	beq $4, 97, acenderA #chama a função pela tecla "a"
 	beq $4, 100, acenderD  #chama a função pela tecla "d"
acenderA: 
	sw $11, 0($10) #acende picles nos primeiros end e apaga os do 'd'
	sw $11, 4($10)
	sw $12, 16($10)
	sw $12, 20($10)
	j loop
acenderD:
	sw $11, 16($10) #acende picles nos end e apaga os do 'a'
	sw $11, 20($10)
	sw $12, 0($10)
	sw $12, 4($10)
	j loop  #volta pra loop, ficando infinito
