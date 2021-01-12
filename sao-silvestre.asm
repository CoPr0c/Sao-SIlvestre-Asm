.data
kp:     .asciiz "Digite o km percorrido:\n"
kf:    .asciiz "Km finais:\n"

.text
li $v0, 4
la $a0, kp     		# a0 = kp
syscall
li $v0, 5     		# leitura de um inteiro
syscall
move $t0, $v0     	# nao perder o numero do registrador $v0
li $t1,15
sub $t2,$t1,$t0 	# $t2 = $t1 - $t0
li $v0, 4
la $a0, kf     		# $a0 = kf
syscall
li $v0, 1     		# imprimir numero inteiro
la $a0, ($t2)   	# $a0 = $t2
syscall         	# executando instrucao.
li $v0, 10     		# preparar o processador para terminar o programa.
syscall			# execute a instrucao.
