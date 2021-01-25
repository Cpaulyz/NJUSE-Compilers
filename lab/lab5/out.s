.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text

read:
	li $v0, 4
	la $a0, _prompt
	syscall
	li $v0, 5
	syscall
	jr $ra

write:
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $0
	jr $ra

id_dnn2MXZ:
	subu $sp, $sp, 4
	sw $fp, 0($sp)
	move $fp, $sp
	subu $sp, $sp, 1000
	lw $a0, 12($fp)
	sw $a0, -8($fp)
	lw $a0, 16($fp)
	sw $a0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t1, 0
	sw $t1, -24($fp)
	li $t2, 0
	sw $t2, -28($fp)
	lw $t4, -8($fp)
	move $t3, $t4
	sw $t3, -32($fp)
	li $t5, 0
	sw $t5, -36($fp)
	lw $t6, -32($fp)
	lw $t7, -36($fp)
	bgt $t6, $t7, label10
	j label11
label10:
	lw $t0, -28($fp)
	li $t0, 1
	sw $t0, -28($fp)
label11:
	lw $t1, -28($fp)
	bne $t1, 0, label9
	j label7
label9:
	li $t2, 0
	sw $t2, -40($fp)
	lw $t4, -16($fp)
	move $t3, $t4
	sw $t3, -44($fp)
	li $t5, 0
	sw $t5, -48($fp)
	lw $t6, -44($fp)
	lw $t7, -48($fp)
	bgt $t6, $t7, label12
	j label13
label12:
	lw $t0, -40($fp)
	li $t0, 1
	sw $t0, -40($fp)
label13:
	lw $t1, -40($fp)
	bne $t1, 0, label8
	j label7
label8:
	li $t2, 0
	sw $t2, -52($fp)
	lw $t4, -8($fp)
	move $t3, $t4
	sw $t3, -56($fp)
	li $t5, 2147483647
	sw $t5, -60($fp)
	lw $t7, -16($fp)
	move $t6, $t7
	sw $t6, -64($fp)
	lw $t1, -60($fp)
	lw $t2, -64($fp)
	sub $t0, $t1, $t2
	sw $t0, -68($fp)
	lw $t3, -56($fp)
	lw $t4, -68($fp)
	bgt $t3, $t4, label14
	j label15
label14:
	lw $t5, -52($fp)
	li $t5, 1
	sw $t5, -52($fp)
label15:
	lw $t6, -52($fp)
	bne $t6, 0, label6
	j label7
label6:
	lw $t7, -24($fp)
	li $t7, 1
	sw $t7, -24($fp)
label7:
	lw $t0, -24($fp)
	bne $t0, 0, label3
	j label5
label5:
	li $t1, 0
	sw $t1, -72($fp)
	li $t2, 0
	sw $t2, -76($fp)
	lw $t4, -8($fp)
	move $t3, $t4
	sw $t3, -80($fp)
	li $t5, 0
	sw $t5, -84($fp)
	lw $t6, -80($fp)
	lw $t7, -84($fp)
	blt $t6, $t7, label20
	j label21
label20:
	lw $t0, -76($fp)
	li $t0, 1
	sw $t0, -76($fp)
label21:
	lw $t1, -76($fp)
	bne $t1, 0, label19
	j label17
label19:
	li $t2, 0
	sw $t2, -88($fp)
	lw $t4, -16($fp)
	move $t3, $t4
	sw $t3, -92($fp)
	li $t5, 0
	sw $t5, -96($fp)
	lw $t6, -92($fp)
	lw $t7, -96($fp)
	blt $t6, $t7, label22
	j label23
label22:
	lw $t0, -88($fp)
	li $t0, 1
	sw $t0, -88($fp)
label23:
	lw $t1, -88($fp)
	bne $t1, 0, label18
	j label17
label18:
	li $t2, 0
	sw $t2, -100($fp)
	lw $t4, -8($fp)
	move $t3, $t4
	sw $t3, -104($fp)
	li $t5, -2147483648
	sw $t5, -108($fp)
	lw $t7, -108($fp)
	li $s2, 0
	sub $t6, $s2, $t7
	sw $t6, -112($fp)
	lw $t1, -16($fp)
	move $t0, $t1
	sw $t0, -116($fp)
	lw $t3, -112($fp)
	lw $t4, -116($fp)
	sub $t2, $t3, $t4
	sw $t2, -120($fp)
	lw $t5, -104($fp)
	lw $t6, -120($fp)
	blt $t5, $t6, label24
	j label25
label24:
	lw $t7, -100($fp)
	li $t7, 1
	sw $t7, -100($fp)
label25:
	lw $t0, -100($fp)
	bne $t0, 0, label16
	j label17
label16:
	lw $t1, -72($fp)
	li $t1, 1
	sw $t1, -72($fp)
label17:
	lw $t2, -72($fp)
	bne $t2, 0, label3
	j label4
label3:
	lw $t3, -20($fp)
	li $t3, 1
	sw $t3, -20($fp)
label4:
	lw $t4, -20($fp)
	bne $t4, 0, label1
	j label2
label1:
	lw $t6, -8($fp)
	move $t5, $t6
	sw $t5, -124($fp)
	lw $t7, -124($fp)
	move $v0, $t7
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t7, -124($fp)
label2:
	lw $t1, -8($fp)
	move $t0, $t1
	sw $t0, -128($fp)
	lw $t3, -16($fp)
	move $t2, $t3
	sw $t2, -132($fp)
	lw $t5, -128($fp)
	lw $t6, -132($fp)
	add $t4, $t5, $t6
	sw $t4, -136($fp)
	lw $t7, -136($fp)
	move $v0, $t7
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t7, -136($fp)
id_t:
	subu $sp, $sp, 4
	sw $fp, 0($sp)
	move $fp, $sp
	subu $sp, $sp, 1000
	lw $a0, 12($fp)
	sw $a0, -8($fp)
	lw $a0, 16($fp)
	sw $a0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t1, 0
	sw $t1, -24($fp)
	lw $t3, -8($fp)
	move $t2, $t3
	sw $t2, -28($fp)
	li $t4, 0
	sw $t4, -32($fp)
	lw $t5, -28($fp)
	lw $t6, -32($fp)
	bgt $t5, $t6, label33
	j label34
label33:
	lw $t7, -24($fp)
	li $t7, 1
	sw $t7, -24($fp)
label34:
	lw $t0, -24($fp)
	bne $t0, 0, label32
	j label30
label32:
	li $t1, 0
	sw $t1, -36($fp)
	lw $t3, -16($fp)
	move $t2, $t3
	sw $t2, -40($fp)
	li $t4, 0
	sw $t4, -44($fp)
	lw $t5, -40($fp)
	lw $t6, -44($fp)
	blt $t5, $t6, label35
	j label36
label35:
	lw $t7, -36($fp)
	li $t7, 1
	sw $t7, -36($fp)
label36:
	lw $t0, -36($fp)
	bne $t0, 0, label31
	j label30
label31:
	li $t1, 0
	sw $t1, -48($fp)
	lw $t3, -8($fp)
	move $t2, $t3
	sw $t2, -52($fp)
	li $t4, 2147483647
	sw $t4, -56($fp)
	lw $t6, -16($fp)
	move $t5, $t6
	sw $t5, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	add $t7, $t0, $t1
	sw $t7, -64($fp)
	lw $t2, -52($fp)
	lw $t3, -64($fp)
	bgt $t2, $t3, label37
	j label38
label37:
	lw $t4, -48($fp)
	li $t4, 1
	sw $t4, -48($fp)
label38:
	lw $t5, -48($fp)
	bne $t5, 0, label29
	j label30
label29:
	lw $t6, -20($fp)
	li $t6, 1
	sw $t6, -20($fp)
label30:
	lw $t7, -20($fp)
	bne $t7, 0, label26
	j label28
label28:
	li $t0, 0
	sw $t0, -68($fp)
	li $t1, 0
	sw $t1, -72($fp)
	lw $t3, -8($fp)
	move $t2, $t3
	sw $t2, -76($fp)
	li $t4, 0
	sw $t4, -80($fp)
	lw $t5, -76($fp)
	lw $t6, -80($fp)
	blt $t5, $t6, label43
	j label44
label43:
	lw $t7, -72($fp)
	li $t7, 1
	sw $t7, -72($fp)
label44:
	lw $t0, -72($fp)
	bne $t0, 0, label42
	j label40
label42:
	li $t1, 0
	sw $t1, -84($fp)
	lw $t3, -16($fp)
	move $t2, $t3
	sw $t2, -88($fp)
	li $t4, 0
	sw $t4, -92($fp)
	lw $t5, -88($fp)
	lw $t6, -92($fp)
	bgt $t5, $t6, label45
	j label46
label45:
	lw $t7, -84($fp)
	li $t7, 1
	sw $t7, -84($fp)
label46:
	lw $t0, -84($fp)
	bne $t0, 0, label41
	j label40
label41:
	li $t1, 0
	sw $t1, -96($fp)
	lw $t3, -8($fp)
	move $t2, $t3
	sw $t2, -100($fp)
	li $t4, -2147483648
	sw $t4, -104($fp)
	lw $t6, -104($fp)
	li $s2, 0
	sub $t5, $s2, $t6
	sw $t5, -108($fp)
	lw $t0, -16($fp)
	move $t7, $t0
	sw $t7, -112($fp)
	lw $t2, -108($fp)
	lw $t3, -112($fp)
	add $t1, $t2, $t3
	sw $t1, -116($fp)
	lw $t4, -100($fp)
	lw $t5, -116($fp)
	blt $t4, $t5, label47
	j label48
label47:
	lw $t6, -96($fp)
	li $t6, 1
	sw $t6, -96($fp)
label48:
	lw $t7, -96($fp)
	bne $t7, 0, label39
	j label40
label39:
	lw $t0, -68($fp)
	li $t0, 1
	sw $t0, -68($fp)
label40:
	lw $t1, -68($fp)
	bne $t1, 0, label26
	j label27
label26:
	lw $t3, -8($fp)
	move $t2, $t3
	sw $t2, -120($fp)
	lw $t4, -120($fp)
	move $v0, $t4
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t4, -120($fp)
label27:
	lw $t6, -8($fp)
	move $t5, $t6
	sw $t5, -124($fp)
	lw $t0, -16($fp)
	move $t7, $t0
	sw $t7, -128($fp)
	lw $t2, -124($fp)
	lw $t3, -128($fp)
	sub $t1, $t2, $t3
	sw $t1, -132($fp)
	lw $t4, -132($fp)
	move $v0, $t4
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t4, -132($fp)
id_LU:
	subu $sp, $sp, 4
	sw $fp, 0($sp)
	move $fp, $sp
	subu $sp, $sp, 1000
	lw $a0, 12($fp)
	sw $a0, -8($fp)
	lw $a0, 16($fp)
	sw $a0, -16($fp)
	li $t5, 0
	sw $t5, -20($fp)
	li $t6, 0
	sw $t6, -24($fp)
	li $t7, 0
	sw $t7, -28($fp)
	lw $t1, -8($fp)
	move $t0, $t1
	sw $t0, -32($fp)
	li $t2, 0
	sw $t2, -36($fp)
	lw $t3, -32($fp)
	lw $t4, -36($fp)
	bgt $t3, $t4, label60
	j label61
label60:
	lw $t5, -28($fp)
	li $t5, 1
	sw $t5, -28($fp)
label61:
	lw $t6, -28($fp)
	bne $t6, 0, label59
	j label57
label59:
	li $t7, 0
	sw $t7, -40($fp)
	lw $t1, -16($fp)
	move $t0, $t1
	sw $t0, -44($fp)
	li $t2, 0
	sw $t2, -48($fp)
	lw $t3, -44($fp)
	lw $t4, -48($fp)
	bgt $t3, $t4, label62
	j label63
label62:
	lw $t5, -40($fp)
	li $t5, 1
	sw $t5, -40($fp)
label63:
	lw $t6, -40($fp)
	bne $t6, 0, label58
	j label57
label58:
	li $t7, 0
	sw $t7, -52($fp)
	lw $t1, -8($fp)
	move $t0, $t1
	sw $t0, -56($fp)
	li $t2, 2147483647
	sw $t2, -60($fp)
	lw $t4, -16($fp)
	move $t3, $t4
	sw $t3, -64($fp)
	lw $t6, -60($fp)
	lw $t7, -64($fp)
	div $t6, $t7
	mflo $t5
	sw $t5, -68($fp)
	lw $t0, -56($fp)
	lw $t1, -68($fp)
	bgt $t0, $t1, label64
	j label65
label64:
	lw $t2, -52($fp)
	li $t2, 1
	sw $t2, -52($fp)
label65:
	lw $t3, -52($fp)
	bne $t3, 0, label56
	j label57
label56:
	lw $t4, -24($fp)
	li $t4, 1
	sw $t4, -24($fp)
label57:
	lw $t5, -24($fp)
	bne $t5, 0, label51
	j label55
label55:
	li $t6, 0
	sw $t6, -72($fp)
	li $t7, 0
	sw $t7, -76($fp)
	lw $t1, -8($fp)
	move $t0, $t1
	sw $t0, -80($fp)
	li $t2, 0
	sw $t2, -84($fp)
	lw $t3, -80($fp)
	lw $t4, -84($fp)
	bgt $t3, $t4, label70
	j label71
label70:
	lw $t5, -76($fp)
	li $t5, 1
	sw $t5, -76($fp)
label71:
	lw $t6, -76($fp)
	bne $t6, 0, label69
	j label67
label69:
	li $t7, 0
	sw $t7, -88($fp)
	lw $t1, -16($fp)
	move $t0, $t1
	sw $t0, -92($fp)
	li $t2, 0
	sw $t2, -96($fp)
	lw $t3, -92($fp)
	lw $t4, -96($fp)
	ble $t3, $t4, label72
	j label73
label72:
	lw $t5, -88($fp)
	li $t5, 1
	sw $t5, -88($fp)
label73:
	lw $t6, -88($fp)
	bne $t6, 0, label68
	j label67
label68:
	li $t7, 0
	sw $t7, -100($fp)
	lw $t1, -16($fp)
	move $t0, $t1
	sw $t0, -104($fp)
	li $t2, -2147483648
	sw $t2, -108($fp)
	lw $t4, -108($fp)
	li $s2, 0
	sub $t3, $s2, $t4
	sw $t3, -112($fp)
	lw $t6, -8($fp)
	move $t5, $t6
	sw $t5, -116($fp)
	lw $t0, -112($fp)
	lw $t1, -116($fp)
	div $t0, $t1
	mflo $t7
	sw $t7, -120($fp)
	lw $t2, -104($fp)
	lw $t3, -120($fp)
	blt $t2, $t3, label74
	j label75
label74:
	lw $t4, -100($fp)
	li $t4, 1
	sw $t4, -100($fp)
label75:
	lw $t5, -100($fp)
	bne $t5, 0, label66
	j label67
label66:
	lw $t6, -72($fp)
	li $t6, 1
	sw $t6, -72($fp)
label67:
	lw $t7, -72($fp)
	bne $t7, 0, label51
	j label54
label54:
	li $t0, 0
	sw $t0, -124($fp)
	li $t1, 0
	sw $t1, -128($fp)
	lw $t3, -8($fp)
	move $t2, $t3
	sw $t2, -132($fp)
	li $t4, 0
	sw $t4, -136($fp)
	lw $t5, -132($fp)
	lw $t6, -136($fp)
	ble $t5, $t6, label80
	j label81
label80:
	lw $t7, -128($fp)
	li $t7, 1
	sw $t7, -128($fp)
label81:
	lw $t0, -128($fp)
	bne $t0, 0, label79
	j label77
label79:
	li $t1, 0
	sw $t1, -140($fp)
	lw $t3, -16($fp)
	move $t2, $t3
	sw $t2, -144($fp)
	li $t4, 0
	sw $t4, -148($fp)
	lw $t5, -144($fp)
	lw $t6, -148($fp)
	bgt $t5, $t6, label82
	j label83
label82:
	lw $t7, -140($fp)
	li $t7, 1
	sw $t7, -140($fp)
label83:
	lw $t0, -140($fp)
	bne $t0, 0, label78
	j label77
label78:
	li $t1, 0
	sw $t1, -152($fp)
	lw $t3, -8($fp)
	move $t2, $t3
	sw $t2, -156($fp)
	li $t4, -2147483648
	sw $t4, -160($fp)
	lw $t6, -160($fp)
	li $s2, 0
	sub $t5, $s2, $t6
	sw $t5, -164($fp)
	lw $t0, -16($fp)
	move $t7, $t0
	sw $t7, -168($fp)
	lw $t2, -164($fp)
	lw $t3, -168($fp)
	div $t2, $t3
	mflo $t1
	sw $t1, -172($fp)
	lw $t4, -156($fp)
	lw $t5, -172($fp)
	blt $t4, $t5, label84
	j label85
label84:
	lw $t6, -152($fp)
	li $t6, 1
	sw $t6, -152($fp)
label85:
	lw $t7, -152($fp)
	bne $t7, 0, label76
	j label77
label76:
	lw $t0, -124($fp)
	li $t0, 1
	sw $t0, -124($fp)
label77:
	lw $t1, -124($fp)
	bne $t1, 0, label51
	j label53
label53:
	li $t2, 0
	sw $t2, -176($fp)
	li $t3, 0
	sw $t3, -180($fp)
	lw $t5, -8($fp)
	move $t4, $t5
	sw $t4, -184($fp)
	li $t6, 0
	sw $t6, -188($fp)
	lw $t7, -184($fp)
	lw $t0, -188($fp)
	ble $t7, $t0, label91
	j label92
label91:
	lw $t1, -180($fp)
	li $t1, 1
	sw $t1, -180($fp)
label92:
	lw $t2, -180($fp)
	bne $t2, 0, label90
	j label87
label90:
	li $t3, 0
	sw $t3, -192($fp)
	lw $t5, -16($fp)
	move $t4, $t5
	sw $t4, -196($fp)
	li $t6, 0
	sw $t6, -200($fp)
	lw $t7, -196($fp)
	lw $t0, -200($fp)
	ble $t7, $t0, label93
	j label94
label93:
	lw $t1, -192($fp)
	li $t1, 1
	sw $t1, -192($fp)
label94:
	lw $t2, -192($fp)
	bne $t2, 0, label89
	j label87
label89:
	li $t3, 0
	sw $t3, -204($fp)
	lw $t5, -8($fp)
	move $t4, $t5
	sw $t4, -208($fp)
	li $t6, 0
	sw $t6, -212($fp)
	lw $t7, -208($fp)
	lw $t0, -212($fp)
	bne $t7, $t0, label95
	j label96
label95:
	lw $t1, -204($fp)
	li $t1, 1
	sw $t1, -204($fp)
label96:
	lw $t2, -204($fp)
	bne $t2, 0, label88
	j label87
label88:
	li $t3, 0
	sw $t3, -216($fp)
	lw $t5, -16($fp)
	move $t4, $t5
	sw $t4, -220($fp)
	li $t6, 2147483647
	sw $t6, -224($fp)
	lw $t0, -8($fp)
	move $t7, $t0
	sw $t7, -228($fp)
	lw $t2, -224($fp)
	lw $t3, -228($fp)
	div $t2, $t3
	mflo $t1
	sw $t1, -232($fp)
	lw $t4, -220($fp)
	lw $t5, -232($fp)
	blt $t4, $t5, label97
	j label98
label97:
	lw $t6, -216($fp)
	li $t6, 1
	sw $t6, -216($fp)
label98:
	lw $t7, -216($fp)
	bne $t7, 0, label86
	j label87
label86:
	lw $t0, -176($fp)
	li $t0, 1
	sw $t0, -176($fp)
label87:
	lw $t1, -176($fp)
	bne $t1, 0, label51
	j label52
label51:
	lw $t2, -20($fp)
	li $t2, 1
	sw $t2, -20($fp)
label52:
	lw $t3, -20($fp)
	bne $t3, 0, label49
	j label50
label49:
	lw $t5, -8($fp)
	move $t4, $t5
	sw $t4, -236($fp)
	lw $t6, -236($fp)
	move $v0, $t6
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t6, -236($fp)
label50:
	lw $t0, -8($fp)
	move $t7, $t0
	sw $t7, -240($fp)
	lw $t2, -16($fp)
	move $t1, $t2
	sw $t1, -244($fp)
	lw $t4, -240($fp)
	lw $t5, -244($fp)
	mul $t3, $t4, $t5
	sw $t3, -248($fp)
	lw $t6, -248($fp)
	move $v0, $t6
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t6, -248($fp)
id_MhWCpOUF_0:
	subu $sp, $sp, 4
	sw $fp, 0($sp)
	move $fp, $sp
	subu $sp, $sp, 1000
	lw $a0, 12($fp)
	sw $a0, -8($fp)
	lw $a0, 16($fp)
	sw $a0, -16($fp)
	li $t7, 0
	sw $t7, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	lw $t2, -16($fp)
	move $t1, $t2
	sw $t1, -28($fp)
	li $t3, 0
	sw $t3, -32($fp)
	lw $t4, -28($fp)
	lw $t5, -32($fp)
	beq $t4, $t5, label104
	j label105
label104:
	lw $t6, -24($fp)
	li $t6, 1
	sw $t6, -24($fp)
label105:
	lw $t7, -24($fp)
	bne $t7, 0, label101
	j label103
label103:
	li $t0, 0
	sw $t0, -36($fp)
	li $t1, 0
	sw $t1, -40($fp)
	lw $t3, -8($fp)
	move $t2, $t3
	sw $t2, -44($fp)
	li $t4, -2147483648
	sw $t4, -48($fp)
	lw $t6, -48($fp)
	li $s2, 0
	sub $t5, $s2, $t6
	sw $t5, -52($fp)
	lw $t7, -44($fp)
	lw $t0, -52($fp)
	beq $t7, $t0, label109
	j label110
label109:
	lw $t1, -40($fp)
	li $t1, 1
	sw $t1, -40($fp)
label110:
	lw $t2, -40($fp)
	bne $t2, 0, label108
	j label107
label108:
	li $t3, 0
	sw $t3, -56($fp)
	lw $t5, -16($fp)
	move $t4, $t5
	sw $t4, -60($fp)
	li $t6, 1
	sw $t6, -64($fp)
	lw $t0, -64($fp)
	li $s2, 0
	sub $t7, $s2, $t0
	sw $t7, -68($fp)
	lw $t1, -60($fp)
	lw $t2, -68($fp)
	beq $t1, $t2, label111
	j label112
label111:
	lw $t3, -56($fp)
	li $t3, 1
	sw $t3, -56($fp)
label112:
	lw $t4, -56($fp)
	bne $t4, 0, label106
	j label107
label106:
	lw $t5, -36($fp)
	li $t5, 1
	sw $t5, -36($fp)
label107:
	lw $t6, -36($fp)
	bne $t6, 0, label101
	j label102
label101:
	lw $t7, -20($fp)
	li $t7, 1
	sw $t7, -20($fp)
label102:
	lw $t0, -20($fp)
	bne $t0, 0, label99
	j label100
label99:
	lw $t2, -8($fp)
	move $t1, $t2
	sw $t1, -72($fp)
	lw $t3, -72($fp)
	move $v0, $t3
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t3, -72($fp)
label100:
	lw $t5, -8($fp)
	move $t4, $t5
	sw $t4, -76($fp)
	lw $t7, -16($fp)
	move $t6, $t7
	sw $t6, -80($fp)
	lw $t1, -76($fp)
	lw $t2, -80($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -84($fp)
	lw $t3, -84($fp)
	move $v0, $t3
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t3, -84($fp)
id_oKOcc2QUv:
	subu $sp, $sp, 4
	sw $fp, 0($sp)
	move $fp, $sp
	subu $sp, $sp, 1000
	lw $a0, 12($fp)
	sw $a0, -8($fp)
	lw $a0, 16($fp)
	sw $a0, -16($fp)
	lw $t5, -8($fp)
	move $t4, $t5
	sw $t4, -20($fp)
	li $t6, 0
	sw $t6, -24($fp)
	lw $t7, -20($fp)
	lw $t0, -24($fp)
	blt $t7, $t0, label113
	j label115
label115:
	lw $t2, -8($fp)
	move $t1, $t2
	sw $t1, -28($fp)
	lw $t4, -16($fp)
	move $t3, $t4
	sw $t3, -32($fp)
	lw $t5, -28($fp)
	lw $t6, -32($fp)
	bge $t5, $t6, label113
	j label114
label113:
	li $t7, 0
	sw $t7, -36($fp)
	lw $t0, -36($fp)
	move $v0, $t0
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t0, -36($fp)
label114:
	lw $t2, -8($fp)
	move $t1, $t2
	sw $t1, -40($fp)
	lw $t3, -40($fp)
	move $v0, $t3
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t3, -40($fp)
id_PhcuYx4:
	subu $sp, $sp, 4
	sw $fp, 0($sp)
	move $fp, $sp
	subu $sp, $sp, 1000
	lw $a0, 12($fp)
	sw $a0, -8($fp)
	lw $a0, 16($fp)
	sw $a0, -16($fp)
	lw $a0, 20($fp)
	sw $a0, -24($fp)
	addi $s1, $fp, -56
	sw $s1, -28($fp)
	addi $s1, $fp, -88
	sw $s1, -60($fp)
	addi $s1, $fp, -116
	sw $s1, -92($fp)
	addi $s1, $fp, -128
	sw $s1, -120($fp)
	addi $s1, $fp, -152
	sw $s1, -132($fp)
	li $t4, 46738
	sw $t4, -156($fp)
	lw $t6, -156($fp)
	move $t5, $t6
	sw $t5, -160($fp)
	li $t7, 9623
	sw $t7, -164($fp)
	lw $t1, -164($fp)
	move $t0, $t1
	sw $t0, -168($fp)
	li $t2, 48775
	sw $t2, -172($fp)
	lw $t4, -172($fp)
	move $t3, $t4
	sw $t3, -176($fp)
	li $t5, 50410
	sw $t5, -180($fp)
	lw $t7, -180($fp)
	move $t6, $t7
	sw $t6, -184($fp)
	li $t0, 30946
	sw $t0, -188($fp)
	lw $t2, -188($fp)
	move $t1, $t2
	sw $t1, -192($fp)
	li $t3, 44844
	sw $t3, -196($fp)
	lw $t5, -196($fp)
	move $t4, $t5
	sw $t4, -200($fp)
	li $t6, 14930
	sw $t6, -204($fp)
	lw $t0, -204($fp)
	move $t7, $t0
	sw $t7, -208($fp)
	li $t1, 23934
	sw $t1, -212($fp)
	lw $t3, -212($fp)
	move $t2, $t3
	sw $t2, -216($fp)
	li $t4, 11556
	sw $t4, -220($fp)
	lw $t6, -220($fp)
	move $t5, $t6
	sw $t5, -224($fp)
	li $t7, 46466
	sw $t7, -228($fp)
	lw $t1, -228($fp)
	move $t0, $t1
	sw $t0, -232($fp)
	li $t2, 6721
	sw $t2, -236($fp)
	lw $t4, -236($fp)
	move $t3, $t4
	sw $t3, -240($fp)
	li $t5, 17533
	sw $t5, -244($fp)
	lw $t7, -244($fp)
	move $t6, $t7
	sw $t6, -248($fp)
	li $t0, 10497
	sw $t0, -252($fp)
	lw $t2, -252($fp)
	move $t1, $t2
	sw $t1, -256($fp)
	lw $t4, -28($fp)
	move $t3, $t4
	sw $t3, -260($fp)
	li $t5, 0
	sw $t5, -264($fp)
	lw $t6, -264($fp)
	lw $t7, -264($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -264($fp)
	lw $t1, -260($fp)
	lw $t2, -264($fp)
	add $t0, $t1, $t2
	sw $t0, -268($fp)
	lw $t4, -268($fp)
	move $t3, $t4
	sw $t3, -272($fp)
	li $t5, 58619
	sw $t5, -276($fp)
	lw $t6, -272($fp)
	lw $t7, -276($fp)
	sw $t7, 0($t6)
	sw $t6, -272($fp)
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -280($fp)
	li $t2, 1
	sw $t2, -284($fp)
	lw $t3, -284($fp)
	lw $t4, -284($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -284($fp)
	lw $t6, -280($fp)
	lw $t7, -284($fp)
	add $t5, $t6, $t7
	sw $t5, -288($fp)
	lw $t1, -288($fp)
	move $t0, $t1
	sw $t0, -292($fp)
	li $t2, 25908
	sw $t2, -296($fp)
	lw $t3, -292($fp)
	lw $t4, -296($fp)
	sw $t4, 0($t3)
	sw $t3, -292($fp)
	lw $t6, -28($fp)
	move $t5, $t6
	sw $t5, -300($fp)
	li $t7, 2
	sw $t7, -304($fp)
	lw $t0, -304($fp)
	lw $t1, -304($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -304($fp)
	lw $t3, -300($fp)
	lw $t4, -304($fp)
	add $t2, $t3, $t4
	sw $t2, -308($fp)
	lw $t6, -308($fp)
	move $t5, $t6
	sw $t5, -312($fp)
	li $t7, 58697
	sw $t7, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	sw $t1, 0($t0)
	sw $t0, -312($fp)
	lw $t3, -28($fp)
	move $t2, $t3
	sw $t2, -320($fp)
	li $t4, 3
	sw $t4, -324($fp)
	lw $t5, -324($fp)
	lw $t6, -324($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -324($fp)
	lw $t0, -320($fp)
	lw $t1, -324($fp)
	add $t7, $t0, $t1
	sw $t7, -328($fp)
	lw $t3, -328($fp)
	move $t2, $t3
	sw $t2, -332($fp)
	li $t4, 44394
	sw $t4, -336($fp)
	lw $t5, -332($fp)
	lw $t6, -336($fp)
	sw $t6, 0($t5)
	sw $t5, -332($fp)
	lw $t0, -28($fp)
	move $t7, $t0
	sw $t7, -340($fp)
	li $t1, 4
	sw $t1, -344($fp)
	lw $t2, -344($fp)
	lw $t3, -344($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -344($fp)
	lw $t5, -340($fp)
	lw $t6, -344($fp)
	add $t4, $t5, $t6
	sw $t4, -348($fp)
	lw $t0, -348($fp)
	move $t7, $t0
	sw $t7, -352($fp)
	li $t1, 33610
	sw $t1, -356($fp)
	lw $t2, -352($fp)
	lw $t3, -356($fp)
	sw $t3, 0($t2)
	sw $t2, -352($fp)
	lw $t5, -28($fp)
	move $t4, $t5
	sw $t4, -360($fp)
	li $t6, 5
	sw $t6, -364($fp)
	lw $t7, -364($fp)
	lw $t0, -364($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -364($fp)
	lw $t2, -360($fp)
	lw $t3, -364($fp)
	add $t1, $t2, $t3
	sw $t1, -368($fp)
	lw $t5, -368($fp)
	move $t4, $t5
	sw $t4, -372($fp)
	li $t6, 1610
	sw $t6, -376($fp)
	lw $t7, -372($fp)
	lw $t0, -376($fp)
	sw $t0, 0($t7)
	sw $t7, -372($fp)
	lw $t2, -28($fp)
	move $t1, $t2
	sw $t1, -380($fp)
	li $t3, 6
	sw $t3, -384($fp)
	lw $t4, -384($fp)
	lw $t5, -384($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -384($fp)
	lw $t7, -380($fp)
	lw $t0, -384($fp)
	add $t6, $t7, $t0
	sw $t6, -388($fp)
	lw $t2, -388($fp)
	move $t1, $t2
	sw $t1, -392($fp)
	li $t3, 35532
	sw $t3, -396($fp)
	lw $t4, -392($fp)
	lw $t5, -396($fp)
	sw $t5, 0($t4)
	sw $t4, -392($fp)
	li $t6, 43098
	sw $t6, -400($fp)
	lw $t0, -400($fp)
	move $t7, $t0
	sw $t7, -404($fp)
	lw $t2, -60($fp)
	move $t1, $t2
	sw $t1, -408($fp)
	li $t3, 0
	sw $t3, -412($fp)
	lw $t4, -412($fp)
	lw $t5, -412($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -412($fp)
	lw $t7, -408($fp)
	lw $t0, -412($fp)
	add $t6, $t7, $t0
	sw $t6, -416($fp)
	lw $t2, -416($fp)
	move $t1, $t2
	sw $t1, -420($fp)
	li $t3, 61586
	sw $t3, -424($fp)
	lw $t4, -420($fp)
	lw $t5, -424($fp)
	sw $t5, 0($t4)
	sw $t4, -420($fp)
	lw $t7, -60($fp)
	move $t6, $t7
	sw $t6, -428($fp)
	li $t0, 1
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	lw $t2, -432($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -432($fp)
	lw $t4, -428($fp)
	lw $t5, -432($fp)
	add $t3, $t4, $t5
	sw $t3, -436($fp)
	lw $t7, -436($fp)
	move $t6, $t7
	sw $t6, -440($fp)
	li $t0, 60347
	sw $t0, -444($fp)
	lw $t1, -440($fp)
	lw $t2, -444($fp)
	sw $t2, 0($t1)
	sw $t1, -440($fp)
	lw $t4, -60($fp)
	move $t3, $t4
	sw $t3, -448($fp)
	li $t5, 2
	sw $t5, -452($fp)
	lw $t6, -452($fp)
	lw $t7, -452($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -452($fp)
	lw $t1, -448($fp)
	lw $t2, -452($fp)
	add $t0, $t1, $t2
	sw $t0, -456($fp)
	lw $t4, -456($fp)
	move $t3, $t4
	sw $t3, -460($fp)
	li $t5, 3805
	sw $t5, -464($fp)
	lw $t6, -460($fp)
	lw $t7, -464($fp)
	sw $t7, 0($t6)
	sw $t6, -460($fp)
	lw $t1, -60($fp)
	move $t0, $t1
	sw $t0, -468($fp)
	li $t2, 3
	sw $t2, -472($fp)
	lw $t3, -472($fp)
	lw $t4, -472($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -472($fp)
	lw $t6, -468($fp)
	lw $t7, -472($fp)
	add $t5, $t6, $t7
	sw $t5, -476($fp)
	lw $t1, -476($fp)
	move $t0, $t1
	sw $t0, -480($fp)
	li $t2, 44607
	sw $t2, -484($fp)
	lw $t3, -480($fp)
	lw $t4, -484($fp)
	sw $t4, 0($t3)
	sw $t3, -480($fp)
	lw $t6, -60($fp)
	move $t5, $t6
	sw $t5, -488($fp)
	li $t7, 4
	sw $t7, -492($fp)
	lw $t0, -492($fp)
	lw $t1, -492($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -492($fp)
	lw $t3, -488($fp)
	lw $t4, -492($fp)
	add $t2, $t3, $t4
	sw $t2, -496($fp)
	lw $t6, -496($fp)
	move $t5, $t6
	sw $t5, -500($fp)
	li $t7, 40262
	sw $t7, -504($fp)
	lw $t0, -500($fp)
	lw $t1, -504($fp)
	sw $t1, 0($t0)
	sw $t0, -500($fp)
	lw $t3, -60($fp)
	move $t2, $t3
	sw $t2, -508($fp)
	li $t4, 5
	sw $t4, -512($fp)
	lw $t5, -512($fp)
	lw $t6, -512($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -512($fp)
	lw $t0, -508($fp)
	lw $t1, -512($fp)
	add $t7, $t0, $t1
	sw $t7, -516($fp)
	lw $t3, -516($fp)
	move $t2, $t3
	sw $t2, -520($fp)
	li $t4, 9093
	sw $t4, -524($fp)
	lw $t5, -520($fp)
	lw $t6, -524($fp)
	sw $t6, 0($t5)
	sw $t5, -520($fp)
	lw $t0, -60($fp)
	move $t7, $t0
	sw $t7, -528($fp)
	li $t1, 6
	sw $t1, -532($fp)
	lw $t2, -532($fp)
	lw $t3, -532($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -532($fp)
	lw $t5, -528($fp)
	lw $t6, -532($fp)
	add $t4, $t5, $t6
	sw $t4, -536($fp)
	lw $t0, -536($fp)
	move $t7, $t0
	sw $t7, -540($fp)
	li $t1, 20699
	sw $t1, -544($fp)
	lw $t2, -540($fp)
	lw $t3, -544($fp)
	sw $t3, 0($t2)
	sw $t2, -540($fp)
	li $t4, 23260
	sw $t4, -548($fp)
	lw $t6, -548($fp)
	move $t5, $t6
	sw $t5, -552($fp)
	li $t7, 22722
	sw $t7, -556($fp)
	lw $t1, -556($fp)
	move $t0, $t1
	sw $t0, -560($fp)
	li $t2, 13852
	sw $t2, -564($fp)
	lw $t4, -564($fp)
	move $t3, $t4
	sw $t3, -568($fp)
	li $t5, 4462
	sw $t5, -572($fp)
	lw $t7, -572($fp)
	move $t6, $t7
	sw $t6, -576($fp)
	lw $t1, -92($fp)
	move $t0, $t1
	sw $t0, -580($fp)
	li $t2, 0
	sw $t2, -584($fp)
	lw $t3, -584($fp)
	lw $t4, -584($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -584($fp)
	lw $t6, -580($fp)
	lw $t7, -584($fp)
	add $t5, $t6, $t7
	sw $t5, -588($fp)
	lw $t1, -588($fp)
	move $t0, $t1
	sw $t0, -592($fp)
	li $t2, 32345
	sw $t2, -596($fp)
	lw $t3, -592($fp)
	lw $t4, -596($fp)
	sw $t4, 0($t3)
	sw $t3, -592($fp)
	lw $t6, -92($fp)
	move $t5, $t6
	sw $t5, -600($fp)
	li $t7, 1
	sw $t7, -604($fp)
	lw $t0, -604($fp)
	lw $t1, -604($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -604($fp)
	lw $t3, -600($fp)
	lw $t4, -604($fp)
	add $t2, $t3, $t4
	sw $t2, -608($fp)
	lw $t6, -608($fp)
	move $t5, $t6
	sw $t5, -612($fp)
	li $t7, 62627
	sw $t7, -616($fp)
	lw $t0, -612($fp)
	lw $t1, -616($fp)
	sw $t1, 0($t0)
	sw $t0, -612($fp)
	lw $t3, -92($fp)
	move $t2, $t3
	sw $t2, -620($fp)
	li $t4, 2
	sw $t4, -624($fp)
	lw $t5, -624($fp)
	lw $t6, -624($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -624($fp)
	lw $t0, -620($fp)
	lw $t1, -624($fp)
	add $t7, $t0, $t1
	sw $t7, -628($fp)
	lw $t3, -628($fp)
	move $t2, $t3
	sw $t2, -632($fp)
	li $t4, 54873
	sw $t4, -636($fp)
	lw $t5, -632($fp)
	lw $t6, -636($fp)
	sw $t6, 0($t5)
	sw $t5, -632($fp)
	lw $t0, -92($fp)
	move $t7, $t0
	sw $t7, -640($fp)
	li $t1, 3
	sw $t1, -644($fp)
	lw $t2, -644($fp)
	lw $t3, -644($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -644($fp)
	lw $t5, -640($fp)
	lw $t6, -644($fp)
	add $t4, $t5, $t6
	sw $t4, -648($fp)
	lw $t0, -648($fp)
	move $t7, $t0
	sw $t7, -652($fp)
	li $t1, 63292
	sw $t1, -656($fp)
	lw $t2, -652($fp)
	lw $t3, -656($fp)
	sw $t3, 0($t2)
	sw $t2, -652($fp)
	lw $t5, -92($fp)
	move $t4, $t5
	sw $t4, -660($fp)
	li $t6, 4
	sw $t6, -664($fp)
	lw $t7, -664($fp)
	lw $t0, -664($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -664($fp)
	lw $t2, -660($fp)
	lw $t3, -664($fp)
	add $t1, $t2, $t3
	sw $t1, -668($fp)
	lw $t5, -668($fp)
	move $t4, $t5
	sw $t4, -672($fp)
	li $t6, 41936
	sw $t6, -676($fp)
	lw $t7, -672($fp)
	lw $t0, -676($fp)
	sw $t0, 0($t7)
	sw $t7, -672($fp)
	lw $t2, -92($fp)
	move $t1, $t2
	sw $t1, -680($fp)
	li $t3, 5
	sw $t3, -684($fp)
	lw $t4, -684($fp)
	lw $t5, -684($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -684($fp)
	lw $t7, -680($fp)
	lw $t0, -684($fp)
	add $t6, $t7, $t0
	sw $t6, -688($fp)
	lw $t2, -688($fp)
	move $t1, $t2
	sw $t1, -692($fp)
	li $t3, 4267
	sw $t3, -696($fp)
	lw $t4, -692($fp)
	lw $t5, -696($fp)
	sw $t5, 0($t4)
	sw $t4, -692($fp)
	li $t6, 21690
	sw $t6, -700($fp)
	lw $t0, -700($fp)
	move $t7, $t0
	sw $t7, -704($fp)
	li $t1, 53492
	sw $t1, -708($fp)
	lw $t3, -708($fp)
	move $t2, $t3
	sw $t2, -712($fp)
	li $t4, 50733
	sw $t4, -716($fp)
	lw $t6, -716($fp)
	move $t5, $t6
	sw $t5, -720($fp)
	li $t7, 28411
	sw $t7, -724($fp)
	lw $t1, -724($fp)
	move $t0, $t1
	sw $t0, -728($fp)
	li $t2, 5489
	sw $t2, -732($fp)
	lw $t4, -732($fp)
	move $t3, $t4
	sw $t3, -736($fp)
	li $t5, 61230
	sw $t5, -740($fp)
	lw $t7, -740($fp)
	move $t6, $t7
	sw $t6, -744($fp)
	li $t0, 21494
	sw $t0, -748($fp)
	lw $t2, -748($fp)
	move $t1, $t2
	sw $t1, -752($fp)
	lw $t4, -120($fp)
	move $t3, $t4
	sw $t3, -756($fp)
	li $t5, 0
	sw $t5, -760($fp)
	lw $t6, -760($fp)
	lw $t7, -760($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -760($fp)
	lw $t1, -756($fp)
	lw $t2, -760($fp)
	add $t0, $t1, $t2
	sw $t0, -764($fp)
	lw $t4, -764($fp)
	move $t3, $t4
	sw $t3, -768($fp)
	li $t5, 31397
	sw $t5, -772($fp)
	lw $t6, -768($fp)
	lw $t7, -772($fp)
	sw $t7, 0($t6)
	sw $t6, -768($fp)
	lw $t1, -120($fp)
	move $t0, $t1
	sw $t0, -776($fp)
	li $t2, 1
	sw $t2, -780($fp)
	lw $t3, -780($fp)
	lw $t4, -780($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -780($fp)
	lw $t6, -776($fp)
	lw $t7, -780($fp)
	add $t5, $t6, $t7
	sw $t5, -784($fp)
	lw $t1, -784($fp)
	move $t0, $t1
	sw $t0, -788($fp)
	li $t2, 54392
	sw $t2, -792($fp)
	lw $t3, -788($fp)
	lw $t4, -792($fp)
	sw $t4, 0($t3)
	sw $t3, -788($fp)
	lw $t6, -132($fp)
	move $t5, $t6
	sw $t5, -796($fp)
	li $t7, 0
	sw $t7, -800($fp)
	lw $t0, -800($fp)
	lw $t1, -800($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -800($fp)
	lw $t3, -796($fp)
	lw $t4, -800($fp)
	add $t2, $t3, $t4
	sw $t2, -804($fp)
	lw $t6, -804($fp)
	move $t5, $t6
	sw $t5, -808($fp)
	li $t7, 352
	sw $t7, -812($fp)
	lw $t0, -808($fp)
	lw $t1, -812($fp)
	sw $t1, 0($t0)
	sw $t0, -808($fp)
	lw $t3, -132($fp)
	move $t2, $t3
	sw $t2, -816($fp)
	li $t4, 1
	sw $t4, -820($fp)
	lw $t5, -820($fp)
	lw $t6, -820($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -820($fp)
	lw $t0, -816($fp)
	lw $t1, -820($fp)
	add $t7, $t0, $t1
	sw $t7, -824($fp)
	lw $t3, -824($fp)
	move $t2, $t3
	sw $t2, -828($fp)
	li $t4, 65007
	sw $t4, -832($fp)
	lw $t5, -828($fp)
	lw $t6, -832($fp)
	sw $t6, 0($t5)
	sw $t5, -828($fp)
	lw $t0, -132($fp)
	move $t7, $t0
	sw $t7, -836($fp)
	li $t1, 2
	sw $t1, -840($fp)
	lw $t2, -840($fp)
	lw $t3, -840($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -840($fp)
	lw $t5, -836($fp)
	lw $t6, -840($fp)
	add $t4, $t5, $t6
	sw $t4, -844($fp)
	lw $t0, -844($fp)
	move $t7, $t0
	sw $t7, -848($fp)
	li $t1, 56002
	sw $t1, -852($fp)
	lw $t2, -848($fp)
	lw $t3, -852($fp)
	sw $t3, 0($t2)
	sw $t2, -848($fp)
	lw $t5, -132($fp)
	move $t4, $t5
	sw $t4, -856($fp)
	li $t6, 3
	sw $t6, -860($fp)
	lw $t7, -860($fp)
	lw $t0, -860($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -860($fp)
	lw $t2, -856($fp)
	lw $t3, -860($fp)
	add $t1, $t2, $t3
	sw $t1, -864($fp)
	lw $t5, -864($fp)
	move $t4, $t5
	sw $t4, -868($fp)
	li $t6, 35885
	sw $t6, -872($fp)
	lw $t7, -868($fp)
	lw $t0, -872($fp)
	sw $t0, 0($t7)
	sw $t7, -868($fp)
	lw $t2, -132($fp)
	move $t1, $t2
	sw $t1, -876($fp)
	li $t3, 4
	sw $t3, -880($fp)
	lw $t4, -880($fp)
	lw $t5, -880($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -880($fp)
	lw $t7, -876($fp)
	lw $t0, -880($fp)
	add $t6, $t7, $t0
	sw $t6, -884($fp)
	lw $t2, -884($fp)
	move $t1, $t2
	sw $t1, -888($fp)
	li $t3, 42569
	sw $t3, -892($fp)
	lw $t4, -888($fp)
	lw $t5, -892($fp)
	sw $t5, 0($t4)
	sw $t4, -888($fp)
	li $t6, 52052
	sw $t6, -896($fp)
	lw $t0, -896($fp)
	move $t7, $t0
	sw $t7, -900($fp)
	li $t1, 30696
	sw $t1, -904($fp)
	lw $t3, -904($fp)
	move $t2, $t3
	sw $t2, -908($fp)
	li $t4, 46374
	sw $t4, -912($fp)
	lw $t6, -912($fp)
	move $t5, $t6
	sw $t5, -916($fp)
	li $t7, 31124
	sw $t7, -920($fp)
	lw $t1, -920($fp)
	move $t0, $t1
	sw $t0, -924($fp)
	li $t2, 5423
	sw $t2, -928($fp)
	lw $t4, -928($fp)
	move $t3, $t4
	sw $t3, -932($fp)
	li $t5, 55468
	sw $t5, -936($fp)
	lw $t7, -936($fp)
	move $t6, $t7
	sw $t6, -940($fp)
	li $t0, 51823
	sw $t0, -944($fp)
	lw $t2, -944($fp)
	move $t1, $t2
	sw $t1, -948($fp)
	li $t3, 28683
	sw $t3, -952($fp)
	lw $t5, -952($fp)
	move $t4, $t5
	sw $t4, -956($fp)
	li $t6, 12654
	sw $t6, -960($fp)
	lw $t0, -960($fp)
	move $t7, $t0
	sw $t7, -964($fp)
	li $t1, 140
	sw $t1, -968($fp)
	lw $t3, -968($fp)
	move $t2, $t3
	sw $t2, -972($fp)
label116:
	li $t4, 33146
	sw $t4, -976($fp)
	li $t5, 44999
	sw $t5, -980($fp)
	lw $t7, -976($fp)
	lw $t0, -980($fp)
	div $t7, $t0
	mflo $t6
	sw $t6, -984($fp)
	li $t1, 0
	sw $t1, -988($fp)
	lw $t3, -720($fp)
	move $t2, $t3
	sw $t2, -992($fp)
	lw $t5, -200($fp)
	move $t4, $t5
	sw $t4, -996($fp)
	lw $t7, -992($fp)
	lw $t0, -996($fp)
	sub $t6, $t7, $t0
	sw $t6, -1000($fp)
	lw $t1, -1000($fp)
	bne $t1, 0, label121
	j label120
label121:
	lw $t3, -192($fp)
	move $t2, $t3
	sw $t2, -1004($fp)
	lw $t4, -1004($fp)
	bne $t4, 0, label119
	j label120
label119:
	lw $t5, -988($fp)
	li $t5, 1
	sw $t5, -988($fp)
label120:
	li $t6, 0
	sw $t6, -1008($fp)
	lw $t0, -192($fp)
	move $t7, $t0
	sw $t7, -1012($fp)
	lw $t1, -1012($fp)
	bne $t1, 0, label125
	j label123
label125:
	lw $t3, -916($fp)
	move $t2, $t3
	sw $t2, -1016($fp)
	lw $t4, -1016($fp)
	bne $t4, 0, label124
	j label123
label124:
	lw $t6, -192($fp)
	move $t5, $t6
	sw $t5, -1020($fp)
	lw $t7, -1020($fp)
	bne $t7, 0, label122
	j label123
label122:
	lw $t0, -1008($fp)
	li $t0, 1
	sw $t0, -1008($fp)
label123:
	li $t1, 0
	sw $t1, -1024($fp)
	lw $t3, -248($fp)
	move $t2, $t3
	sw $t2, -1028($fp)
	li $t4, 62767
	sw $t4, -1032($fp)
	lw $t6, -1028($fp)
	lw $t7, -1032($fp)
	div $t6, $t7
	mflo $t5
	sw $t5, -1036($fp)
	lw $t0, -1036($fp)
	bne $t0, 0, label128
	j label127
label128:
	lw $t2, -200($fp)
	move $t1, $t2
	sw $t1, -1040($fp)
	lw $t3, -1040($fp)
	bne $t3, 0, label126
	j label127
label126:
	lw $t4, -1024($fp)
	li $t4, 1
	sw $t4, -1024($fp)
label127:
	lw $s0, -1024($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1008($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -988($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t5, $v0
	sw $t5, -1044($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t7, -984($fp)
	lw $t0, -1044($fp)
	add $t6, $t7, $t0
	sw $t6, -1048($fp)
	lw $t1, -1048($fp)
	bne $t1, 0, label117
	j label118
label117:
	li $t2, 0
	sw $t2, -1052($fp)
	li $t3, 0
	sw $t3, -1056($fp)
	li $t4, 22483
	sw $t4, -1060($fp)
	lw $t5, -1060($fp)
	bne $t5, 0, label135
	j label134
label134:
	lw $t6, -1056($fp)
	li $t6, 1
	sw $t6, -1056($fp)
label135:
	lw $t0, -568($fp)
	move $t7, $t0
	sw $t7, -1064($fp)
	lw $t2, -1056($fp)
	lw $t3, -1064($fp)
	div $t2, $t3
	mflo $t1
	sw $t1, -1068($fp)
	lw $t5, -28($fp)
	move $t4, $t5
	sw $t4, -1072($fp)
	lw $t7, -924($fp)
	move $t6, $t7
	sw $t6, -1076($fp)
	lw $t0, -1076($fp)
	lw $t1, -1076($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -1076($fp)
	lw $t3, -1072($fp)
	lw $t4, -1076($fp)
	add $t2, $t3, $t4
	sw $t2, -1080($fp)
	lw $t6, -1080($fp)
	lw $t5, 0($t6)
	sw $t5, -1084($fp)
	lw $t0, -248($fp)
	move $t7, $t0
	sw $t7, -1088($fp)
	lw $t2, -1084($fp)
	lw $t3, -1088($fp)
	div $t2, $t3
	mflo $t1
	sw $t1, -1092($fp)
	lw $t5, -256($fp)
	move $t4, $t5
	sw $t4, -1096($fp)
	lw $t7, -1096($fp)
	li $s2, 0
	sub $t6, $s2, $t7
	sw $t6, -1100($fp)
	lw $t1, -1100($fp)
	li $s2, 0
	sub $t0, $s2, $t1
	sw $t0, -1104($fp)
	lw $s0, -1104($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1092($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1068($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t2, $v0
	sw $t2, -1108($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t3, -1108($fp)
	bne $t3, 0, label132
	j label133
label132:
	lw $t4, -1052($fp)
	li $t4, 1
	sw $t4, -1052($fp)
label133:
	lw $t6, -1052($fp)
	li $s2, 0
	sub $t5, $s2, $t6
	sw $t5, -1112($fp)
	li $t7, 0
	sw $t7, -1116($fp)
	lw $t1, -900($fp)
	move $t0, $t1
	sw $t0, -1120($fp)
	lw $t2, -1120($fp)
	bne $t2, 0, label139
	j label137
label139:
	lw $t4, -964($fp)
	move $t3, $t4
	sw $t3, -1124($fp)
	lw $t5, -1124($fp)
	bne $t5, 0, label138
	j label137
label138:
	lw $t7, -200($fp)
	move $t6, $t7
	sw $t6, -1128($fp)
	lw $t0, -1128($fp)
	bne $t0, 0, label136
	j label137
label136:
	lw $t1, -1116($fp)
	li $t1, 1
	sw $t1, -1116($fp)
label137:
	li $t2, 0
	sw $t2, -1132($fp)
	li $t3, 0
	sw $t3, -1136($fp)
	li $t4, 42755
	sw $t4, -1140($fp)
	li $t5, 39167
	sw $t5, -1144($fp)
	lw $t6, -1140($fp)
	lw $t7, -1144($fp)
	blt $t6, $t7, label142
	j label143
label142:
	lw $t0, -1136($fp)
	li $t0, 1
	sw $t0, -1136($fp)
label143:
	lw $t2, -712($fp)
	move $t1, $t2
	sw $t1, -1148($fp)
	lw $t3, -1136($fp)
	lw $t4, -1148($fp)
	bge $t3, $t4, label140
	j label141
label140:
	lw $t5, -1132($fp)
	li $t5, 1
	sw $t5, -1132($fp)
label141:
	lw $t7, -224($fp)
	move $t6, $t7
	sw $t6, -1152($fp)
	lw $t1, -908($fp)
	move $t0, $t1
	sw $t0, -1156($fp)
	lw $t3, -1152($fp)
	lw $t4, -1156($fp)
	div $t3, $t4
	mflo $t2
	sw $t2, -1160($fp)
	lw $t6, -908($fp)
	move $t5, $t6
	sw $t5, -1164($fp)
	lw $t0, -1160($fp)
	lw $t1, -1164($fp)
	sub $t7, $t0, $t1
	sw $t7, -1168($fp)
	li $t2, 26750
	sw $t2, -1172($fp)
	lw $t4, -1172($fp)
	li $s2, 0
	sub $t3, $s2, $t4
	sw $t3, -1176($fp)
	lw $t6, -752($fp)
	move $t5, $t6
	sw $t5, -1180($fp)
	lw $t0, -1176($fp)
	lw $t1, -1180($fp)
	sub $t7, $t0, $t1
	sw $t7, -1184($fp)
	lw $s0, -1184($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1168($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1132($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t2, $v0
	sw $t2, -1188($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	li $t3, 64445
	sw $t3, -1192($fp)
	lw $t5, -1188($fp)
	lw $t6, -1192($fp)
	div $t5, $t6
	mflo $t4
	sw $t4, -1196($fp)
	li $t7, 0
	sw $t7, -1200($fp)
	li $t0, 27123
	sw $t0, -1204($fp)
	li $t1, 11947
	sw $t1, -1208($fp)
	lw $t2, -1204($fp)
	lw $t3, -1208($fp)
	ble $t2, $t3, label144
	j label146
label146:
	lw $t5, -8($fp)
	move $t4, $t5
	sw $t4, -1212($fp)
	lw $t6, -1212($fp)
	bne $t6, 0, label144
	j label145
label144:
	lw $t7, -1200($fp)
	li $t7, 1
	sw $t7, -1200($fp)
label145:
	lw $s0, -1200($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1196($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1116($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t0, $v0
	sw $t0, -1216($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t1, -1112($fp)
	lw $t2, -1216($fp)
	beq $t1, $t2, label129
	j label130
label129:
	addi $s1, $fp, -1228
	sw $s1, -1220($fp)
	addi $s1, $fp, -1252
	sw $s1, -1232($fp)
	addi $s1, $fp, -1280
	sw $s1, -1256($fp)
	li $t3, 27320
	sw $t3, -1284($fp)
	lw $t5, -1284($fp)
	move $t4, $t5
	sw $t4, -1288($fp)
	lw $t7, -1220($fp)
	move $t6, $t7
	sw $t6, -1292($fp)
	li $t0, 0
	sw $t0, -1296($fp)
	lw $t1, -1296($fp)
	lw $t2, -1296($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -1296($fp)
	lw $t4, -1292($fp)
	lw $t5, -1296($fp)
	add $t3, $t4, $t5
	sw $t3, -1300($fp)
	lw $t7, -1300($fp)
	move $t6, $t7
	sw $t6, -1304($fp)
	li $t0, 32612
	sw $t0, -1308($fp)
	lw $t1, -1304($fp)
	lw $t2, -1308($fp)
	sw $t2, 0($t1)
	sw $t1, -1304($fp)
	lw $t4, -1220($fp)
	move $t3, $t4
	sw $t3, -1312($fp)
	li $t5, 1
	sw $t5, -1316($fp)
	lw $t6, -1316($fp)
	lw $t7, -1316($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -1316($fp)
	lw $t1, -1312($fp)
	lw $t2, -1316($fp)
	add $t0, $t1, $t2
	sw $t0, -1320($fp)
	lw $t4, -1320($fp)
	move $t3, $t4
	sw $t3, -1324($fp)
	li $t5, 7642
	sw $t5, -1328($fp)
	lw $t6, -1324($fp)
	lw $t7, -1328($fp)
	sw $t7, 0($t6)
	sw $t6, -1324($fp)
	li $t0, 48815
	sw $t0, -1332($fp)
	lw $t2, -1332($fp)
	move $t1, $t2
	sw $t1, -1336($fp)
	li $t3, 64009
	sw $t3, -1340($fp)
	lw $t5, -1340($fp)
	move $t4, $t5
	sw $t4, -1344($fp)
	li $t6, 62034
	sw $t6, -1348($fp)
	lw $t0, -1348($fp)
	move $t7, $t0
	sw $t7, -1352($fp)
	lw $t2, -1232($fp)
	move $t1, $t2
	sw $t1, -1356($fp)
	li $t3, 0
	sw $t3, -1360($fp)
	lw $t4, -1360($fp)
	lw $t5, -1360($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -1360($fp)
	lw $t7, -1356($fp)
	lw $t0, -1360($fp)
	add $t6, $t7, $t0
	sw $t6, -1364($fp)
	lw $t2, -1364($fp)
	move $t1, $t2
	sw $t1, -1368($fp)
	li $t3, 49167
	sw $t3, -1372($fp)
	lw $t4, -1368($fp)
	lw $t5, -1372($fp)
	sw $t5, 0($t4)
	sw $t4, -1368($fp)
	lw $t7, -1232($fp)
	move $t6, $t7
	sw $t6, -1376($fp)
	li $t0, 1
	sw $t0, -1380($fp)
	lw $t1, -1380($fp)
	lw $t2, -1380($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -1380($fp)
	lw $t4, -1376($fp)
	lw $t5, -1380($fp)
	add $t3, $t4, $t5
	sw $t3, -1384($fp)
	lw $t7, -1384($fp)
	move $t6, $t7
	sw $t6, -1388($fp)
	li $t0, 63480
	sw $t0, -1392($fp)
	lw $t1, -1388($fp)
	lw $t2, -1392($fp)
	sw $t2, 0($t1)
	sw $t1, -1388($fp)
	lw $t4, -1232($fp)
	move $t3, $t4
	sw $t3, -1396($fp)
	li $t5, 2
	sw $t5, -1400($fp)
	lw $t6, -1400($fp)
	lw $t7, -1400($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -1400($fp)
	lw $t1, -1396($fp)
	lw $t2, -1400($fp)
	add $t0, $t1, $t2
	sw $t0, -1404($fp)
	lw $t4, -1404($fp)
	move $t3, $t4
	sw $t3, -1408($fp)
	li $t5, 52500
	sw $t5, -1412($fp)
	lw $t6, -1408($fp)
	lw $t7, -1412($fp)
	sw $t7, 0($t6)
	sw $t6, -1408($fp)
	lw $t1, -1232($fp)
	move $t0, $t1
	sw $t0, -1416($fp)
	li $t2, 3
	sw $t2, -1420($fp)
	lw $t3, -1420($fp)
	lw $t4, -1420($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -1420($fp)
	lw $t6, -1416($fp)
	lw $t7, -1420($fp)
	add $t5, $t6, $t7
	sw $t5, -1424($fp)
	lw $t1, -1424($fp)
	move $t0, $t1
	sw $t0, -1428($fp)
	li $t2, 19516
	sw $t2, -1432($fp)
	lw $t3, -1428($fp)
	lw $t4, -1432($fp)
	sw $t4, 0($t3)
	sw $t3, -1428($fp)
	lw $t6, -1232($fp)
	move $t5, $t6
	sw $t5, -1436($fp)
	li $t7, 4
	sw $t7, -1440($fp)
	lw $t0, -1440($fp)
	lw $t1, -1440($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -1440($fp)
	lw $t3, -1436($fp)
	lw $t4, -1440($fp)
	add $t2, $t3, $t4
	sw $t2, -1444($fp)
	lw $t6, -1444($fp)
	move $t5, $t6
	sw $t5, -1448($fp)
	li $t7, 40514
	sw $t7, -1452($fp)
	lw $t0, -1448($fp)
	lw $t1, -1452($fp)
	sw $t1, 0($t0)
	sw $t0, -1448($fp)
	li $t2, 39017
	sw $t2, -1456($fp)
	lw $t4, -1456($fp)
	move $t3, $t4
	sw $t3, -1460($fp)
	lw $t6, -1256($fp)
	move $t5, $t6
	sw $t5, -1464($fp)
	li $t7, 0
	sw $t7, -1468($fp)
	lw $t0, -1468($fp)
	lw $t1, -1468($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -1468($fp)
	lw $t3, -1464($fp)
	lw $t4, -1468($fp)
	add $t2, $t3, $t4
	sw $t2, -1472($fp)
	lw $t6, -1472($fp)
	move $t5, $t6
	sw $t5, -1476($fp)
	li $t7, 50213
	sw $t7, -1480($fp)
	lw $t0, -1476($fp)
	lw $t1, -1480($fp)
	sw $t1, 0($t0)
	sw $t0, -1476($fp)
	lw $t3, -1256($fp)
	move $t2, $t3
	sw $t2, -1484($fp)
	li $t4, 1
	sw $t4, -1488($fp)
	lw $t5, -1488($fp)
	lw $t6, -1488($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -1488($fp)
	lw $t0, -1484($fp)
	lw $t1, -1488($fp)
	add $t7, $t0, $t1
	sw $t7, -1492($fp)
	lw $t3, -1492($fp)
	move $t2, $t3
	sw $t2, -1496($fp)
	li $t4, 21352
	sw $t4, -1500($fp)
	lw $t5, -1496($fp)
	lw $t6, -1500($fp)
	sw $t6, 0($t5)
	sw $t5, -1496($fp)
	lw $t0, -1256($fp)
	move $t7, $t0
	sw $t7, -1504($fp)
	li $t1, 2
	sw $t1, -1508($fp)
	lw $t2, -1508($fp)
	lw $t3, -1508($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -1508($fp)
	lw $t5, -1504($fp)
	lw $t6, -1508($fp)
	add $t4, $t5, $t6
	sw $t4, -1512($fp)
	lw $t0, -1512($fp)
	move $t7, $t0
	sw $t7, -1516($fp)
	li $t1, 4605
	sw $t1, -1520($fp)
	lw $t2, -1516($fp)
	lw $t3, -1520($fp)
	sw $t3, 0($t2)
	sw $t2, -1516($fp)
	lw $t5, -1256($fp)
	move $t4, $t5
	sw $t4, -1524($fp)
	li $t6, 3
	sw $t6, -1528($fp)
	lw $t7, -1528($fp)
	lw $t0, -1528($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -1528($fp)
	lw $t2, -1524($fp)
	lw $t3, -1528($fp)
	add $t1, $t2, $t3
	sw $t1, -1532($fp)
	lw $t5, -1532($fp)
	move $t4, $t5
	sw $t4, -1536($fp)
	li $t6, 55636
	sw $t6, -1540($fp)
	lw $t7, -1536($fp)
	lw $t0, -1540($fp)
	sw $t0, 0($t7)
	sw $t7, -1536($fp)
	lw $t2, -1256($fp)
	move $t1, $t2
	sw $t1, -1544($fp)
	li $t3, 4
	sw $t3, -1548($fp)
	lw $t4, -1548($fp)
	lw $t5, -1548($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -1548($fp)
	lw $t7, -1544($fp)
	lw $t0, -1548($fp)
	add $t6, $t7, $t0
	sw $t6, -1552($fp)
	lw $t2, -1552($fp)
	move $t1, $t2
	sw $t1, -1556($fp)
	li $t3, 11284
	sw $t3, -1560($fp)
	lw $t4, -1556($fp)
	lw $t5, -1560($fp)
	sw $t5, 0($t4)
	sw $t4, -1556($fp)
	lw $t7, -1256($fp)
	move $t6, $t7
	sw $t6, -1564($fp)
	li $t0, 5
	sw $t0, -1568($fp)
	lw $t1, -1568($fp)
	lw $t2, -1568($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -1568($fp)
	lw $t4, -1564($fp)
	lw $t5, -1568($fp)
	add $t3, $t4, $t5
	sw $t3, -1572($fp)
	lw $t7, -1572($fp)
	move $t6, $t7
	sw $t6, -1576($fp)
	li $t0, 56428
	sw $t0, -1580($fp)
	lw $t1, -1576($fp)
	lw $t2, -1580($fp)
	sw $t2, 0($t1)
	sw $t1, -1576($fp)
label147:
	li $t3, 18783
	sw $t3, -1584($fp)
	lw $t5, -1584($fp)
	li $s2, 0
	sub $t4, $s2, $t5
	sw $t4, -1588($fp)
	li $t6, 0
	sw $t6, -1592($fp)
	li $t7, 0
	sw $t7, -1596($fp)
	li $t0, 23938
	sw $t0, -1600($fp)
	lw $t1, -1600($fp)
	bne $t1, 0, label156
	j label154
label156:
	lw $t3, -964($fp)
	move $t2, $t3
	sw $t2, -1604($fp)
	lw $t4, -1604($fp)
	bne $t4, 0, label155
	j label154
label155:
	lw $t6, -704($fp)
	move $t5, $t6
	sw $t5, -1608($fp)
	lw $t7, -1608($fp)
	bne $t7, 0, label153
	j label154
label153:
	lw $t0, -1596($fp)
	li $t0, 1
	sw $t0, -1596($fp)
label154:
	lw $t2, -1232($fp)
	move $t1, $t2
	sw $t1, -1612($fp)
	lw $t4, -560($fp)
	move $t3, $t4
	sw $t3, -1616($fp)
	lw $t5, -1616($fp)
	lw $t6, -1616($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -1616($fp)
	lw $t0, -1612($fp)
	lw $t1, -1616($fp)
	add $t7, $t0, $t1
	sw $t7, -1620($fp)
	lw $t3, -1620($fp)
	lw $t2, 0($t3)
	sw $t2, -1624($fp)
	li $t4, 56568
	sw $t4, -1628($fp)
	lw $t6, -1628($fp)
	li $s2, 0
	sub $t5, $s2, $t6
	sw $t5, -1632($fp)
	lw $s0, -1632($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1624($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1596($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t7, $v0
	sw $t7, -1636($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t0, -1636($fp)
	bne $t0, 0, label152
	j label151
label151:
	lw $t1, -1592($fp)
	li $t1, 1
	sw $t1, -1592($fp)
label152:
	lw $t2, -1588($fp)
	lw $t3, -1592($fp)
	bne $t2, $t3, label150
	j label149
label150:
	lw $t5, -1220($fp)
	move $t4, $t5
	sw $t4, -1640($fp)
	li $t6, 0
	sw $t6, -1644($fp)
	lw $t0, -908($fp)
	move $t7, $t0
	sw $t7, -1648($fp)
	lw $t2, -576($fp)
	move $t1, $t2
	sw $t1, -1652($fp)
	lw $t3, -1648($fp)
	lw $t4, -1652($fp)
	bne $t3, $t4, label157
	j label158
label157:
	lw $t5, -1644($fp)
	li $t5, 1
	sw $t5, -1644($fp)
label158:
	lw $t6, -1644($fp)
	lw $t7, -1644($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -1644($fp)
	lw $t1, -1640($fp)
	lw $t2, -1644($fp)
	add $t0, $t1, $t2
	sw $t0, -1656($fp)
	lw $t4, -1656($fp)
	lw $t3, 0($t4)
	sw $t3, -1660($fp)
	lw $t5, -1660($fp)
	bne $t5, 0, label148
	j label149
label148:
	li $t6, 51929
	sw $t6, -1664($fp)
	li $t7, 0
	sw $t7, -1668($fp)
	li $t0, 3402
	sw $t0, -1672($fp)
	lw $t2, -184($fp)
	move $t1, $t2
	sw $t1, -1676($fp)
	lw $t4, -1672($fp)
	lw $t5, -1676($fp)
	div $t4, $t5
	mflo $t3
	sw $t3, -1680($fp)
	lw $t6, -1680($fp)
	bne $t6, 0, label159
	j label161
label161:
	lw $t0, -576($fp)
	move $t7, $t0
	sw $t7, -1684($fp)
	lw $t1, -1684($fp)
	bne $t1, 0, label159
	j label160
label159:
	lw $t2, -1668($fp)
	li $t2, 1
	sw $t2, -1668($fp)
label160:
	li $t3, 0
	sw $t3, -1688($fp)
	li $t4, 0
	sw $t4, -1692($fp)
	li $t5, 53800
	sw $t5, -1696($fp)
	li $t6, 8876
	sw $t6, -1700($fp)
	lw $t7, -1696($fp)
	lw $t0, -1700($fp)
	bne $t7, $t0, label164
	j label165
label164:
	lw $t1, -1692($fp)
	li $t1, 1
	sw $t1, -1692($fp)
label165:
	li $t2, 46157
	sw $t2, -1704($fp)
	lw $t3, -1692($fp)
	lw $t4, -1704($fp)
	beq $t3, $t4, label162
	j label163
label162:
	lw $t5, -1688($fp)
	li $t5, 1
	sw $t5, -1688($fp)
label163:
	li $t6, 27431
	sw $t6, -1708($fp)
	li $t7, 35626
	sw $t7, -1712($fp)
	lw $t1, -1708($fp)
	lw $t2, -1712($fp)
	add $t0, $t1, $t2
	sw $t0, -1716($fp)
	lw $t4, -168($fp)
	move $t3, $t4
	sw $t3, -1720($fp)
	lw $t6, -1716($fp)
	lw $t7, -1720($fp)
	sub $t5, $t6, $t7
	sw $t5, -1724($fp)
	li $t0, 0
	sw $t0, -1728($fp)
	li $t1, 45067
	sw $t1, -1732($fp)
	li $t2, 54555
	sw $t2, -1736($fp)
	lw $t4, -1732($fp)
	lw $t5, -1736($fp)
	div $t4, $t5
	mflo $t3
	sw $t3, -1740($fp)
	lw $t7, -704($fp)
	move $t6, $t7
	sw $t6, -1744($fp)
	lw $t0, -1740($fp)
	lw $t1, -1744($fp)
	bge $t0, $t1, label166
	j label167
label166:
	lw $t2, -1728($fp)
	li $t2, 1
	sw $t2, -1728($fp)
label167:
	lw $t4, -1256($fp)
	move $t3, $t4
	sw $t3, -1748($fp)
	lw $t6, -184($fp)
	move $t5, $t6
	sw $t5, -1752($fp)
	lw $t7, -1752($fp)
	lw $t0, -1752($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -1752($fp)
	lw $t2, -1748($fp)
	lw $t3, -1752($fp)
	add $t1, $t2, $t3
	sw $t1, -1756($fp)
	lw $t5, -1756($fp)
	lw $t4, 0($t5)
	sw $t4, -1760($fp)
	lw $s0, -1760($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1728($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1724($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t6, $v0
	sw $t6, -1764($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	li $t7, 0
	sw $t7, -1768($fp)
	li $t0, 0
	sw $t0, -1772($fp)
	li $t1, 47574
	sw $t1, -1776($fp)
	lw $t2, -1776($fp)
	bne $t2, 0, label171
	j label170
label170:
	lw $t3, -1772($fp)
	li $t3, 1
	sw $t3, -1772($fp)
label171:
	lw $t5, -720($fp)
	move $t4, $t5
	sw $t4, -1780($fp)
	lw $t6, -1772($fp)
	lw $t7, -1780($fp)
	beq $t6, $t7, label168
	j label169
label168:
	lw $t0, -1768($fp)
	li $t0, 1
	sw $t0, -1768($fp)
label169:
	li $t1, 6851
	sw $t1, -1784($fp)
	lw $t3, -1460($fp)
	move $t2, $t3
	sw $t2, -1788($fp)
	lw $t5, -940($fp)
	move $t4, $t5
	sw $t4, -1792($fp)
	lw $t7, -1788($fp)
	lw $t0, -1792($fp)
	sub $t6, $t7, $t0
	sw $t6, -1796($fp)
	lw $t2, -956($fp)
	move $t1, $t2
	sw $t1, -1800($fp)
	lw $t4, -1796($fp)
	lw $t5, -1800($fp)
	sub $t3, $t4, $t5
	sw $t3, -1804($fp)
	li $t6, 0
	sw $t6, -1808($fp)
	lw $t0, -168($fp)
	move $t7, $t0
	sw $t7, -1812($fp)
	lw $t2, -232($fp)
	move $t1, $t2
	sw $t1, -1816($fp)
	lw $t4, -1812($fp)
	lw $t5, -1816($fp)
	add $t3, $t4, $t5
	sw $t3, -1820($fp)
	lw $t6, -1820($fp)
	bne $t6, 0, label174
	j label173
label174:
	li $t7, 21631
	sw $t7, -1824($fp)
	lw $t0, -1824($fp)
	bne $t0, 0, label172
	j label173
label172:
	lw $t1, -1808($fp)
	li $t1, 1
	sw $t1, -1808($fp)
label173:
	lw $s0, -1808($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1804($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1784($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t2, $v0
	sw $t2, -1828($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	li $t3, 55216
	sw $t3, -1832($fp)
	li $t4, 0
	sw $t4, -1836($fp)
	lw $t6, -1256($fp)
	move $t5, $t6
	sw $t5, -1840($fp)
	li $t7, 5
	sw $t7, -1844($fp)
	lw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -1844($fp)
	lw $t3, -1840($fp)
	lw $t4, -1844($fp)
	add $t2, $t3, $t4
	sw $t2, -1848($fp)
	lw $t6, -1848($fp)
	lw $t5, 0($t6)
	sw $t5, -1852($fp)
	lw $t7, -1852($fp)
	bne $t7, 0, label177
	j label176
label177:
	li $t0, 51714
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	bne $t1, 0, label175
	j label176
label175:
	lw $t2, -1836($fp)
	li $t2, 1
	sw $t2, -1836($fp)
label176:
	lw $s0, -1836($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1832($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1828($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t3, $v0
	sw $t3, -1860($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t5, -1860($fp)
	li $s2, 0
	sub $t4, $s2, $t5
	sw $t4, -1864($fp)
	lw $s0, -1864($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1768($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1764($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t6, $v0
	sw $t6, -1868($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $s0, -1868($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1688($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1668($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t7, $v0
	sw $t7, -1872($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t1, -1664($fp)
	lw $t2, -1872($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -1876($fp)
	lw $t4, -60($fp)
	move $t3, $t4
	sw $t3, -1880($fp)
	lw $t6, -176($fp)
	move $t5, $t6
	sw $t5, -1884($fp)
	lw $t7, -1884($fp)
	lw $t0, -1884($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -1884($fp)
	lw $t2, -1880($fp)
	lw $t3, -1884($fp)
	add $t1, $t2, $t3
	sw $t1, -1888($fp)
	lw $t5, -1888($fp)
	lw $t4, 0($t5)
	sw $t4, -1892($fp)
	lw $t7, -1892($fp)
	li $s2, 0
	sub $t6, $s2, $t7
	sw $t6, -1896($fp)
	lw $t1, -1876($fp)
	lw $t2, -1896($fp)
	sub $t0, $t1, $t2
	sw $t0, -1900($fp)
	lw $t4, -200($fp)
	move $t3, $t4
	sw $t3, -1904($fp)
	li $t5, 39298
	sw $t5, -1908($fp)
	lw $t7, -1904($fp)
	lw $t0, -1908($fp)
	mul $t6, $t7, $t0
	sw $t6, -1912($fp)
	li $t1, 18049
	sw $t1, -1916($fp)
	lw $t3, -1912($fp)
	lw $t4, -1916($fp)
	mul $t2, $t3, $t4
	sw $t2, -1920($fp)
	lw $t6, -1220($fp)
	move $t5, $t6
	sw $t5, -1924($fp)
	lw $t0, -1344($fp)
	move $t7, $t0
	sw $t7, -1928($fp)
	lw $t1, -1928($fp)
	lw $t2, -1928($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -1928($fp)
	lw $t4, -1924($fp)
	lw $t5, -1928($fp)
	add $t3, $t4, $t5
	sw $t3, -1932($fp)
	lw $t7, -1932($fp)
	lw $t6, 0($t7)
	sw $t6, -1936($fp)
	lw $t1, -1920($fp)
	lw $t2, -1936($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -1940($fp)
	lw $t4, -1900($fp)
	lw $t5, -1940($fp)
	sub $t3, $t4, $t5
	sw $t3, -1944($fp)
	lw $t6, -1944($fp)
	move $v0, $t6
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t6, -1944($fp)
	j label147
label149:
	lw $t0, -916($fp)
	move $t7, $t0
	sw $t7, -1948($fp)
	lw $t2, -1948($fp)
	li $s2, 0
	sub $t1, $s2, $t2
	sw $t1, -1952($fp)
	lw $t3, -1952($fp)
	bne $t3, 0, label178
	j label179
label178:
label181:
	li $t4, 38678
	sw $t4, -1956($fp)
	lw $t6, -1956($fp)
	li $s2, 0
	sub $t5, $s2, $t6
	sw $t5, -1960($fp)
	li $t7, 0
	sw $t7, -1964($fp)
	lw $t1, -568($fp)
	move $t0, $t1
	sw $t0, -1968($fp)
	lw $t2, -1968($fp)
	bne $t2, 0, label185
	j label184
label184:
	lw $t3, -1964($fp)
	li $t3, 1
	sw $t3, -1964($fp)
label185:
	lw $t5, -1960($fp)
	lw $t6, -1964($fp)
	add $t4, $t5, $t6
	sw $t4, -1972($fp)
	lw $t7, -1972($fp)
	bne $t7, 0, label182
	j label183
label182:
	lw $t1, -176($fp)
	move $t0, $t1
	sw $t0, -1976($fp)
	lw $t3, -1976($fp)
	li $s2, 0
	sub $t2, $s2, $t3
	sw $t2, -1980($fp)
	li $t4, 0
	sw $t4, -1984($fp)
	li $t5, 0
	sw $t5, -1988($fp)
	li $t6, 58814
	sw $t6, -1992($fp)
	li $t7, 58563
	sw $t7, -1996($fp)
	lw $t0, -1992($fp)
	lw $t1, -1996($fp)
	bgt $t0, $t1, label191
	j label192
label191:
	lw $t2, -1988($fp)
	li $t2, 1
	sw $t2, -1988($fp)
label192:
	lw $t4, -916($fp)
	move $t3, $t4
	sw $t3, -2000($fp)
	lw $t5, -1988($fp)
	lw $t6, -2000($fp)
	blt $t5, $t6, label189
	j label190
label189:
	lw $t7, -1984($fp)
	li $t7, 1
	sw $t7, -1984($fp)
label190:
	li $t0, 0
	sw $t0, -2004($fp)
	li $t1, 0
	sw $t1, -2008($fp)
	lw $t3, -1336($fp)
	move $t2, $t3
	sw $t2, -2012($fp)
	li $t4, 12159
	sw $t4, -2016($fp)
	lw $t5, -2012($fp)
	lw $t6, -2016($fp)
	bge $t5, $t6, label195
	j label196
label195:
	lw $t7, -2008($fp)
	li $t7, 1
	sw $t7, -2008($fp)
label196:
	li $t0, 43491
	sw $t0, -2020($fp)
	lw $t1, -2008($fp)
	lw $t2, -2020($fp)
	beq $t1, $t2, label193
	j label194
label193:
	lw $t3, -2004($fp)
	li $t3, 1
	sw $t3, -2004($fp)
label194:
	lw $s0, -2004($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1984($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -1980($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t4, $v0
	sw $t4, -2024($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	li $t5, 14380
	sw $t5, -2028($fp)
	lw $t7, -2024($fp)
	lw $t0, -2028($fp)
	div $t7, $t0
	mflo $t6
	sw $t6, -2032($fp)
	li $t1, 16764
	sw $t1, -2036($fp)
	lw $t3, -2036($fp)
	li $s2, 0
	sub $t2, $s2, $t3
	sw $t2, -2040($fp)
	lw $t4, -2032($fp)
	lw $t5, -2040($fp)
	beq $t4, $t5, label186
	j label187
label186:
	li $t6, 0
	sw $t6, -2044($fp)
	li $t7, 0
	sw $t7, -2048($fp)
	li $t0, 33591
	sw $t0, -2052($fp)
	lw $t2, -560($fp)
	move $t1, $t2
	sw $t1, -2056($fp)
	lw $t3, -2052($fp)
	lw $t4, -2056($fp)
	bge $t3, $t4, label200
	j label201
label200:
	lw $t5, -2048($fp)
	li $t5, 1
	sw $t5, -2048($fp)
label201:
	lw $t7, -712($fp)
	move $t6, $t7
	sw $t6, -2060($fp)
	li $t0, 0
	sw $t0, -2064($fp)
	li $t1, 25664
	sw $t1, -2068($fp)
	lw $t2, -2068($fp)
	bne $t2, 0, label203
	j label202
label202:
	lw $t3, -2064($fp)
	li $t3, 1
	sw $t3, -2064($fp)
label203:
	lw $t5, -2064($fp)
	li $s2, 0
	sub $t4, $s2, $t5
	sw $t4, -2072($fp)
	lw $s0, -2072($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2060($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2048($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t6, $v0
	sw $t6, -2076($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t0, -916($fp)
	move $t7, $t0
	sw $t7, -2080($fp)
	lw $t2, -2076($fp)
	lw $t3, -2080($fp)
	add $t1, $t2, $t3
	sw $t1, -2084($fp)
	lw $t4, -2084($fp)
	bne $t4, 0, label199
	j label198
label199:
	lw $t6, -560($fp)
	move $t5, $t6
	sw $t5, -2088($fp)
	lw $t7, -2088($fp)
	bne $t7, 0, label197
	j label198
label197:
	lw $t0, -2044($fp)
	li $t0, 1
	sw $t0, -2044($fp)
label198:
	lw $t1, -1288($fp)
	lw $t2, -2044($fp)
	move $t1, $t2
	sw $t1, -1288($fp)
	j label188
label187:
	lw $t4, -1232($fp)
	move $t3, $t4
	sw $t3, -2092($fp)
	li $t5, 0
	sw $t5, -2096($fp)
	lw $t7, -160($fp)
	move $t6, $t7
	sw $t6, -2100($fp)
	lw $t1, -2100($fp)
	li $s2, 0
	sub $t0, $s2, $t1
	sw $t0, -2104($fp)
	lw $t3, -24($fp)
	move $t2, $t3
	sw $t2, -2108($fp)
	lw $t4, -2104($fp)
	lw $t5, -2108($fp)
	bge $t4, $t5, label204
	j label205
label204:
	lw $t6, -2096($fp)
	li $t6, 1
	sw $t6, -2096($fp)
label205:
	li $t7, 0
	sw $t7, -2112($fp)
	lw $t1, -720($fp)
	move $t0, $t1
	sw $t0, -2116($fp)
	lw $t2, -2116($fp)
	bne $t2, 0, label207
	j label208
label208:
	li $t3, 7657
	sw $t3, -2120($fp)
	lw $t4, -2120($fp)
	bne $t4, 0, label206
	j label207
label206:
	lw $t5, -2112($fp)
	li $t5, 1
	sw $t5, -2112($fp)
label207:
	lw $t7, -184($fp)
	move $t6, $t7
	sw $t6, -2124($fp)
	lw $t1, -568($fp)
	move $t0, $t1
	sw $t0, -2128($fp)
	lw $t3, -2124($fp)
	lw $t4, -2128($fp)
	add $t2, $t3, $t4
	sw $t2, -2132($fp)
	li $t5, 52375
	sw $t5, -2136($fp)
	lw $t7, -2132($fp)
	lw $t0, -2136($fp)
	sub $t6, $t7, $t0
	sw $t6, -2140($fp)
	lw $s0, -2140($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2112($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2096($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t1, $v0
	sw $t1, -2144($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t3, -2144($fp)
	li $s2, 0
	sub $t2, $s2, $t3
	sw $t2, -2148($fp)
	lw $t4, -2148($fp)
	lw $t5, -2148($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -2148($fp)
	lw $t7, -2092($fp)
	lw $t0, -2148($fp)
	add $t6, $t7, $t0
	sw $t6, -2152($fp)
	lw $t2, -2152($fp)
	lw $t1, 0($t2)
	sw $t1, -2156($fp)
label188:
	j label181
label183:
	j label180
label179:
label209:
	lw $t4, -120($fp)
	move $t3, $t4
	sw $t3, -2160($fp)
	lw $t6, -120($fp)
	move $t5, $t6
	sw $t5, -2164($fp)
	lw $t0, -576($fp)
	move $t7, $t0
	sw $t7, -2168($fp)
	lw $t1, -2168($fp)
	lw $t2, -2168($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -2168($fp)
	lw $t4, -2164($fp)
	lw $t5, -2168($fp)
	add $t3, $t4, $t5
	sw $t3, -2172($fp)
	lw $t7, -2172($fp)
	lw $t6, 0($t7)
	sw $t6, -2176($fp)
	lw $t1, -240($fp)
	move $t0, $t1
	sw $t0, -2180($fp)
	li $t2, 49603
	sw $t2, -2184($fp)
	lw $t4, -2180($fp)
	lw $t5, -2184($fp)
	div $t4, $t5
	mflo $t3
	sw $t3, -2188($fp)
	lw $t7, -2176($fp)
	lw $t0, -2188($fp)
	add $t6, $t7, $t0
	sw $t6, -2192($fp)
	lw $t1, -2192($fp)
	lw $t2, -2192($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -2192($fp)
	lw $t4, -2160($fp)
	lw $t5, -2192($fp)
	add $t3, $t4, $t5
	sw $t3, -2196($fp)
	lw $t7, -2196($fp)
	lw $t6, 0($t7)
	sw $t6, -2200($fp)
	lw $t0, -2200($fp)
	bne $t0, 0, label210
	j label211
label210:
label212:
	lw $t2, -1232($fp)
	move $t1, $t2
	sw $t1, -2204($fp)
	lw $t4, -1352($fp)
	move $t3, $t4
	sw $t3, -2208($fp)
	lw $t5, -2208($fp)
	lw $t6, -2208($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -2208($fp)
	lw $t0, -2204($fp)
	lw $t1, -2208($fp)
	add $t7, $t0, $t1
	sw $t7, -2212($fp)
	lw $t3, -2212($fp)
	lw $t2, 0($t3)
	sw $t2, -2216($fp)
	li $t4, 0
	sw $t4, -2220($fp)
	li $t5, 0
	sw $t5, -2224($fp)
	li $t6, 0
	sw $t6, -2228($fp)
	li $t7, 64225
	sw $t7, -2232($fp)
	li $t0, 38768
	sw $t0, -2236($fp)
	lw $t1, -2232($fp)
	lw $t2, -2236($fp)
	bgt $t1, $t2, label219
	j label220
label219:
	lw $t3, -2228($fp)
	li $t3, 1
	sw $t3, -2228($fp)
label220:
	lw $t5, -940($fp)
	move $t4, $t5
	sw $t4, -2240($fp)
	lw $t6, -2228($fp)
	lw $t7, -2240($fp)
	bge $t6, $t7, label217
	j label218
label217:
	lw $t0, -2224($fp)
	li $t0, 1
	sw $t0, -2224($fp)
label218:
	li $t1, 0
	sw $t1, -2244($fp)
	li $t2, 53005
	sw $t2, -2248($fp)
	lw $t3, -2248($fp)
	bne $t3, 0, label222
	j label221
label221:
	lw $t4, -2244($fp)
	li $t4, 1
	sw $t4, -2244($fp)
label222:
	li $t5, 52489
	sw $t5, -2252($fp)
	lw $t7, -2244($fp)
	lw $t0, -2252($fp)
	sub $t6, $t7, $t0
	sw $t6, -2256($fp)
	lw $t2, -200($fp)
	move $t1, $t2
	sw $t1, -2260($fp)
	lw $t3, -184($fp)
	lw $t4, -2260($fp)
	move $t3, $t4
	sw $t3, -184($fp)
	lw $t6, -184($fp)
	move $t5, $t6
	sw $t5, -2264($fp)
	lw $s0, -2264($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2256($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2224($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t7, $v0
	sw $t7, -2268($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t0, -2268($fp)
	bne $t0, 0, label216
	j label215
label215:
	lw $t1, -2220($fp)
	li $t1, 1
	sw $t1, -2220($fp)
label216:
	lw $t3, -2216($fp)
	lw $t4, -2220($fp)
	div $t3, $t4
	mflo $t2
	sw $t2, -2272($fp)
	lw $t5, -2272($fp)
	bne $t5, 0, label213
	j label214
label213:
	lw $t7, -120($fp)
	move $t6, $t7
	sw $t6, -2276($fp)
	lw $t1, -1256($fp)
	move $t0, $t1
	sw $t0, -2280($fp)
	lw $t3, -720($fp)
	move $t2, $t3
	sw $t2, -2284($fp)
	lw $t4, -2284($fp)
	lw $t5, -2284($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -2284($fp)
	lw $t7, -2280($fp)
	lw $t0, -2284($fp)
	add $t6, $t7, $t0
	sw $t6, -2288($fp)
	lw $t2, -2288($fp)
	lw $t1, 0($t2)
	sw $t1, -2292($fp)
	lw $t4, -704($fp)
	move $t3, $t4
	sw $t3, -2296($fp)
	lw $t6, -2292($fp)
	lw $t7, -2296($fp)
	mul $t5, $t6, $t7
	sw $t5, -2300($fp)
	lw $t0, -2300($fp)
	lw $t1, -2300($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -2300($fp)
	j label212
label214:
	j label209
label211:
label180:
	sw $t3, -2296($fp)
	li $t2, 0
	sw $t2, -2304($fp)
	li $t3, 47645
	sw $t3, -2308($fp)
	li $t4, 33626
	sw $t4, -2312($fp)
	li $t5, 14385
	sw $t5, -2316($fp)
	lw $t7, -2312($fp)
	lw $t0, -2316($fp)
	div $t7, $t0
	mflo $t6
	sw $t6, -2320($fp)
	li $t1, 17735
	sw $t1, -2324($fp)
	lw $t3, -2320($fp)
	lw $t4, -2324($fp)
	div $t3, $t4
	mflo $t2
	sw $t2, -2328($fp)
	li $t5, 13157
	sw $t5, -2332($fp)
	lw $t7, -28($fp)
	move $t6, $t7
	sw $t6, -2336($fp)
	li $t0, 2
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	lw $t2, -2340($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -2340($fp)
	lw $t4, -2336($fp)
	lw $t5, -2340($fp)
	add $t3, $t4, $t5
	sw $t3, -2344($fp)
	lw $t7, -2344($fp)
	lw $t6, 0($t7)
	sw $t6, -2348($fp)
	lw $t1, -232($fp)
	move $t0, $t1
	sw $t0, -2352($fp)
	lw $t3, -2348($fp)
	lw $t4, -2352($fp)
	div $t3, $t4
	mflo $t2
	sw $t2, -2356($fp)
	lw $s0, -2356($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2332($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2328($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t5, $v0
	sw $t5, -2360($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t7, -2308($fp)
	lw $t0, -2360($fp)
	div $t7, $t0
	mflo $t6
	sw $t6, -2364($fp)
	lw $t2, -60($fp)
	move $t1, $t2
	sw $t1, -2368($fp)
	li $t3, 1
	sw $t3, -2372($fp)
	lw $t4, -2372($fp)
	lw $t5, -2372($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -2372($fp)
	lw $t7, -2368($fp)
	lw $t0, -2372($fp)
	add $t6, $t7, $t0
	sw $t6, -2376($fp)
	lw $t2, -2376($fp)
	lw $t1, 0($t2)
	sw $t1, -2380($fp)
	lw $t4, -2380($fp)
	li $s2, 0
	sub $t3, $s2, $t4
	sw $t3, -2384($fp)
	lw $t5, -2364($fp)
	lw $t6, -2384($fp)
	bne $t5, $t6, label225
	j label226
label225:
	lw $t7, -2304($fp)
	li $t7, 1
	sw $t7, -2304($fp)
label226:
	lw $t1, -1232($fp)
	move $t0, $t1
	sw $t0, -2388($fp)
	lw $t3, -184($fp)
	move $t2, $t3
	sw $t2, -2392($fp)
	lw $t4, -2392($fp)
	lw $t5, -2392($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -2392($fp)
	lw $t7, -2388($fp)
	lw $t0, -2392($fp)
	add $t6, $t7, $t0
	sw $t6, -2396($fp)
	lw $t2, -2396($fp)
	lw $t1, 0($t2)
	sw $t1, -2400($fp)
	li $t3, 54989
	sw $t3, -2404($fp)
	lw $t5, -2400($fp)
	lw $t6, -2404($fp)
	mul $t4, $t5, $t6
	sw $t4, -2408($fp)
	lw $t7, -2304($fp)
	lw $t0, -2408($fp)
	bne $t7, $t0, label223
	j label224
label223:
	sw $t3, -2404($fp)
label224:
	sw $t3, -2404($fp)
	li $t1, 0
	sw $t1, -2412($fp)
	li $t2, 10139
	sw $t2, -2416($fp)
	lw $t4, -60($fp)
	move $t3, $t4
	sw $t3, -2420($fp)
	lw $t6, -256($fp)
	move $t5, $t6
	sw $t5, -2424($fp)
	lw $t7, -2424($fp)
	lw $t0, -2424($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -2424($fp)
	lw $t2, -2420($fp)
	lw $t3, -2424($fp)
	add $t1, $t2, $t3
	sw $t1, -2428($fp)
	lw $t5, -2428($fp)
	lw $t4, 0($t5)
	sw $t4, -2432($fp)
	lw $t7, -568($fp)
	move $t6, $t7
	sw $t6, -2436($fp)
	lw $t1, -2432($fp)
	lw $t2, -2436($fp)
	sub $t0, $t1, $t2
	sw $t0, -2440($fp)
	lw $t3, -2416($fp)
	lw $t4, -2440($fp)
	blt $t3, $t4, label229
	j label230
label229:
	lw $t5, -2412($fp)
	li $t5, 1
	sw $t5, -2412($fp)
label230:
	li $t6, 45140
	sw $t6, -2444($fp)
	lw $t0, -168($fp)
	move $t7, $t0
	sw $t7, -2448($fp)
	lw $t2, -2444($fp)
	lw $t3, -2448($fp)
	div $t2, $t3
	mflo $t1
	sw $t1, -2452($fp)
	li $t4, 49438
	sw $t4, -2456($fp)
	lw $t6, -2452($fp)
	lw $t7, -2456($fp)
	div $t6, $t7
	mflo $t5
	sw $t5, -2460($fp)
	lw $t0, -2412($fp)
	lw $t1, -2460($fp)
	bgt $t0, $t1, label227
	j label228
label227:
	sw $t4, -2456($fp)
label228:
	j label131
label130:
label231:
	lw $t3, -948($fp)
	move $t2, $t3
	sw $t2, -2464($fp)
	lw $t5, -192($fp)
	move $t4, $t5
	sw $t4, -2468($fp)
	lw $t7, -2464($fp)
	lw $t0, -2468($fp)
	mul $t6, $t7, $t0
	sw $t6, -2472($fp)
	lw $t1, -2472($fp)
	bne $t1, 0, label232
	j label233
label232:
	sw $t4, -2468($fp)
	lw $t3, -160($fp)
	move $t2, $t3
	sw $t2, -2476($fp)
	lw $t5, -92($fp)
	move $t4, $t5
	sw $t4, -2480($fp)
	li $t6, 2
	sw $t6, -2484($fp)
	lw $t7, -2484($fp)
	lw $t0, -2484($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -2484($fp)
	lw $t2, -2480($fp)
	lw $t3, -2484($fp)
	add $t1, $t2, $t3
	sw $t1, -2488($fp)
	lw $t5, -2488($fp)
	lw $t4, 0($t5)
	sw $t4, -2492($fp)
	lw $t7, -2476($fp)
	lw $t0, -2492($fp)
	add $t6, $t7, $t0
	sw $t6, -2496($fp)
	li $t1, 0
	sw $t1, -2500($fp)
	li $t2, 42716
	sw $t2, -2504($fp)
	li $t3, 56217
	sw $t3, -2508($fp)
	lw $t4, -2504($fp)
	lw $t5, -2508($fp)
	bge $t4, $t5, label236
	j label237
label236:
	lw $t6, -2500($fp)
	li $t6, 1
	sw $t6, -2500($fp)
label237:
	li $t7, 0
	sw $t7, -2512($fp)
	lw $t1, -120($fp)
	move $t0, $t1
	sw $t0, -2516($fp)
	li $t2, 1
	sw $t2, -2520($fp)
	lw $t3, -2520($fp)
	lw $t4, -2520($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -2520($fp)
	lw $t6, -2516($fp)
	lw $t7, -2520($fp)
	add $t5, $t6, $t7
	sw $t5, -2524($fp)
	lw $t1, -2524($fp)
	lw $t0, 0($t1)
	sw $t0, -2528($fp)
	li $t2, 0
	sw $t2, -2532($fp)
	lw $t4, -224($fp)
	move $t3, $t4
	sw $t3, -2536($fp)
	li $t5, 5061
	sw $t5, -2540($fp)
	lw $t6, -2536($fp)
	lw $t7, -2540($fp)
	ble $t6, $t7, label242
	j label241
label242:
	lw $t1, -232($fp)
	move $t0, $t1
	sw $t0, -2544($fp)
	lw $t2, -2544($fp)
	bne $t2, 0, label240
	j label241
label240:
	lw $t3, -2532($fp)
	li $t3, 1
	sw $t3, -2532($fp)
label241:
	li $t4, 0
	sw $t4, -2548($fp)
	lw $t6, -132($fp)
	move $t5, $t6
	sw $t5, -2552($fp)
	lw $t0, -956($fp)
	move $t7, $t0
	sw $t7, -2556($fp)
	lw $t1, -2556($fp)
	lw $t2, -2556($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -2556($fp)
	lw $t4, -2552($fp)
	lw $t5, -2556($fp)
	add $t3, $t4, $t5
	sw $t3, -2560($fp)
	lw $t7, -2560($fp)
	lw $t6, 0($t7)
	sw $t6, -2564($fp)
	lw $t1, -184($fp)
	move $t0, $t1
	sw $t0, -2568($fp)
	lw $t2, -2564($fp)
	lw $t3, -2568($fp)
	blt $t2, $t3, label243
	j label244
label243:
	lw $t4, -2548($fp)
	li $t4, 1
	sw $t4, -2548($fp)
label244:
	li $t5, 0
	sw $t5, -2572($fp)
	li $t6, 43234
	sw $t6, -2576($fp)
	lw $t7, -2576($fp)
	bne $t7, 0, label246
	j label245
label245:
	lw $t0, -2572($fp)
	li $t0, 1
	sw $t0, -2572($fp)
label246:
	lw $t2, -704($fp)
	move $t1, $t2
	sw $t1, -2580($fp)
	lw $t4, -2572($fp)
	lw $t5, -2580($fp)
	add $t3, $t4, $t5
	sw $t3, -2584($fp)
	li $t6, 54263
	sw $t6, -2588($fp)
	lw $s0, -2588($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2584($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2548($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t7, $v0
	sw $t7, -2592($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	li $t0, 0
	sw $t0, -2596($fp)
	li $t1, 0
	sw $t1, -2600($fp)
	lw $t3, -184($fp)
	move $t2, $t3
	sw $t2, -2604($fp)
	li $t4, 30726
	sw $t4, -2608($fp)
	lw $t5, -2604($fp)
	lw $t6, -2608($fp)
	bge $t5, $t6, label249
	j label250
label249:
	lw $t7, -2600($fp)
	li $t7, 1
	sw $t7, -2600($fp)
label250:
	lw $t1, -184($fp)
	move $t0, $t1
	sw $t0, -2612($fp)
	lw $t2, -2600($fp)
	lw $t3, -2612($fp)
	bge $t2, $t3, label247
	j label248
label247:
	lw $t4, -2596($fp)
	li $t4, 1
	sw $t4, -2596($fp)
label248:
	li $t5, 0
	sw $t5, -2616($fp)
	lw $t7, -568($fp)
	move $t6, $t7
	sw $t6, -2620($fp)
	li $t0, 50891
	sw $t0, -2624($fp)
	lw $t2, -2620($fp)
	lw $t3, -2624($fp)
	div $t2, $t3
	mflo $t1
	sw $t1, -2628($fp)
	lw $t4, -2628($fp)
	bne $t4, 0, label253
	j label252
label253:
	li $t5, 41102
	sw $t5, -2632($fp)
	lw $t6, -2632($fp)
	bne $t6, 0, label251
	j label252
label251:
	lw $t7, -2616($fp)
	li $t7, 1
	sw $t7, -2616($fp)
label252:
	li $t0, 14793
	sw $t0, -2636($fp)
	lw $s0, -2636($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2616($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2596($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t1, $v0
	sw $t1, -2640($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	li $t2, 0
	sw $t2, -2644($fp)
	li $t3, 0
	sw $t3, -2648($fp)
	li $t4, 49580
	sw $t4, -2652($fp)
	li $t5, 14334
	sw $t5, -2656($fp)
	lw $t6, -2652($fp)
	lw $t7, -2656($fp)
	beq $t6, $t7, label259
	j label258
label259:
	lw $t1, -192($fp)
	move $t0, $t1
	sw $t0, -2660($fp)
	lw $t2, -2660($fp)
	bne $t2, 0, label257
	j label258
label257:
	lw $t3, -2648($fp)
	li $t3, 1
	sw $t3, -2648($fp)
label258:
	li $t4, 0
	sw $t4, -2664($fp)
	li $t5, 2262
	sw $t5, -2668($fp)
	lw $t6, -2668($fp)
	bne $t6, 0, label261
	j label260
label260:
	lw $t7, -2664($fp)
	li $t7, 1
	sw $t7, -2664($fp)
label261:
	lw $t1, -160($fp)
	move $t0, $t1
	sw $t0, -2672($fp)
	lw $t3, -2664($fp)
	lw $t4, -2672($fp)
	add $t2, $t3, $t4
	sw $t2, -2676($fp)
	li $t5, 36534
	sw $t5, -2680($fp)
	lw $t6, -168($fp)
	lw $t7, -2680($fp)
	move $t6, $t7
	sw $t6, -168($fp)
	lw $t1, -168($fp)
	move $t0, $t1
	sw $t0, -2684($fp)
	lw $s0, -2684($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2676($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2648($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t2, $v0
	sw $t2, -2688($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t3, -2688($fp)
	bne $t3, 0, label254
	j label256
label256:
	li $t4, 61979
	sw $t4, -2692($fp)
	lw $t5, -2692($fp)
	bne $t5, 0, label254
	j label255
label254:
	lw $t6, -2644($fp)
	li $t6, 1
	sw $t6, -2644($fp)
label255:
	lw $s0, -2644($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2640($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2592($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t7, $v0
	sw $t7, -2696($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t1, -224($fp)
	move $t0, $t1
	sw $t0, -2700($fp)
	lw $t3, -2700($fp)
	li $s2, 0
	sub $t2, $s2, $t3
	sw $t2, -2704($fp)
	li $t4, 0
	sw $t4, -2708($fp)
	li $t5, 35888
	sw $t5, -2712($fp)
	lw $t6, -2712($fp)
	bne $t6, 0, label262
	j label264
label264:
	lw $t0, -972($fp)
	move $t7, $t0
	sw $t7, -2716($fp)
	lw $t1, -2716($fp)
	bne $t1, 0, label262
	j label263
label262:
	lw $t2, -2708($fp)
	li $t2, 1
	sw $t2, -2708($fp)
label263:
	li $t3, 50919
	sw $t3, -2720($fp)
	lw $t5, -2720($fp)
	li $s2, 0
	sub $t4, $s2, $t5
	sw $t4, -2724($fp)
	lw $t7, -60($fp)
	move $t6, $t7
	sw $t6, -2728($fp)
	lw $t1, -744($fp)
	move $t0, $t1
	sw $t0, -2732($fp)
	lw $t2, -2732($fp)
	lw $t3, -2732($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -2732($fp)
	lw $t5, -2728($fp)
	lw $t6, -2732($fp)
	add $t4, $t5, $t6
	sw $t4, -2736($fp)
	lw $t0, -2736($fp)
	lw $t7, 0($t0)
	sw $t7, -2740($fp)
	li $t1, 14179
	sw $t1, -2744($fp)
	lw $t3, -2740($fp)
	lw $t4, -2744($fp)
	div $t3, $t4
	mflo $t2
	sw $t2, -2748($fp)
	lw $s0, -2748($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2724($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2708($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t5, $v0
	sw $t5, -2752($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t7, -92($fp)
	move $t6, $t7
	sw $t6, -2756($fp)
	lw $t1, -200($fp)
	move $t0, $t1
	sw $t0, -2760($fp)
	lw $t2, -2760($fp)
	lw $t3, -2760($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -2760($fp)
	lw $t5, -2756($fp)
	lw $t6, -2760($fp)
	add $t4, $t5, $t6
	sw $t4, -2764($fp)
	lw $t0, -2764($fp)
	lw $t7, 0($t0)
	sw $t7, -2768($fp)
	lw $s0, -2768($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2752($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2704($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t1, $v0
	sw $t1, -2772($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $s0, -2772($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2696($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2532($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t2, $v0
	sw $t2, -2776($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	li $t3, 49046
	sw $t3, -2780($fp)
	lw $t5, -2776($fp)
	lw $t6, -2780($fp)
	add $t4, $t5, $t6
	sw $t4, -2784($fp)
	li $t7, 0
	sw $t7, -2788($fp)
	lw $t1, -964($fp)
	move $t0, $t1
	sw $t0, -2792($fp)
	lw $t3, -560($fp)
	move $t2, $t3
	sw $t2, -2796($fp)
	lw $t4, -2792($fp)
	lw $t5, -2796($fp)
	bge $t4, $t5, label265
	j label267
label267:
	lw $t7, -916($fp)
	move $t6, $t7
	sw $t6, -2800($fp)
	lw $t0, -2800($fp)
	bne $t0, 0, label265
	j label266
label265:
	lw $t1, -2788($fp)
	li $t1, 1
	sw $t1, -2788($fp)
label266:
	lw $s0, -2788($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2784($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2528($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t2, $v0
	sw $t2, -2804($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t3, -2804($fp)
	bne $t3, 0, label239
	j label238
label238:
	lw $t4, -2512($fp)
	li $t4, 1
	sw $t4, -2512($fp)
label239:
	li $t5, 54323
	sw $t5, -2808($fp)
	lw $t6, -256($fp)
	lw $t7, -2808($fp)
	move $t6, $t7
	sw $t6, -256($fp)
	lw $t1, -256($fp)
	move $t0, $t1
	sw $t0, -2812($fp)
	lw $s0, -2812($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2512($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2500($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t2, $v0
	sw $t2, -2816($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t4, -192($fp)
	move $t3, $t4
	sw $t3, -2820($fp)
	lw $t6, -2816($fp)
	lw $t7, -2820($fp)
	div $t6, $t7
	mflo $t5
	sw $t5, -2824($fp)
	lw $t0, -2496($fp)
	lw $t1, -2824($fp)
	bgt $t0, $t1, label234
	j label235
label234:
	sw $t3, -2820($fp)
label235:
	j label231
label233:
label131:
	j label116
label118:
	sw $t3, -2820($fp)
	sw $t3, -2820($fp)
	lw $t3, -916($fp)
	move $t2, $t3
	sw $t2, -2828($fp)
	li $t4, 0
	sw $t4, -2832($fp)
	li $t5, 13952
	sw $t5, -2836($fp)
	lw $t7, -736($fp)
	move $t6, $t7
	sw $t6, -2840($fp)
	lw $t0, -2836($fp)
	lw $t1, -2840($fp)
	bne $t0, $t1, label270
	j label271
label270:
	lw $t2, -2832($fp)
	li $t2, 1
	sw $t2, -2832($fp)
label271:
	li $t3, 0
	sw $t3, -2844($fp)
	li $t4, 3519
	sw $t4, -2848($fp)
	lw $t5, -2848($fp)
	bne $t5, 0, label273
	j label272
label272:
	lw $t6, -2844($fp)
	li $t6, 1
	sw $t6, -2844($fp)
label273:
	li $t7, 0
	sw $t7, -2852($fp)
	lw $t1, -192($fp)
	move $t0, $t1
	sw $t0, -2856($fp)
	lw $t2, -2856($fp)
	bne $t2, 0, label277
	j label276
label277:
	lw $t4, -240($fp)
	move $t3, $t4
	sw $t3, -2860($fp)
	lw $t5, -2860($fp)
	bne $t5, 0, label274
	j label276
label276:
	lw $t7, -916($fp)
	move $t6, $t7
	sw $t6, -2864($fp)
	lw $t0, -2864($fp)
	bne $t0, 0, label274
	j label275
label274:
	lw $t1, -2852($fp)
	li $t1, 1
	sw $t1, -2852($fp)
label275:
	lw $s0, -2852($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2844($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2832($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t2, $v0
	sw $t2, -2868($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	li $t3, 13822
	sw $t3, -2872($fp)
	lw $t5, -2868($fp)
	lw $t6, -2872($fp)
	div $t5, $t6
	mflo $t4
	sw $t4, -2876($fp)
	lw $t0, -92($fp)
	move $t7, $t0
	sw $t7, -2880($fp)
	li $t1, 2
	sw $t1, -2884($fp)
	lw $t2, -2884($fp)
	lw $t3, -2884($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -2884($fp)
	lw $t5, -2880($fp)
	lw $t6, -2884($fp)
	add $t4, $t5, $t6
	sw $t4, -2888($fp)
	lw $t0, -2888($fp)
	lw $t7, 0($t0)
	sw $t7, -2892($fp)
	li $t1, 58963
	sw $t1, -2896($fp)
	lw $t3, -2892($fp)
	lw $t4, -2896($fp)
	div $t3, $t4
	mflo $t2
	sw $t2, -2900($fp)
	li $t5, 0
	sw $t5, -2904($fp)
	li $t6, 0
	sw $t6, -2908($fp)
	lw $t0, -216($fp)
	move $t7, $t0
	sw $t7, -2912($fp)
	lw $t2, -224($fp)
	move $t1, $t2
	sw $t1, -2916($fp)
	lw $t3, -2912($fp)
	lw $t4, -2916($fp)
	beq $t3, $t4, label280
	j label281
label280:
	lw $t5, -2908($fp)
	li $t5, 1
	sw $t5, -2908($fp)
label281:
	lw $t7, -232($fp)
	move $t6, $t7
	sw $t6, -2920($fp)
	lw $t0, -2908($fp)
	lw $t1, -2920($fp)
	beq $t0, $t1, label278
	j label279
label278:
	lw $t2, -2904($fp)
	li $t2, 1
	sw $t2, -2904($fp)
label279:
	lw $s0, -2904($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2900($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -2876($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t3, $v0
	sw $t3, -2924($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t4, -2828($fp)
	lw $t5, -2924($fp)
	bgt $t4, $t5, label268
	j label269
label268:
label269:
	li $t6, 0
	sw $t6, -2928($fp)
	lw $t0, -552($fp)
	move $t7, $t0
	sw $t7, -2932($fp)
	lw $t1, -2932($fp)
	bne $t1, 0, label282
	j label283
label282:
	lw $t2, -2928($fp)
	li $t2, 1
	sw $t2, -2928($fp)
label283:
	lw $t4, -712($fp)
	move $t3, $t4
	sw $t3, -2936($fp)
	lw $t6, -2928($fp)
	lw $t7, -2936($fp)
	div $t6, $t7
	mflo $t5
	sw $t5, -2940($fp)
	lw $t0, -728($fp)
	lw $t1, -2940($fp)
	move $t0, $t1
	sw $t0, -728($fp)
	lw $t3, -160($fp)
	move $t2, $t3
	sw $t2, -2944($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -2944($fp)
	move $a0, $t4
	jal write
	sw $t4, -2944($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -168($fp)
	move $t5, $t6
	sw $t5, -2948($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -2948($fp)
	move $a0, $t7
	jal write
	sw $t7, -2948($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -176($fp)
	move $t0, $t1
	sw $t0, -2952($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -2952($fp)
	move $a0, $t2
	jal write
	sw $t2, -2952($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -184($fp)
	move $t3, $t4
	sw $t3, -2956($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -2956($fp)
	move $a0, $t5
	jal write
	sw $t5, -2956($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -192($fp)
	move $t6, $t7
	sw $t6, -2960($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -2960($fp)
	move $a0, $t0
	jal write
	sw $t0, -2960($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -200($fp)
	move $t1, $t2
	sw $t1, -2964($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -2964($fp)
	move $a0, $t3
	jal write
	sw $t3, -2964($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -208($fp)
	move $t4, $t5
	sw $t4, -2968($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -2968($fp)
	move $a0, $t6
	jal write
	sw $t6, -2968($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -216($fp)
	move $t7, $t0
	sw $t7, -2972($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -2972($fp)
	move $a0, $t1
	jal write
	sw $t1, -2972($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -224($fp)
	move $t2, $t3
	sw $t2, -2976($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -2976($fp)
	move $a0, $t4
	jal write
	sw $t4, -2976($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -232($fp)
	move $t5, $t6
	sw $t5, -2980($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -2980($fp)
	move $a0, $t7
	jal write
	sw $t7, -2980($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -240($fp)
	move $t0, $t1
	sw $t0, -2984($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -2984($fp)
	move $a0, $t2
	jal write
	sw $t2, -2984($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -248($fp)
	move $t3, $t4
	sw $t3, -2988($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -2988($fp)
	move $a0, $t5
	jal write
	sw $t5, -2988($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -256($fp)
	move $t6, $t7
	sw $t6, -2992($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -2992($fp)
	move $a0, $t0
	jal write
	sw $t0, -2992($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -28($fp)
	move $t1, $t2
	sw $t1, -2996($fp)
	li $t3, 0
	sw $t3, -3000($fp)
	lw $t4, -3000($fp)
	lw $t5, -3000($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -3000($fp)
	lw $t7, -2996($fp)
	lw $t0, -3000($fp)
	add $t6, $t7, $t0
	sw $t6, -3004($fp)
	lw $t2, -3004($fp)
	lw $t1, 0($t2)
	sw $t1, -3008($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -3008($fp)
	move $a0, $t3
	jal write
	sw $t3, -3008($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -28($fp)
	move $t4, $t5
	sw $t4, -3012($fp)
	li $t6, 1
	sw $t6, -3016($fp)
	lw $t7, -3016($fp)
	lw $t0, -3016($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -3016($fp)
	lw $t2, -3012($fp)
	lw $t3, -3016($fp)
	add $t1, $t2, $t3
	sw $t1, -3020($fp)
	lw $t5, -3020($fp)
	lw $t4, 0($t5)
	sw $t4, -3024($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -3024($fp)
	move $a0, $t6
	jal write
	sw $t6, -3024($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -28($fp)
	move $t7, $t0
	sw $t7, -3028($fp)
	li $t1, 2
	sw $t1, -3032($fp)
	lw $t2, -3032($fp)
	lw $t3, -3032($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -3032($fp)
	lw $t5, -3028($fp)
	lw $t6, -3032($fp)
	add $t4, $t5, $t6
	sw $t4, -3036($fp)
	lw $t0, -3036($fp)
	lw $t7, 0($t0)
	sw $t7, -3040($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -3040($fp)
	move $a0, $t1
	jal write
	sw $t1, -3040($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -28($fp)
	move $t2, $t3
	sw $t2, -3044($fp)
	li $t4, 3
	sw $t4, -3048($fp)
	lw $t5, -3048($fp)
	lw $t6, -3048($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -3048($fp)
	lw $t0, -3044($fp)
	lw $t1, -3048($fp)
	add $t7, $t0, $t1
	sw $t7, -3052($fp)
	lw $t3, -3052($fp)
	lw $t2, 0($t3)
	sw $t2, -3056($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -3056($fp)
	move $a0, $t4
	jal write
	sw $t4, -3056($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -28($fp)
	move $t5, $t6
	sw $t5, -3060($fp)
	li $t7, 4
	sw $t7, -3064($fp)
	lw $t0, -3064($fp)
	lw $t1, -3064($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -3064($fp)
	lw $t3, -3060($fp)
	lw $t4, -3064($fp)
	add $t2, $t3, $t4
	sw $t2, -3068($fp)
	lw $t6, -3068($fp)
	lw $t5, 0($t6)
	sw $t5, -3072($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -3072($fp)
	move $a0, $t7
	jal write
	sw $t7, -3072($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -3076($fp)
	li $t2, 5
	sw $t2, -3080($fp)
	lw $t3, -3080($fp)
	lw $t4, -3080($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -3080($fp)
	lw $t6, -3076($fp)
	lw $t7, -3080($fp)
	add $t5, $t6, $t7
	sw $t5, -3084($fp)
	lw $t1, -3084($fp)
	lw $t0, 0($t1)
	sw $t0, -3088($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -3088($fp)
	move $a0, $t2
	jal write
	sw $t2, -3088($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -28($fp)
	move $t3, $t4
	sw $t3, -3092($fp)
	li $t5, 6
	sw $t5, -3096($fp)
	lw $t6, -3096($fp)
	lw $t7, -3096($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -3096($fp)
	lw $t1, -3092($fp)
	lw $t2, -3096($fp)
	add $t0, $t1, $t2
	sw $t0, -3100($fp)
	lw $t4, -3100($fp)
	lw $t3, 0($t4)
	sw $t3, -3104($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -3104($fp)
	move $a0, $t5
	jal write
	sw $t5, -3104($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -404($fp)
	move $t6, $t7
	sw $t6, -3108($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -3108($fp)
	move $a0, $t0
	jal write
	sw $t0, -3108($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -60($fp)
	move $t1, $t2
	sw $t1, -3112($fp)
	li $t3, 0
	sw $t3, -3116($fp)
	lw $t4, -3116($fp)
	lw $t5, -3116($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -3116($fp)
	lw $t7, -3112($fp)
	lw $t0, -3116($fp)
	add $t6, $t7, $t0
	sw $t6, -3120($fp)
	lw $t2, -3120($fp)
	lw $t1, 0($t2)
	sw $t1, -3124($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -3124($fp)
	move $a0, $t3
	jal write
	sw $t3, -3124($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -60($fp)
	move $t4, $t5
	sw $t4, -3128($fp)
	li $t6, 1
	sw $t6, -3132($fp)
	lw $t7, -3132($fp)
	lw $t0, -3132($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -3132($fp)
	lw $t2, -3128($fp)
	lw $t3, -3132($fp)
	add $t1, $t2, $t3
	sw $t1, -3136($fp)
	lw $t5, -3136($fp)
	lw $t4, 0($t5)
	sw $t4, -3140($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -3140($fp)
	move $a0, $t6
	jal write
	sw $t6, -3140($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -60($fp)
	move $t7, $t0
	sw $t7, -3144($fp)
	li $t1, 2
	sw $t1, -3148($fp)
	lw $t2, -3148($fp)
	lw $t3, -3148($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -3148($fp)
	lw $t5, -3144($fp)
	lw $t6, -3148($fp)
	add $t4, $t5, $t6
	sw $t4, -3152($fp)
	lw $t0, -3152($fp)
	lw $t7, 0($t0)
	sw $t7, -3156($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -3156($fp)
	move $a0, $t1
	jal write
	sw $t1, -3156($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -60($fp)
	move $t2, $t3
	sw $t2, -3160($fp)
	li $t4, 3
	sw $t4, -3164($fp)
	lw $t5, -3164($fp)
	lw $t6, -3164($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -3164($fp)
	lw $t0, -3160($fp)
	lw $t1, -3164($fp)
	add $t7, $t0, $t1
	sw $t7, -3168($fp)
	lw $t3, -3168($fp)
	lw $t2, 0($t3)
	sw $t2, -3172($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -3172($fp)
	move $a0, $t4
	jal write
	sw $t4, -3172($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -60($fp)
	move $t5, $t6
	sw $t5, -3176($fp)
	li $t7, 4
	sw $t7, -3180($fp)
	lw $t0, -3180($fp)
	lw $t1, -3180($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -3180($fp)
	lw $t3, -3176($fp)
	lw $t4, -3180($fp)
	add $t2, $t3, $t4
	sw $t2, -3184($fp)
	lw $t6, -3184($fp)
	lw $t5, 0($t6)
	sw $t5, -3188($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -3188($fp)
	move $a0, $t7
	jal write
	sw $t7, -3188($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -60($fp)
	move $t0, $t1
	sw $t0, -3192($fp)
	li $t2, 5
	sw $t2, -3196($fp)
	lw $t3, -3196($fp)
	lw $t4, -3196($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -3196($fp)
	lw $t6, -3192($fp)
	lw $t7, -3196($fp)
	add $t5, $t6, $t7
	sw $t5, -3200($fp)
	lw $t1, -3200($fp)
	lw $t0, 0($t1)
	sw $t0, -3204($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -3204($fp)
	move $a0, $t2
	jal write
	sw $t2, -3204($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -60($fp)
	move $t3, $t4
	sw $t3, -3208($fp)
	li $t5, 6
	sw $t5, -3212($fp)
	lw $t6, -3212($fp)
	lw $t7, -3212($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -3212($fp)
	lw $t1, -3208($fp)
	lw $t2, -3212($fp)
	add $t0, $t1, $t2
	sw $t0, -3216($fp)
	lw $t4, -3216($fp)
	lw $t3, 0($t4)
	sw $t3, -3220($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -3220($fp)
	move $a0, $t5
	jal write
	sw $t5, -3220($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -552($fp)
	move $t6, $t7
	sw $t6, -3224($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -3224($fp)
	move $a0, $t0
	jal write
	sw $t0, -3224($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -560($fp)
	move $t1, $t2
	sw $t1, -3228($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -3228($fp)
	move $a0, $t3
	jal write
	sw $t3, -3228($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -568($fp)
	move $t4, $t5
	sw $t4, -3232($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -3232($fp)
	move $a0, $t6
	jal write
	sw $t6, -3232($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -576($fp)
	move $t7, $t0
	sw $t7, -3236($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -3236($fp)
	move $a0, $t1
	jal write
	sw $t1, -3236($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -92($fp)
	move $t2, $t3
	sw $t2, -3240($fp)
	li $t4, 0
	sw $t4, -3244($fp)
	lw $t5, -3244($fp)
	lw $t6, -3244($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -3244($fp)
	lw $t0, -3240($fp)
	lw $t1, -3244($fp)
	add $t7, $t0, $t1
	sw $t7, -3248($fp)
	lw $t3, -3248($fp)
	lw $t2, 0($t3)
	sw $t2, -3252($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -3252($fp)
	move $a0, $t4
	jal write
	sw $t4, -3252($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -92($fp)
	move $t5, $t6
	sw $t5, -3256($fp)
	li $t7, 1
	sw $t7, -3260($fp)
	lw $t0, -3260($fp)
	lw $t1, -3260($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -3260($fp)
	lw $t3, -3256($fp)
	lw $t4, -3260($fp)
	add $t2, $t3, $t4
	sw $t2, -3264($fp)
	lw $t6, -3264($fp)
	lw $t5, 0($t6)
	sw $t5, -3268($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -3268($fp)
	move $a0, $t7
	jal write
	sw $t7, -3268($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -92($fp)
	move $t0, $t1
	sw $t0, -3272($fp)
	li $t2, 2
	sw $t2, -3276($fp)
	lw $t3, -3276($fp)
	lw $t4, -3276($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -3276($fp)
	lw $t6, -3272($fp)
	lw $t7, -3276($fp)
	add $t5, $t6, $t7
	sw $t5, -3280($fp)
	lw $t1, -3280($fp)
	lw $t0, 0($t1)
	sw $t0, -3284($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -3284($fp)
	move $a0, $t2
	jal write
	sw $t2, -3284($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -92($fp)
	move $t3, $t4
	sw $t3, -3288($fp)
	li $t5, 3
	sw $t5, -3292($fp)
	lw $t6, -3292($fp)
	lw $t7, -3292($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -3292($fp)
	lw $t1, -3288($fp)
	lw $t2, -3292($fp)
	add $t0, $t1, $t2
	sw $t0, -3296($fp)
	lw $t4, -3296($fp)
	lw $t3, 0($t4)
	sw $t3, -3300($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -3300($fp)
	move $a0, $t5
	jal write
	sw $t5, -3300($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -92($fp)
	move $t6, $t7
	sw $t6, -3304($fp)
	li $t0, 4
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	lw $t2, -3308($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -3308($fp)
	lw $t4, -3304($fp)
	lw $t5, -3308($fp)
	add $t3, $t4, $t5
	sw $t3, -3312($fp)
	lw $t7, -3312($fp)
	lw $t6, 0($t7)
	sw $t6, -3316($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -3316($fp)
	move $a0, $t0
	jal write
	sw $t0, -3316($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -92($fp)
	move $t1, $t2
	sw $t1, -3320($fp)
	li $t3, 5
	sw $t3, -3324($fp)
	lw $t4, -3324($fp)
	lw $t5, -3324($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -3324($fp)
	lw $t7, -3320($fp)
	lw $t0, -3324($fp)
	add $t6, $t7, $t0
	sw $t6, -3328($fp)
	lw $t2, -3328($fp)
	lw $t1, 0($t2)
	sw $t1, -3332($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -3332($fp)
	move $a0, $t3
	jal write
	sw $t3, -3332($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -704($fp)
	move $t4, $t5
	sw $t4, -3336($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -3336($fp)
	move $a0, $t6
	jal write
	sw $t6, -3336($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -712($fp)
	move $t7, $t0
	sw $t7, -3340($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -3340($fp)
	move $a0, $t1
	jal write
	sw $t1, -3340($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -720($fp)
	move $t2, $t3
	sw $t2, -3344($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -3344($fp)
	move $a0, $t4
	jal write
	sw $t4, -3344($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -728($fp)
	move $t5, $t6
	sw $t5, -3348($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -3348($fp)
	move $a0, $t7
	jal write
	sw $t7, -3348($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -736($fp)
	move $t0, $t1
	sw $t0, -3352($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -3352($fp)
	move $a0, $t2
	jal write
	sw $t2, -3352($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -744($fp)
	move $t3, $t4
	sw $t3, -3356($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -3356($fp)
	move $a0, $t5
	jal write
	sw $t5, -3356($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -752($fp)
	move $t6, $t7
	sw $t6, -3360($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -3360($fp)
	move $a0, $t0
	jal write
	sw $t0, -3360($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -120($fp)
	move $t1, $t2
	sw $t1, -3364($fp)
	li $t3, 0
	sw $t3, -3368($fp)
	lw $t4, -3368($fp)
	lw $t5, -3368($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -3368($fp)
	lw $t7, -3364($fp)
	lw $t0, -3368($fp)
	add $t6, $t7, $t0
	sw $t6, -3372($fp)
	lw $t2, -3372($fp)
	lw $t1, 0($t2)
	sw $t1, -3376($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -3376($fp)
	move $a0, $t3
	jal write
	sw $t3, -3376($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -120($fp)
	move $t4, $t5
	sw $t4, -3380($fp)
	li $t6, 1
	sw $t6, -3384($fp)
	lw $t7, -3384($fp)
	lw $t0, -3384($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -3384($fp)
	lw $t2, -3380($fp)
	lw $t3, -3384($fp)
	add $t1, $t2, $t3
	sw $t1, -3388($fp)
	lw $t5, -3388($fp)
	lw $t4, 0($t5)
	sw $t4, -3392($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -3392($fp)
	move $a0, $t6
	jal write
	sw $t6, -3392($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -132($fp)
	move $t7, $t0
	sw $t7, -3396($fp)
	li $t1, 0
	sw $t1, -3400($fp)
	lw $t2, -3400($fp)
	lw $t3, -3400($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -3400($fp)
	lw $t5, -3396($fp)
	lw $t6, -3400($fp)
	add $t4, $t5, $t6
	sw $t4, -3404($fp)
	lw $t0, -3404($fp)
	lw $t7, 0($t0)
	sw $t7, -3408($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -3408($fp)
	move $a0, $t1
	jal write
	sw $t1, -3408($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -132($fp)
	move $t2, $t3
	sw $t2, -3412($fp)
	li $t4, 1
	sw $t4, -3416($fp)
	lw $t5, -3416($fp)
	lw $t6, -3416($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -3416($fp)
	lw $t0, -3412($fp)
	lw $t1, -3416($fp)
	add $t7, $t0, $t1
	sw $t7, -3420($fp)
	lw $t3, -3420($fp)
	lw $t2, 0($t3)
	sw $t2, -3424($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -3424($fp)
	move $a0, $t4
	jal write
	sw $t4, -3424($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -132($fp)
	move $t5, $t6
	sw $t5, -3428($fp)
	li $t7, 2
	sw $t7, -3432($fp)
	lw $t0, -3432($fp)
	lw $t1, -3432($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -3432($fp)
	lw $t3, -3428($fp)
	lw $t4, -3432($fp)
	add $t2, $t3, $t4
	sw $t2, -3436($fp)
	lw $t6, -3436($fp)
	lw $t5, 0($t6)
	sw $t5, -3440($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -3440($fp)
	move $a0, $t7
	jal write
	sw $t7, -3440($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -132($fp)
	move $t0, $t1
	sw $t0, -3444($fp)
	li $t2, 3
	sw $t2, -3448($fp)
	lw $t3, -3448($fp)
	lw $t4, -3448($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -3448($fp)
	lw $t6, -3444($fp)
	lw $t7, -3448($fp)
	add $t5, $t6, $t7
	sw $t5, -3452($fp)
	lw $t1, -3452($fp)
	lw $t0, 0($t1)
	sw $t0, -3456($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -3456($fp)
	move $a0, $t2
	jal write
	sw $t2, -3456($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -132($fp)
	move $t3, $t4
	sw $t3, -3460($fp)
	li $t5, 4
	sw $t5, -3464($fp)
	lw $t6, -3464($fp)
	lw $t7, -3464($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -3464($fp)
	lw $t1, -3460($fp)
	lw $t2, -3464($fp)
	add $t0, $t1, $t2
	sw $t0, -3468($fp)
	lw $t4, -3468($fp)
	lw $t3, 0($t4)
	sw $t3, -3472($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -3472($fp)
	move $a0, $t5
	jal write
	sw $t5, -3472($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -900($fp)
	move $t6, $t7
	sw $t6, -3476($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -3476($fp)
	move $a0, $t0
	jal write
	sw $t0, -3476($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -908($fp)
	move $t1, $t2
	sw $t1, -3480($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -3480($fp)
	move $a0, $t3
	jal write
	sw $t3, -3480($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -916($fp)
	move $t4, $t5
	sw $t4, -3484($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -3484($fp)
	move $a0, $t6
	jal write
	sw $t6, -3484($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -924($fp)
	move $t7, $t0
	sw $t7, -3488($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -3488($fp)
	move $a0, $t1
	jal write
	sw $t1, -3488($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -932($fp)
	move $t2, $t3
	sw $t2, -3492($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -3492($fp)
	move $a0, $t4
	jal write
	sw $t4, -3492($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -940($fp)
	move $t5, $t6
	sw $t5, -3496($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -3496($fp)
	move $a0, $t7
	jal write
	sw $t7, -3496($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -948($fp)
	move $t0, $t1
	sw $t0, -3500($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -3500($fp)
	move $a0, $t2
	jal write
	sw $t2, -3500($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -956($fp)
	move $t3, $t4
	sw $t3, -3504($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -3504($fp)
	move $a0, $t5
	jal write
	sw $t5, -3504($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -964($fp)
	move $t6, $t7
	sw $t6, -3508($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -3508($fp)
	move $a0, $t0
	jal write
	sw $t0, -3508($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -972($fp)
	move $t1, $t2
	sw $t1, -3512($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -3512($fp)
	move $a0, $t3
	jal write
	sw $t3, -3512($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	li $t4, 0
	sw $t4, -3516($fp)
	lw $t6, -28($fp)
	move $t5, $t6
	sw $t5, -3520($fp)
	lw $t0, -908($fp)
	move $t7, $t0
	sw $t7, -3524($fp)
	lw $t1, -3524($fp)
	lw $t2, -3524($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -3524($fp)
	lw $t4, -3520($fp)
	lw $t5, -3524($fp)
	add $t3, $t4, $t5
	sw $t3, -3528($fp)
	lw $t7, -3528($fp)
	lw $t6, 0($t7)
	sw $t6, -3532($fp)
	li $t0, 44573
	sw $t0, -3536($fp)
	lw $t2, -3532($fp)
	lw $t3, -3536($fp)
	add $t1, $t2, $t3
	sw $t1, -3540($fp)
	li $t4, 0
	sw $t4, -3544($fp)
	lw $t6, -932($fp)
	move $t5, $t6
	sw $t5, -3548($fp)
	lw $t7, -3548($fp)
	bne $t7, 0, label287
	j label289
label289:
	lw $t1, -576($fp)
	move $t0, $t1
	sw $t0, -3552($fp)
	lw $t2, -3552($fp)
	bne $t2, 0, label287
	j label288
label287:
	lw $t3, -3544($fp)
	li $t3, 1
	sw $t3, -3544($fp)
label288:
	li $t4, 63096
	sw $t4, -3556($fp)
	lw $t5, -208($fp)
	lw $t6, -3556($fp)
	move $t5, $t6
	sw $t5, -208($fp)
	lw $t0, -208($fp)
	move $t7, $t0
	sw $t7, -3560($fp)
	li $t1, 0
	sw $t1, -3564($fp)
	li $t2, 56617
	sw $t2, -3568($fp)
	lw $t3, -3568($fp)
	bne $t3, 0, label290
	j label293
label293:
	li $t4, 58883
	sw $t4, -3572($fp)
	lw $t5, -3572($fp)
	bne $t5, 0, label290
	j label292
label292:
	li $t6, 40276
	sw $t6, -3576($fp)
	lw $t7, -3576($fp)
	bne $t7, 0, label290
	j label291
label290:
	lw $t0, -3564($fp)
	li $t0, 1
	sw $t0, -3564($fp)
label291:
	li $t1, 0
	sw $t1, -3580($fp)
	li $t2, 47298
	sw $t2, -3584($fp)
	lw $t3, -3584($fp)
	bne $t3, 0, label295
	j label294
label294:
	lw $t4, -3580($fp)
	li $t4, 1
	sw $t4, -3580($fp)
label295:
	lw $s0, -3580($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -3564($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -3560($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t5, $v0
	sw $t5, -3588($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $s0, -3588($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -3544($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -3540($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t6, $v0
	sw $t6, -3592($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t7, -3592($fp)
	bne $t7, 0, label285
	j label286
label286:
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -3596($fp)
	li $t2, 0
	sw $t2, -3600($fp)
	lw $t4, -24($fp)
	move $t3, $t4
	sw $t3, -3604($fp)
	lw $t5, -3604($fp)
	bne $t5, 0, label298
	j label297
label298:
	lw $t7, -568($fp)
	move $t6, $t7
	sw $t6, -3608($fp)
	lw $t0, -3608($fp)
	bne $t0, 0, label296
	j label297
label296:
	lw $t1, -3600($fp)
	li $t1, 1
	sw $t1, -3600($fp)
label297:
	lw $t2, -3600($fp)
	lw $t3, -3600($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -3600($fp)
	lw $t5, -3596($fp)
	lw $t6, -3600($fp)
	add $t4, $t5, $t6
	sw $t4, -3612($fp)
	lw $t0, -3612($fp)
	lw $t7, 0($t0)
	sw $t7, -3616($fp)
	lw $t1, -3616($fp)
	bne $t1, 0, label284
	j label285
label284:
	lw $t2, -3516($fp)
	li $t2, 1
	sw $t2, -3516($fp)
label285:
	lw $t3, -3516($fp)
	move $v0, $t3
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t3, -3516($fp)
	sw $t2, -3516($fp)
	lw $t5, -232($fp)
	move $t4, $t5
	sw $t4, -3620($fp)
	li $t6, 0
	sw $t6, -3624($fp)
	lw $t0, -240($fp)
	move $t7, $t0
	sw $t7, -3628($fp)
	lw $t2, -3628($fp)
	li $s2, 0
	sub $t1, $s2, $t2
	sw $t1, -3632($fp)
	lw $t4, -576($fp)
	move $t3, $t4
	sw $t3, -3636($fp)
	lw $t6, -3632($fp)
	lw $t7, -3636($fp)
	mul $t5, $t6, $t7
	sw $t5, -3640($fp)
	li $t0, 19817
	sw $t0, -3644($fp)
	lw $t2, -560($fp)
	move $t1, $t2
	sw $t1, -3648($fp)
	lw $t4, -916($fp)
	move $t3, $t4
	sw $t3, -3652($fp)
	lw $t6, -3648($fp)
	lw $t7, -3652($fp)
	div $t6, $t7
	mflo $t5
	sw $t5, -3656($fp)
	li $t0, 60947
	sw $t0, -3660($fp)
	lw $t2, -3656($fp)
	lw $t3, -3660($fp)
	div $t2, $t3
	mflo $t1
	sw $t1, -3664($fp)
	lw $t5, -964($fp)
	move $t4, $t5
	sw $t4, -3668($fp)
	li $t6, 52360
	sw $t6, -3672($fp)
	lw $t7, -972($fp)
	lw $t0, -3672($fp)
	move $t7, $t0
	sw $t7, -972($fp)
	lw $t2, -972($fp)
	move $t1, $t2
	sw $t1, -3676($fp)
	lw $s0, -3676($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -3668($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -3664($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t3, $v0
	sw $t3, -3680($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t5, -16($fp)
	move $t4, $t5
	sw $t4, -3684($fp)
	lw $t7, -3680($fp)
	lw $t0, -3684($fp)
	mul $t6, $t7, $t0
	sw $t6, -3688($fp)
	lw $s0, -3688($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -3644($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -3640($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t1, $v0
	sw $t1, -3692($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t2, -3692($fp)
	bne $t2, 0, label302
	j label301
label301:
	lw $t3, -3624($fp)
	li $t3, 1
	sw $t3, -3624($fp)
label302:
	li $t4, 0
	sw $t4, -3696($fp)
	li $t5, 63051
	sw $t5, -3700($fp)
	lw $t6, -3700($fp)
	bne $t6, 0, label304
	j label303
label303:
	lw $t7, -3696($fp)
	li $t7, 1
	sw $t7, -3696($fp)
label304:
	lw $t1, -3624($fp)
	lw $t2, -3696($fp)
	mul $t0, $t1, $t2
	sw $t0, -3704($fp)
	lw $t3, -3620($fp)
	lw $t4, -3704($fp)
	bge $t3, $t4, label299
	j label300
label299:
	sw $t7, -3696($fp)
label300:
	lw $t6, -160($fp)
	move $t5, $t6
	sw $t5, -3708($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -3708($fp)
	move $a0, $t7
	jal write
	sw $t7, -3708($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -168($fp)
	move $t0, $t1
	sw $t0, -3712($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -3712($fp)
	move $a0, $t2
	jal write
	sw $t2, -3712($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -176($fp)
	move $t3, $t4
	sw $t3, -3716($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -3716($fp)
	move $a0, $t5
	jal write
	sw $t5, -3716($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -184($fp)
	move $t6, $t7
	sw $t6, -3720($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -3720($fp)
	move $a0, $t0
	jal write
	sw $t0, -3720($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -192($fp)
	move $t1, $t2
	sw $t1, -3724($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -3724($fp)
	move $a0, $t3
	jal write
	sw $t3, -3724($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -200($fp)
	move $t4, $t5
	sw $t4, -3728($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -3728($fp)
	move $a0, $t6
	jal write
	sw $t6, -3728($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -208($fp)
	move $t7, $t0
	sw $t7, -3732($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -3732($fp)
	move $a0, $t1
	jal write
	sw $t1, -3732($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -216($fp)
	move $t2, $t3
	sw $t2, -3736($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -3736($fp)
	move $a0, $t4
	jal write
	sw $t4, -3736($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -224($fp)
	move $t5, $t6
	sw $t5, -3740($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -3740($fp)
	move $a0, $t7
	jal write
	sw $t7, -3740($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -232($fp)
	move $t0, $t1
	sw $t0, -3744($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -3744($fp)
	move $a0, $t2
	jal write
	sw $t2, -3744($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -240($fp)
	move $t3, $t4
	sw $t3, -3748($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -3748($fp)
	move $a0, $t5
	jal write
	sw $t5, -3748($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -248($fp)
	move $t6, $t7
	sw $t6, -3752($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -3752($fp)
	move $a0, $t0
	jal write
	sw $t0, -3752($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -256($fp)
	move $t1, $t2
	sw $t1, -3756($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -3756($fp)
	move $a0, $t3
	jal write
	sw $t3, -3756($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -28($fp)
	move $t4, $t5
	sw $t4, -3760($fp)
	li $t6, 0
	sw $t6, -3764($fp)
	lw $t7, -3764($fp)
	lw $t0, -3764($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -3764($fp)
	lw $t2, -3760($fp)
	lw $t3, -3764($fp)
	add $t1, $t2, $t3
	sw $t1, -3768($fp)
	lw $t5, -3768($fp)
	lw $t4, 0($t5)
	sw $t4, -3772($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -3772($fp)
	move $a0, $t6
	jal write
	sw $t6, -3772($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -28($fp)
	move $t7, $t0
	sw $t7, -3776($fp)
	li $t1, 1
	sw $t1, -3780($fp)
	lw $t2, -3780($fp)
	lw $t3, -3780($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -3780($fp)
	lw $t5, -3776($fp)
	lw $t6, -3780($fp)
	add $t4, $t5, $t6
	sw $t4, -3784($fp)
	lw $t0, -3784($fp)
	lw $t7, 0($t0)
	sw $t7, -3788($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -3788($fp)
	move $a0, $t1
	jal write
	sw $t1, -3788($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -28($fp)
	move $t2, $t3
	sw $t2, -3792($fp)
	li $t4, 2
	sw $t4, -3796($fp)
	lw $t5, -3796($fp)
	lw $t6, -3796($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -3796($fp)
	lw $t0, -3792($fp)
	lw $t1, -3796($fp)
	add $t7, $t0, $t1
	sw $t7, -3800($fp)
	lw $t3, -3800($fp)
	lw $t2, 0($t3)
	sw $t2, -3804($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -3804($fp)
	move $a0, $t4
	jal write
	sw $t4, -3804($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -28($fp)
	move $t5, $t6
	sw $t5, -3808($fp)
	li $t7, 3
	sw $t7, -3812($fp)
	lw $t0, -3812($fp)
	lw $t1, -3812($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -3812($fp)
	lw $t3, -3808($fp)
	lw $t4, -3812($fp)
	add $t2, $t3, $t4
	sw $t2, -3816($fp)
	lw $t6, -3816($fp)
	lw $t5, 0($t6)
	sw $t5, -3820($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -3820($fp)
	move $a0, $t7
	jal write
	sw $t7, -3820($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -28($fp)
	move $t0, $t1
	sw $t0, -3824($fp)
	li $t2, 4
	sw $t2, -3828($fp)
	lw $t3, -3828($fp)
	lw $t4, -3828($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -3828($fp)
	lw $t6, -3824($fp)
	lw $t7, -3828($fp)
	add $t5, $t6, $t7
	sw $t5, -3832($fp)
	lw $t1, -3832($fp)
	lw $t0, 0($t1)
	sw $t0, -3836($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -3836($fp)
	move $a0, $t2
	jal write
	sw $t2, -3836($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -28($fp)
	move $t3, $t4
	sw $t3, -3840($fp)
	li $t5, 5
	sw $t5, -3844($fp)
	lw $t6, -3844($fp)
	lw $t7, -3844($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -3844($fp)
	lw $t1, -3840($fp)
	lw $t2, -3844($fp)
	add $t0, $t1, $t2
	sw $t0, -3848($fp)
	lw $t4, -3848($fp)
	lw $t3, 0($t4)
	sw $t3, -3852($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -3852($fp)
	move $a0, $t5
	jal write
	sw $t5, -3852($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -28($fp)
	move $t6, $t7
	sw $t6, -3856($fp)
	li $t0, 6
	sw $t0, -3860($fp)
	lw $t1, -3860($fp)
	lw $t2, -3860($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -3860($fp)
	lw $t4, -3856($fp)
	lw $t5, -3860($fp)
	add $t3, $t4, $t5
	sw $t3, -3864($fp)
	lw $t7, -3864($fp)
	lw $t6, 0($t7)
	sw $t6, -3868($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -3868($fp)
	move $a0, $t0
	jal write
	sw $t0, -3868($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -404($fp)
	move $t1, $t2
	sw $t1, -3872($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -3872($fp)
	move $a0, $t3
	jal write
	sw $t3, -3872($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -60($fp)
	move $t4, $t5
	sw $t4, -3876($fp)
	li $t6, 0
	sw $t6, -3880($fp)
	lw $t7, -3880($fp)
	lw $t0, -3880($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -3880($fp)
	lw $t2, -3876($fp)
	lw $t3, -3880($fp)
	add $t1, $t2, $t3
	sw $t1, -3884($fp)
	lw $t5, -3884($fp)
	lw $t4, 0($t5)
	sw $t4, -3888($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -3888($fp)
	move $a0, $t6
	jal write
	sw $t6, -3888($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -60($fp)
	move $t7, $t0
	sw $t7, -3892($fp)
	li $t1, 1
	sw $t1, -3896($fp)
	lw $t2, -3896($fp)
	lw $t3, -3896($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -3896($fp)
	lw $t5, -3892($fp)
	lw $t6, -3896($fp)
	add $t4, $t5, $t6
	sw $t4, -3900($fp)
	lw $t0, -3900($fp)
	lw $t7, 0($t0)
	sw $t7, -3904($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -3904($fp)
	move $a0, $t1
	jal write
	sw $t1, -3904($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -60($fp)
	move $t2, $t3
	sw $t2, -3908($fp)
	li $t4, 2
	sw $t4, -3912($fp)
	lw $t5, -3912($fp)
	lw $t6, -3912($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -3912($fp)
	lw $t0, -3908($fp)
	lw $t1, -3912($fp)
	add $t7, $t0, $t1
	sw $t7, -3916($fp)
	lw $t3, -3916($fp)
	lw $t2, 0($t3)
	sw $t2, -3920($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -3920($fp)
	move $a0, $t4
	jal write
	sw $t4, -3920($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -60($fp)
	move $t5, $t6
	sw $t5, -3924($fp)
	li $t7, 3
	sw $t7, -3928($fp)
	lw $t0, -3928($fp)
	lw $t1, -3928($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -3928($fp)
	lw $t3, -3924($fp)
	lw $t4, -3928($fp)
	add $t2, $t3, $t4
	sw $t2, -3932($fp)
	lw $t6, -3932($fp)
	lw $t5, 0($t6)
	sw $t5, -3936($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -3936($fp)
	move $a0, $t7
	jal write
	sw $t7, -3936($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -60($fp)
	move $t0, $t1
	sw $t0, -3940($fp)
	li $t2, 4
	sw $t2, -3944($fp)
	lw $t3, -3944($fp)
	lw $t4, -3944($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -3944($fp)
	lw $t6, -3940($fp)
	lw $t7, -3944($fp)
	add $t5, $t6, $t7
	sw $t5, -3948($fp)
	lw $t1, -3948($fp)
	lw $t0, 0($t1)
	sw $t0, -3952($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -3952($fp)
	move $a0, $t2
	jal write
	sw $t2, -3952($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -60($fp)
	move $t3, $t4
	sw $t3, -3956($fp)
	li $t5, 5
	sw $t5, -3960($fp)
	lw $t6, -3960($fp)
	lw $t7, -3960($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -3960($fp)
	lw $t1, -3956($fp)
	lw $t2, -3960($fp)
	add $t0, $t1, $t2
	sw $t0, -3964($fp)
	lw $t4, -3964($fp)
	lw $t3, 0($t4)
	sw $t3, -3968($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -3968($fp)
	move $a0, $t5
	jal write
	sw $t5, -3968($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -60($fp)
	move $t6, $t7
	sw $t6, -3972($fp)
	li $t0, 6
	sw $t0, -3976($fp)
	lw $t1, -3976($fp)
	lw $t2, -3976($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -3976($fp)
	lw $t4, -3972($fp)
	lw $t5, -3976($fp)
	add $t3, $t4, $t5
	sw $t3, -3980($fp)
	lw $t7, -3980($fp)
	lw $t6, 0($t7)
	sw $t6, -3984($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -3984($fp)
	move $a0, $t0
	jal write
	sw $t0, -3984($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -552($fp)
	move $t1, $t2
	sw $t1, -3988($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -3988($fp)
	move $a0, $t3
	jal write
	sw $t3, -3988($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -560($fp)
	move $t4, $t5
	sw $t4, -3992($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -3992($fp)
	move $a0, $t6
	jal write
	sw $t6, -3992($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -568($fp)
	move $t7, $t0
	sw $t7, -3996($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -3996($fp)
	move $a0, $t1
	jal write
	sw $t1, -3996($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -576($fp)
	move $t2, $t3
	sw $t2, -4000($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -4000($fp)
	move $a0, $t4
	jal write
	sw $t4, -4000($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -92($fp)
	move $t5, $t6
	sw $t5, -4004($fp)
	li $t7, 0
	sw $t7, -4008($fp)
	lw $t0, -4008($fp)
	lw $t1, -4008($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -4008($fp)
	lw $t3, -4004($fp)
	lw $t4, -4008($fp)
	add $t2, $t3, $t4
	sw $t2, -4012($fp)
	lw $t6, -4012($fp)
	lw $t5, 0($t6)
	sw $t5, -4016($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -4016($fp)
	move $a0, $t7
	jal write
	sw $t7, -4016($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -92($fp)
	move $t0, $t1
	sw $t0, -4020($fp)
	li $t2, 1
	sw $t2, -4024($fp)
	lw $t3, -4024($fp)
	lw $t4, -4024($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -4024($fp)
	lw $t6, -4020($fp)
	lw $t7, -4024($fp)
	add $t5, $t6, $t7
	sw $t5, -4028($fp)
	lw $t1, -4028($fp)
	lw $t0, 0($t1)
	sw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -4032($fp)
	move $a0, $t2
	jal write
	sw $t2, -4032($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -92($fp)
	move $t3, $t4
	sw $t3, -4036($fp)
	li $t5, 2
	sw $t5, -4040($fp)
	lw $t6, -4040($fp)
	lw $t7, -4040($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -4040($fp)
	lw $t1, -4036($fp)
	lw $t2, -4040($fp)
	add $t0, $t1, $t2
	sw $t0, -4044($fp)
	lw $t4, -4044($fp)
	lw $t3, 0($t4)
	sw $t3, -4048($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -4048($fp)
	move $a0, $t5
	jal write
	sw $t5, -4048($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -92($fp)
	move $t6, $t7
	sw $t6, -4052($fp)
	li $t0, 3
	sw $t0, -4056($fp)
	lw $t1, -4056($fp)
	lw $t2, -4056($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -4056($fp)
	lw $t4, -4052($fp)
	lw $t5, -4056($fp)
	add $t3, $t4, $t5
	sw $t3, -4060($fp)
	lw $t7, -4060($fp)
	lw $t6, 0($t7)
	sw $t6, -4064($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -4064($fp)
	move $a0, $t0
	jal write
	sw $t0, -4064($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -92($fp)
	move $t1, $t2
	sw $t1, -4068($fp)
	li $t3, 4
	sw $t3, -4072($fp)
	lw $t4, -4072($fp)
	lw $t5, -4072($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -4072($fp)
	lw $t7, -4068($fp)
	lw $t0, -4072($fp)
	add $t6, $t7, $t0
	sw $t6, -4076($fp)
	lw $t2, -4076($fp)
	lw $t1, 0($t2)
	sw $t1, -4080($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -4080($fp)
	move $a0, $t3
	jal write
	sw $t3, -4080($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -92($fp)
	move $t4, $t5
	sw $t4, -4084($fp)
	li $t6, 5
	sw $t6, -4088($fp)
	lw $t7, -4088($fp)
	lw $t0, -4088($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -4088($fp)
	lw $t2, -4084($fp)
	lw $t3, -4088($fp)
	add $t1, $t2, $t3
	sw $t1, -4092($fp)
	lw $t5, -4092($fp)
	lw $t4, 0($t5)
	sw $t4, -4096($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -4096($fp)
	move $a0, $t6
	jal write
	sw $t6, -4096($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -704($fp)
	move $t7, $t0
	sw $t7, -4100($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -4100($fp)
	move $a0, $t1
	jal write
	sw $t1, -4100($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -712($fp)
	move $t2, $t3
	sw $t2, -4104($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -4104($fp)
	move $a0, $t4
	jal write
	sw $t4, -4104($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -720($fp)
	move $t5, $t6
	sw $t5, -4108($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -4108($fp)
	move $a0, $t7
	jal write
	sw $t7, -4108($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -728($fp)
	move $t0, $t1
	sw $t0, -4112($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -4112($fp)
	move $a0, $t2
	jal write
	sw $t2, -4112($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -736($fp)
	move $t3, $t4
	sw $t3, -4116($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -4116($fp)
	move $a0, $t5
	jal write
	sw $t5, -4116($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -744($fp)
	move $t6, $t7
	sw $t6, -4120($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -4120($fp)
	move $a0, $t0
	jal write
	sw $t0, -4120($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -752($fp)
	move $t1, $t2
	sw $t1, -4124($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -4124($fp)
	move $a0, $t3
	jal write
	sw $t3, -4124($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -120($fp)
	move $t4, $t5
	sw $t4, -4128($fp)
	li $t6, 0
	sw $t6, -4132($fp)
	lw $t7, -4132($fp)
	lw $t0, -4132($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -4132($fp)
	lw $t2, -4128($fp)
	lw $t3, -4132($fp)
	add $t1, $t2, $t3
	sw $t1, -4136($fp)
	lw $t5, -4136($fp)
	lw $t4, 0($t5)
	sw $t4, -4140($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -4140($fp)
	move $a0, $t6
	jal write
	sw $t6, -4140($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -120($fp)
	move $t7, $t0
	sw $t7, -4144($fp)
	li $t1, 1
	sw $t1, -4148($fp)
	lw $t2, -4148($fp)
	lw $t3, -4148($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -4148($fp)
	lw $t5, -4144($fp)
	lw $t6, -4148($fp)
	add $t4, $t5, $t6
	sw $t4, -4152($fp)
	lw $t0, -4152($fp)
	lw $t7, 0($t0)
	sw $t7, -4156($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -4156($fp)
	move $a0, $t1
	jal write
	sw $t1, -4156($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -132($fp)
	move $t2, $t3
	sw $t2, -4160($fp)
	li $t4, 0
	sw $t4, -4164($fp)
	lw $t5, -4164($fp)
	lw $t6, -4164($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -4164($fp)
	lw $t0, -4160($fp)
	lw $t1, -4164($fp)
	add $t7, $t0, $t1
	sw $t7, -4168($fp)
	lw $t3, -4168($fp)
	lw $t2, 0($t3)
	sw $t2, -4172($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -4172($fp)
	move $a0, $t4
	jal write
	sw $t4, -4172($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -132($fp)
	move $t5, $t6
	sw $t5, -4176($fp)
	li $t7, 1
	sw $t7, -4180($fp)
	lw $t0, -4180($fp)
	lw $t1, -4180($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -4180($fp)
	lw $t3, -4176($fp)
	lw $t4, -4180($fp)
	add $t2, $t3, $t4
	sw $t2, -4184($fp)
	lw $t6, -4184($fp)
	lw $t5, 0($t6)
	sw $t5, -4188($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -4188($fp)
	move $a0, $t7
	jal write
	sw $t7, -4188($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -132($fp)
	move $t0, $t1
	sw $t0, -4192($fp)
	li $t2, 2
	sw $t2, -4196($fp)
	lw $t3, -4196($fp)
	lw $t4, -4196($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -4196($fp)
	lw $t6, -4192($fp)
	lw $t7, -4196($fp)
	add $t5, $t6, $t7
	sw $t5, -4200($fp)
	lw $t1, -4200($fp)
	lw $t0, 0($t1)
	sw $t0, -4204($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -4204($fp)
	move $a0, $t2
	jal write
	sw $t2, -4204($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -132($fp)
	move $t3, $t4
	sw $t3, -4208($fp)
	li $t5, 3
	sw $t5, -4212($fp)
	lw $t6, -4212($fp)
	lw $t7, -4212($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -4212($fp)
	lw $t1, -4208($fp)
	lw $t2, -4212($fp)
	add $t0, $t1, $t2
	sw $t0, -4216($fp)
	lw $t4, -4216($fp)
	lw $t3, 0($t4)
	sw $t3, -4220($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -4220($fp)
	move $a0, $t5
	jal write
	sw $t5, -4220($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -132($fp)
	move $t6, $t7
	sw $t6, -4224($fp)
	li $t0, 4
	sw $t0, -4228($fp)
	lw $t1, -4228($fp)
	lw $t2, -4228($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -4228($fp)
	lw $t4, -4224($fp)
	lw $t5, -4228($fp)
	add $t3, $t4, $t5
	sw $t3, -4232($fp)
	lw $t7, -4232($fp)
	lw $t6, 0($t7)
	sw $t6, -4236($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -4236($fp)
	move $a0, $t0
	jal write
	sw $t0, -4236($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -900($fp)
	move $t1, $t2
	sw $t1, -4240($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -4240($fp)
	move $a0, $t3
	jal write
	sw $t3, -4240($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -908($fp)
	move $t4, $t5
	sw $t4, -4244($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -4244($fp)
	move $a0, $t6
	jal write
	sw $t6, -4244($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -916($fp)
	move $t7, $t0
	sw $t7, -4248($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -4248($fp)
	move $a0, $t1
	jal write
	sw $t1, -4248($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -924($fp)
	move $t2, $t3
	sw $t2, -4252($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -4252($fp)
	move $a0, $t4
	jal write
	sw $t4, -4252($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -932($fp)
	move $t5, $t6
	sw $t5, -4256($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -4256($fp)
	move $a0, $t7
	jal write
	sw $t7, -4256($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -940($fp)
	move $t0, $t1
	sw $t0, -4260($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -4260($fp)
	move $a0, $t2
	jal write
	sw $t2, -4260($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -948($fp)
	move $t3, $t4
	sw $t3, -4264($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -4264($fp)
	move $a0, $t5
	jal write
	sw $t5, -4264($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -956($fp)
	move $t6, $t7
	sw $t6, -4268($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -4268($fp)
	move $a0, $t0
	jal write
	sw $t0, -4268($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -964($fp)
	move $t1, $t2
	sw $t1, -4272($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -4272($fp)
	move $a0, $t3
	jal write
	sw $t3, -4272($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -972($fp)
	move $t4, $t5
	sw $t4, -4276($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -4276($fp)
	move $a0, $t6
	jal write
	sw $t6, -4276($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	li $t7, 0
	sw $t7, -4280($fp)
	li $t0, 49674
	sw $t0, -4284($fp)
	lw $t1, -916($fp)
	lw $t2, -4284($fp)
	move $t1, $t2
	sw $t1, -916($fp)
	lw $t4, -916($fp)
	move $t3, $t4
	sw $t3, -4288($fp)
	lw $t6, -8($fp)
	move $t5, $t6
	sw $t5, -4292($fp)
	li $t7, 17550
	sw $t7, -4296($fp)
	lw $t1, -4292($fp)
	lw $t2, -4296($fp)
	mul $t0, $t1, $t2
	sw $t0, -4300($fp)
	lw $t4, -8($fp)
	move $t3, $t4
	sw $t3, -4304($fp)
	lw $t6, -4300($fp)
	lw $t7, -4304($fp)
	div $t6, $t7
	mflo $t5
	sw $t5, -4308($fp)
	lw $t1, -720($fp)
	move $t0, $t1
	sw $t0, -4312($fp)
	lw $t2, -940($fp)
	lw $t3, -4312($fp)
	move $t2, $t3
	sw $t2, -940($fp)
	lw $t5, -940($fp)
	move $t4, $t5
	sw $t4, -4316($fp)
	lw $s0, -4316($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -4308($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -4288($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t6, $v0
	sw $t6, -4320($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t0, -576($fp)
	move $t7, $t0
	sw $t7, -4324($fp)
	lw $t2, -4320($fp)
	lw $t3, -4324($fp)
	add $t1, $t2, $t3
	sw $t1, -4328($fp)
	lw $t5, -176($fp)
	move $t4, $t5
	sw $t4, -4332($fp)
	lw $t6, -4328($fp)
	lw $t7, -4332($fp)
	bne $t6, $t7, label305
	j label308
label308:
	lw $t1, -404($fp)
	move $t0, $t1
	sw $t0, -4336($fp)
	li $t2, 48406
	sw $t2, -4340($fp)
	lw $t4, -4336($fp)
	lw $t5, -4340($fp)
	sub $t3, $t4, $t5
	sw $t3, -4344($fp)
	lw $t6, -4344($fp)
	bne $t6, 0, label305
	j label307
label307:
	li $t7, 0
	sw $t7, -4348($fp)
	li $t0, 25240
	sw $t0, -4352($fp)
	lw $t2, -192($fp)
	move $t1, $t2
	sw $t1, -4356($fp)
	lw $t3, -4352($fp)
	lw $t4, -4356($fp)
	blt $t3, $t4, label309
	j label310
label309:
	lw $t5, -4348($fp)
	li $t5, 1
	sw $t5, -4348($fp)
label310:
	lw $t7, -168($fp)
	move $t6, $t7
	sw $t6, -4360($fp)
	lw $t1, -4360($fp)
	li $s2, 0
	sub $t0, $s2, $t1
	sw $t0, -4364($fp)
	lw $t2, -4348($fp)
	lw $t3, -4364($fp)
	beq $t2, $t3, label305
	j label306
label305:
	lw $t4, -4280($fp)
	li $t4, 1
	sw $t4, -4280($fp)
label306:
	lw $t5, -4280($fp)
	move $v0, $t5
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t5, -4280($fp)
id_UBO5QVM:
	subu $sp, $sp, 4
	sw $fp, 0($sp)
	move $fp, $sp
	subu $sp, $sp, 1000
	lw $a0, 12($fp)
	sw $a0, -8($fp)
	lw $a0, 16($fp)
	sw $a0, -16($fp)
	addi $s1, $fp, -40
	sw $s1, -20($fp)
	li $t6, 32343
	sw $t6, -44($fp)
	lw $t0, -44($fp)
	move $t7, $t0
	sw $t7, -48($fp)
	lw $t2, -20($fp)
	move $t1, $t2
	sw $t1, -52($fp)
	li $t3, 0
	sw $t3, -56($fp)
	lw $t4, -56($fp)
	lw $t5, -56($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -56($fp)
	lw $t7, -52($fp)
	lw $t0, -56($fp)
	add $t6, $t7, $t0
	sw $t6, -60($fp)
	lw $t2, -60($fp)
	move $t1, $t2
	sw $t1, -64($fp)
	li $t3, 32450
	sw $t3, -68($fp)
	lw $t4, -64($fp)
	lw $t5, -68($fp)
	sw $t5, 0($t4)
	sw $t4, -64($fp)
	lw $t7, -20($fp)
	move $t6, $t7
	sw $t6, -72($fp)
	li $t0, 1
	sw $t0, -76($fp)
	lw $t1, -76($fp)
	lw $t2, -76($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -76($fp)
	lw $t4, -72($fp)
	lw $t5, -76($fp)
	add $t3, $t4, $t5
	sw $t3, -80($fp)
	lw $t7, -80($fp)
	move $t6, $t7
	sw $t6, -84($fp)
	li $t0, 39575
	sw $t0, -88($fp)
	lw $t1, -84($fp)
	lw $t2, -88($fp)
	sw $t2, 0($t1)
	sw $t1, -84($fp)
	lw $t4, -20($fp)
	move $t3, $t4
	sw $t3, -92($fp)
	li $t5, 2
	sw $t5, -96($fp)
	lw $t6, -96($fp)
	lw $t7, -96($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -96($fp)
	lw $t1, -92($fp)
	lw $t2, -96($fp)
	add $t0, $t1, $t2
	sw $t0, -100($fp)
	lw $t4, -100($fp)
	move $t3, $t4
	sw $t3, -104($fp)
	li $t5, 34605
	sw $t5, -108($fp)
	lw $t6, -104($fp)
	lw $t7, -108($fp)
	sw $t7, 0($t6)
	sw $t6, -104($fp)
	lw $t1, -20($fp)
	move $t0, $t1
	sw $t0, -112($fp)
	li $t2, 3
	sw $t2, -116($fp)
	lw $t3, -116($fp)
	lw $t4, -116($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -116($fp)
	lw $t6, -112($fp)
	lw $t7, -116($fp)
	add $t5, $t6, $t7
	sw $t5, -120($fp)
	lw $t1, -120($fp)
	move $t0, $t1
	sw $t0, -124($fp)
	li $t2, 3448
	sw $t2, -128($fp)
	lw $t3, -124($fp)
	lw $t4, -128($fp)
	sw $t4, 0($t3)
	sw $t3, -124($fp)
	lw $t6, -20($fp)
	move $t5, $t6
	sw $t5, -132($fp)
	li $t7, 4
	sw $t7, -136($fp)
	lw $t0, -136($fp)
	lw $t1, -136($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -136($fp)
	lw $t3, -132($fp)
	lw $t4, -136($fp)
	add $t2, $t3, $t4
	sw $t2, -140($fp)
	lw $t6, -140($fp)
	move $t5, $t6
	sw $t5, -144($fp)
	li $t7, 36018
	sw $t7, -148($fp)
	lw $t0, -144($fp)
	lw $t1, -148($fp)
	sw $t1, 0($t0)
	sw $t0, -144($fp)
	li $t2, 4957
	sw $t2, -152($fp)
	lw $t4, -152($fp)
	move $t3, $t4
	sw $t3, -156($fp)
	li $t5, 54367
	sw $t5, -160($fp)
	lw $t7, -160($fp)
	move $t6, $t7
	sw $t6, -164($fp)
	lw $t1, -20($fp)
	move $t0, $t1
	sw $t0, -168($fp)
	li $t2, 0
	sw $t2, -172($fp)
	li $t3, 50197
	sw $t3, -176($fp)
	lw $t5, -8($fp)
	move $t4, $t5
	sw $t4, -180($fp)
	lw $t6, -176($fp)
	lw $t7, -180($fp)
	bgt $t6, $t7, label311
	j label312
label311:
	lw $t0, -172($fp)
	li $t0, 1
	sw $t0, -172($fp)
label312:
	lw $t1, -16($fp)
	lw $t2, -172($fp)
	move $t1, $t2
	sw $t1, -16($fp)
	lw $t4, -16($fp)
	move $t3, $t4
	sw $t3, -184($fp)
	lw $t5, -184($fp)
	lw $t6, -184($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -184($fp)
	lw $t0, -164($fp)
	move $t7, $t0
	sw $t7, -188($fp)
	lw $t2, -8($fp)
	move $t1, $t2
	sw $t1, -192($fp)
	lw $t4, -188($fp)
	lw $t5, -192($fp)
	add $t3, $t4, $t5
	sw $t3, -196($fp)
	li $t6, 54003
	sw $t6, -200($fp)
	lw $t0, -196($fp)
	lw $t1, -200($fp)
	add $t7, $t0, $t1
	sw $t7, -204($fp)
	li $t2, 0
	sw $t2, -208($fp)
	lw $t4, -48($fp)
	move $t3, $t4
	sw $t3, -212($fp)
	lw $t6, -8($fp)
	move $t5, $t6
	sw $t5, -216($fp)
	lw $t0, -212($fp)
	lw $t1, -216($fp)
	add $t7, $t0, $t1
	sw $t7, -220($fp)
	li $t2, 43154
	sw $t2, -224($fp)
	lw $t3, -220($fp)
	lw $t4, -224($fp)
	blt $t3, $t4, label313
	j label314
label313:
	lw $t5, -208($fp)
	li $t5, 1
	sw $t5, -208($fp)
label314:
	li $t6, 0
	sw $t6, -228($fp)
	li $t7, 0
	sw $t7, -232($fp)
	li $t0, 64150
	sw $t0, -236($fp)
	li $t1, 57522
	sw $t1, -240($fp)
	lw $t2, -236($fp)
	lw $t3, -240($fp)
	bne $t2, $t3, label317
	j label318
label317:
	lw $t4, -232($fp)
	li $t4, 1
	sw $t4, -232($fp)
label318:
	li $t5, 56977
	sw $t5, -244($fp)
	lw $t6, -232($fp)
	lw $t7, -244($fp)
	bne $t6, $t7, label315
	j label316
label315:
	lw $t0, -228($fp)
	li $t0, 1
	sw $t0, -228($fp)
label316:
	lw $s0, -228($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -208($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -204($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t1, $v0
	sw $t1, -248($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	li $t2, 0
	sw $t2, -252($fp)
	li $t3, 0
	sw $t3, -256($fp)
	lw $t5, -16($fp)
	move $t4, $t5
	sw $t4, -260($fp)
	li $t6, 2020
	sw $t6, -264($fp)
	lw $t0, -260($fp)
	lw $t1, -264($fp)
	add $t7, $t0, $t1
	sw $t7, -268($fp)
	lw $t3, -156($fp)
	move $t2, $t3
	sw $t2, -272($fp)
	lw $t4, -268($fp)
	lw $t5, -272($fp)
	ble $t4, $t5, label321
	j label322
label321:
	lw $t6, -256($fp)
	li $t6, 1
	sw $t6, -256($fp)
label322:
	lw $t0, -20($fp)
	move $t7, $t0
	sw $t7, -276($fp)
	li $t1, 4
	sw $t1, -280($fp)
	lw $t2, -280($fp)
	lw $t3, -280($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -280($fp)
	lw $t5, -276($fp)
	lw $t6, -280($fp)
	add $t4, $t5, $t6
	sw $t4, -284($fp)
	lw $t0, -284($fp)
	lw $t7, 0($t0)
	sw $t7, -288($fp)
	lw $t1, -256($fp)
	lw $t2, -288($fp)
	beq $t1, $t2, label319
	j label320
label319:
	lw $t3, -252($fp)
	li $t3, 1
	sw $t3, -252($fp)
label320:
	lw $t4, -8($fp)
	lw $t5, -252($fp)
	move $t4, $t5
	sw $t4, -8($fp)
	lw $t7, -48($fp)
	move $t6, $t7
	sw $t6, -292($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -292($fp)
	move $a0, $t0
	jal write
	sw $t0, -292($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -20($fp)
	move $t1, $t2
	sw $t1, -296($fp)
	li $t3, 0
	sw $t3, -300($fp)
	lw $t4, -300($fp)
	lw $t5, -300($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -300($fp)
	lw $t7, -296($fp)
	lw $t0, -300($fp)
	add $t6, $t7, $t0
	sw $t6, -304($fp)
	lw $t2, -304($fp)
	lw $t1, 0($t2)
	sw $t1, -308($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -308($fp)
	move $a0, $t3
	jal write
	sw $t3, -308($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -20($fp)
	move $t4, $t5
	sw $t4, -312($fp)
	li $t6, 1
	sw $t6, -316($fp)
	lw $t7, -316($fp)
	lw $t0, -316($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -316($fp)
	lw $t2, -312($fp)
	lw $t3, -316($fp)
	add $t1, $t2, $t3
	sw $t1, -320($fp)
	lw $t5, -320($fp)
	lw $t4, 0($t5)
	sw $t4, -324($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -324($fp)
	move $a0, $t6
	jal write
	sw $t6, -324($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -20($fp)
	move $t7, $t0
	sw $t7, -328($fp)
	li $t1, 2
	sw $t1, -332($fp)
	lw $t2, -332($fp)
	lw $t3, -332($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -332($fp)
	lw $t5, -328($fp)
	lw $t6, -332($fp)
	add $t4, $t5, $t6
	sw $t4, -336($fp)
	lw $t0, -336($fp)
	lw $t7, 0($t0)
	sw $t7, -340($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -340($fp)
	move $a0, $t1
	jal write
	sw $t1, -340($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -20($fp)
	move $t2, $t3
	sw $t2, -344($fp)
	li $t4, 3
	sw $t4, -348($fp)
	lw $t5, -348($fp)
	lw $t6, -348($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -348($fp)
	lw $t0, -344($fp)
	lw $t1, -348($fp)
	add $t7, $t0, $t1
	sw $t7, -352($fp)
	lw $t3, -352($fp)
	lw $t2, 0($t3)
	sw $t2, -356($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -356($fp)
	move $a0, $t4
	jal write
	sw $t4, -356($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -20($fp)
	move $t5, $t6
	sw $t5, -360($fp)
	li $t7, 4
	sw $t7, -364($fp)
	lw $t0, -364($fp)
	lw $t1, -364($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -364($fp)
	lw $t3, -360($fp)
	lw $t4, -364($fp)
	add $t2, $t3, $t4
	sw $t2, -368($fp)
	lw $t6, -368($fp)
	lw $t5, 0($t6)
	sw $t5, -372($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -372($fp)
	move $a0, $t7
	jal write
	sw $t7, -372($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -156($fp)
	move $t0, $t1
	sw $t0, -376($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -376($fp)
	move $a0, $t2
	jal write
	sw $t2, -376($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -164($fp)
	move $t3, $t4
	sw $t3, -380($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -380($fp)
	move $a0, $t5
	jal write
	sw $t5, -380($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	li $t6, 0
	sw $t6, -384($fp)
	lw $t0, -20($fp)
	move $t7, $t0
	sw $t7, -388($fp)
	li $t1, 4
	sw $t1, -392($fp)
	lw $t2, -392($fp)
	lw $t3, -392($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -392($fp)
	lw $t5, -388($fp)
	lw $t6, -392($fp)
	add $t4, $t5, $t6
	sw $t4, -396($fp)
	lw $t0, -396($fp)
	lw $t7, 0($t0)
	sw $t7, -400($fp)
	li $t1, 41485
	sw $t1, -404($fp)
	lw $t3, -400($fp)
	lw $t4, -404($fp)
	add $t2, $t3, $t4
	sw $t2, -408($fp)
	lw $t6, -48($fp)
	move $t5, $t6
	sw $t5, -412($fp)
	lw $t0, -408($fp)
	lw $t1, -412($fp)
	sub $t7, $t0, $t1
	sw $t7, -416($fp)
	li $t2, 39941
	sw $t2, -420($fp)
	lw $t4, -8($fp)
	move $t3, $t4
	sw $t3, -424($fp)
	lw $t6, -420($fp)
	lw $t7, -424($fp)
	add $t5, $t6, $t7
	sw $t5, -428($fp)
	li $t0, 43481
	sw $t0, -432($fp)
	li $t1, 23247
	sw $t1, -436($fp)
	lw $t3, -432($fp)
	lw $t4, -436($fp)
	mul $t2, $t3, $t4
	sw $t2, -440($fp)
	lw $s0, -440($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -428($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,8
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_UBO5QVM
	move $t5, $v0
	sw $t5, -444($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t7, -20($fp)
	move $t6, $t7
	sw $t6, -448($fp)
	li $t0, 4
	sw $t0, -452($fp)
	lw $t1, -452($fp)
	lw $t2, -452($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -452($fp)
	lw $t4, -448($fp)
	lw $t5, -452($fp)
	add $t3, $t4, $t5
	sw $t3, -456($fp)
	lw $t7, -456($fp)
	lw $t6, 0($t7)
	sw $t6, -460($fp)
	lw $t1, -444($fp)
	lw $t2, -460($fp)
	mul $t0, $t1, $t2
	sw $t0, -464($fp)
	lw $t3, -416($fp)
	lw $t4, -464($fp)
	bne $t3, $t4, label323
	j label324
label323:
	lw $t5, -384($fp)
	li $t5, 1
	sw $t5, -384($fp)
label324:
	lw $t6, -384($fp)
	move $v0, $t6
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t6, -384($fp)
id_Aw:
	subu $sp, $sp, 4
	sw $fp, 0($sp)
	move $fp, $sp
	subu $sp, $sp, 1000
	lw $a0, 12($fp)
	sw $a0, -8($fp)
	lw $a0, 16($fp)
	sw $a0, -16($fp)
	addi $s1, $fp, -56
	sw $s1, -20($fp)
	li $t7, 10071
	sw $t7, -60($fp)
	lw $t1, -60($fp)
	move $t0, $t1
	sw $t0, -64($fp)
	li $t2, 57273
	sw $t2, -68($fp)
	lw $t4, -68($fp)
	move $t3, $t4
	sw $t3, -72($fp)
	lw $t6, -20($fp)
	move $t5, $t6
	sw $t5, -76($fp)
	li $t7, 0
	sw $t7, -80($fp)
	lw $t0, -80($fp)
	lw $t1, -80($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -80($fp)
	lw $t3, -76($fp)
	lw $t4, -80($fp)
	add $t2, $t3, $t4
	sw $t2, -84($fp)
	lw $t6, -84($fp)
	move $t5, $t6
	sw $t5, -88($fp)
	li $t7, 23031
	sw $t7, -92($fp)
	lw $t0, -88($fp)
	lw $t1, -92($fp)
	sw $t1, 0($t0)
	sw $t0, -88($fp)
	lw $t3, -20($fp)
	move $t2, $t3
	sw $t2, -96($fp)
	li $t4, 1
	sw $t4, -100($fp)
	lw $t5, -100($fp)
	lw $t6, -100($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	add $t7, $t0, $t1
	sw $t7, -104($fp)
	lw $t3, -104($fp)
	move $t2, $t3
	sw $t2, -108($fp)
	li $t4, 27621
	sw $t4, -112($fp)
	lw $t5, -108($fp)
	lw $t6, -112($fp)
	sw $t6, 0($t5)
	sw $t5, -108($fp)
	lw $t0, -20($fp)
	move $t7, $t0
	sw $t7, -116($fp)
	li $t1, 2
	sw $t1, -120($fp)
	lw $t2, -120($fp)
	lw $t3, -120($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -120($fp)
	lw $t5, -116($fp)
	lw $t6, -120($fp)
	add $t4, $t5, $t6
	sw $t4, -124($fp)
	lw $t0, -124($fp)
	move $t7, $t0
	sw $t7, -128($fp)
	li $t1, 40143
	sw $t1, -132($fp)
	lw $t2, -128($fp)
	lw $t3, -132($fp)
	sw $t3, 0($t2)
	sw $t2, -128($fp)
	lw $t5, -20($fp)
	move $t4, $t5
	sw $t4, -136($fp)
	li $t6, 3
	sw $t6, -140($fp)
	lw $t7, -140($fp)
	lw $t0, -140($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -140($fp)
	lw $t2, -136($fp)
	lw $t3, -140($fp)
	add $t1, $t2, $t3
	sw $t1, -144($fp)
	lw $t5, -144($fp)
	move $t4, $t5
	sw $t4, -148($fp)
	li $t6, 48271
	sw $t6, -152($fp)
	lw $t7, -148($fp)
	lw $t0, -152($fp)
	sw $t0, 0($t7)
	sw $t7, -148($fp)
	lw $t2, -20($fp)
	move $t1, $t2
	sw $t1, -156($fp)
	li $t3, 4
	sw $t3, -160($fp)
	lw $t4, -160($fp)
	lw $t5, -160($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -160($fp)
	lw $t7, -156($fp)
	lw $t0, -160($fp)
	add $t6, $t7, $t0
	sw $t6, -164($fp)
	lw $t2, -164($fp)
	move $t1, $t2
	sw $t1, -168($fp)
	li $t3, 59964
	sw $t3, -172($fp)
	lw $t4, -168($fp)
	lw $t5, -172($fp)
	sw $t5, 0($t4)
	sw $t4, -168($fp)
	lw $t7, -20($fp)
	move $t6, $t7
	sw $t6, -176($fp)
	li $t0, 5
	sw $t0, -180($fp)
	lw $t1, -180($fp)
	lw $t2, -180($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -180($fp)
	lw $t4, -176($fp)
	lw $t5, -180($fp)
	add $t3, $t4, $t5
	sw $t3, -184($fp)
	lw $t7, -184($fp)
	move $t6, $t7
	sw $t6, -188($fp)
	li $t0, 7057
	sw $t0, -192($fp)
	lw $t1, -188($fp)
	lw $t2, -192($fp)
	sw $t2, 0($t1)
	sw $t1, -188($fp)
	lw $t4, -20($fp)
	move $t3, $t4
	sw $t3, -196($fp)
	li $t5, 6
	sw $t5, -200($fp)
	lw $t6, -200($fp)
	lw $t7, -200($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -200($fp)
	lw $t1, -196($fp)
	lw $t2, -200($fp)
	add $t0, $t1, $t2
	sw $t0, -204($fp)
	lw $t4, -204($fp)
	move $t3, $t4
	sw $t3, -208($fp)
	li $t5, 22310
	sw $t5, -212($fp)
	lw $t6, -208($fp)
	lw $t7, -212($fp)
	sw $t7, 0($t6)
	sw $t6, -208($fp)
	lw $t1, -20($fp)
	move $t0, $t1
	sw $t0, -216($fp)
	li $t2, 7
	sw $t2, -220($fp)
	lw $t3, -220($fp)
	lw $t4, -220($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -220($fp)
	lw $t6, -216($fp)
	lw $t7, -220($fp)
	add $t5, $t6, $t7
	sw $t5, -224($fp)
	lw $t1, -224($fp)
	move $t0, $t1
	sw $t0, -228($fp)
	li $t2, 29033
	sw $t2, -232($fp)
	lw $t3, -228($fp)
	lw $t4, -232($fp)
	sw $t4, 0($t3)
	sw $t3, -228($fp)
	lw $t6, -20($fp)
	move $t5, $t6
	sw $t5, -236($fp)
	li $t7, 8
	sw $t7, -240($fp)
	lw $t0, -240($fp)
	lw $t1, -240($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -240($fp)
	lw $t3, -236($fp)
	lw $t4, -240($fp)
	add $t2, $t3, $t4
	sw $t2, -244($fp)
	lw $t6, -244($fp)
	move $t5, $t6
	sw $t5, -248($fp)
	li $t7, 10506
	sw $t7, -252($fp)
	lw $t0, -248($fp)
	lw $t1, -252($fp)
	sw $t1, 0($t0)
	sw $t0, -248($fp)
	li $t2, 58329
	sw $t2, -256($fp)
	lw $t4, -256($fp)
	move $t3, $t4
	sw $t3, -260($fp)
	li $t5, 33991
	sw $t5, -264($fp)
	lw $t7, -264($fp)
	move $t6, $t7
	sw $t6, -268($fp)
	li $t0, 64873
	sw $t0, -272($fp)
	lw $t2, -272($fp)
	move $t1, $t2
	sw $t1, -276($fp)
	li $t3, 42990
	sw $t3, -280($fp)
	lw $t5, -280($fp)
	move $t4, $t5
	sw $t4, -284($fp)
	li $t6, 22458
	sw $t6, -288($fp)
	lw $t0, -288($fp)
	move $t7, $t0
	sw $t7, -292($fp)
	li $t1, 42492
	sw $t1, -296($fp)
	lw $t2, -292($fp)
	lw $t3, -296($fp)
	move $t2, $t3
	sw $t2, -292($fp)
	lw $t5, -292($fp)
	move $t4, $t5
	sw $t4, -300($fp)
	lw $t7, -260($fp)
	move $t6, $t7
	sw $t6, -304($fp)
	lw $t1, -72($fp)
	move $t0, $t1
	sw $t0, -308($fp)
	lw $t3, -304($fp)
	lw $t4, -308($fp)
	mul $t2, $t3, $t4
	sw $t2, -312($fp)
	lw $t6, -72($fp)
	move $t5, $t6
	sw $t5, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	add $t7, $t0, $t1
	sw $t7, -320($fp)
	lw $s0, -320($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -300($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,8
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_UBO5QVM
	move $t2, $v0
	sw $t2, -324($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t3, -268($fp)
	lw $t4, -324($fp)
	move $t3, $t4
	sw $t3, -268($fp)
	sw $t3, -268($fp)
	lw $t6, -20($fp)
	move $t5, $t6
	sw $t5, -328($fp)
	lw $t0, -72($fp)
	move $t7, $t0
	sw $t7, -332($fp)
	lw $t1, -332($fp)
	lw $t2, -332($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -332($fp)
	lw $t4, -328($fp)
	lw $t5, -332($fp)
	add $t3, $t4, $t5
	sw $t3, -336($fp)
	lw $t7, -336($fp)
	lw $t6, 0($t7)
	sw $t6, -340($fp)
	lw $t1, -72($fp)
	move $t0, $t1
	sw $t0, -344($fp)
	lw $t3, -340($fp)
	lw $t4, -344($fp)
	div $t3, $t4
	mflo $t2
	sw $t2, -348($fp)
	lw $t6, -292($fp)
	move $t5, $t6
	sw $t5, -352($fp)
	lw $t0, -292($fp)
	move $t7, $t0
	sw $t7, -356($fp)
	lw $t2, -352($fp)
	lw $t3, -356($fp)
	div $t2, $t3
	mflo $t1
	sw $t1, -360($fp)
	lw $t4, -348($fp)
	lw $t5, -360($fp)
	bne $t4, $t5, label328
	j label326
label328:
	lw $t7, -20($fp)
	move $t6, $t7
	sw $t6, -364($fp)
	li $t0, 3
	sw $t0, -368($fp)
	lw $t1, -368($fp)
	lw $t2, -368($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -368($fp)
	lw $t4, -364($fp)
	lw $t5, -368($fp)
	add $t3, $t4, $t5
	sw $t3, -372($fp)
	lw $t7, -372($fp)
	lw $t6, 0($t7)
	sw $t6, -376($fp)
	lw $t0, -376($fp)
	bne $t0, 0, label327
	j label326
label327:
	lw $t2, -64($fp)
	move $t1, $t2
	sw $t1, -380($fp)
	li $t3, 0
	sw $t3, -384($fp)
	lw $t5, -260($fp)
	move $t4, $t5
	sw $t4, -388($fp)
	lw $t6, -388($fp)
	bne $t6, 0, label330
	j label329
label329:
	lw $t7, -384($fp)
	li $t7, 1
	sw $t7, -384($fp)
label330:
	lw $t1, -380($fp)
	lw $t2, -384($fp)
	mul $t0, $t1, $t2
	sw $t0, -392($fp)
	lw $t3, -392($fp)
	bne $t3, 0, label325
	j label326
label325:
	sw $t7, -384($fp)
label326:
	li $t4, 0
	sw $t4, -396($fp)
	lw $t6, -20($fp)
	move $t5, $t6
	sw $t5, -400($fp)
	lw $t0, -8($fp)
	move $t7, $t0
	sw $t7, -404($fp)
	lw $t1, -404($fp)
	lw $t2, -404($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -404($fp)
	lw $t4, -400($fp)
	lw $t5, -404($fp)
	add $t3, $t4, $t5
	sw $t3, -408($fp)
	lw $t7, -408($fp)
	lw $t6, 0($t7)
	sw $t6, -412($fp)
	li $t0, 33933
	sw $t0, -416($fp)
	lw $t1, -412($fp)
	lw $t2, -416($fp)
	blt $t1, $t2, label331
	j label332
label331:
	lw $t3, -396($fp)
	li $t3, 1
	sw $t3, -396($fp)
label332:
	lw $t5, -276($fp)
	move $t4, $t5
	sw $t4, -420($fp)
	lw $t7, -72($fp)
	move $t6, $t7
	sw $t6, -424($fp)
	lw $t1, -420($fp)
	lw $t2, -424($fp)
	mul $t0, $t1, $t2
	sw $t0, -428($fp)
	lw $s0, -428($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -396($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,8
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_UBO5QVM
	move $t3, $v0
	sw $t3, -432($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	li $t4, 43624
	sw $t4, -436($fp)
	li $t5, 0
	sw $t5, -440($fp)
	lw $t7, -20($fp)
	move $t6, $t7
	sw $t6, -444($fp)
	lw $t1, -284($fp)
	move $t0, $t1
	sw $t0, -448($fp)
	lw $t2, -448($fp)
	lw $t3, -448($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -448($fp)
	lw $t5, -444($fp)
	lw $t6, -448($fp)
	add $t4, $t5, $t6
	sw $t4, -452($fp)
	lw $t0, -452($fp)
	lw $t7, 0($t0)
	sw $t7, -456($fp)
	lw $t1, -456($fp)
	bne $t1, 0, label335
	j label333
label335:
	lw $t3, -260($fp)
	move $t2, $t3
	sw $t2, -460($fp)
	lw $t5, -8($fp)
	move $t4, $t5
	sw $t4, -464($fp)
	lw $t7, -460($fp)
	lw $t0, -464($fp)
	sub $t6, $t7, $t0
	sw $t6, -468($fp)
	lw $t1, -468($fp)
	bne $t1, 0, label333
	j label334
label333:
	lw $t2, -440($fp)
	li $t2, 1
	sw $t2, -440($fp)
label334:
	lw $t3, -64($fp)
	lw $t4, -440($fp)
	move $t3, $t4
	sw $t3, -64($fp)
	li $t5, 0
	sw $t5, -472($fp)
	li $t6, 20090
	sw $t6, -476($fp)
	li $t7, 18801
	sw $t7, -480($fp)
	lw $t1, -284($fp)
	move $t0, $t1
	sw $t0, -484($fp)
	lw $t3, -480($fp)
	lw $t4, -484($fp)
	sub $t2, $t3, $t4
	sw $t2, -488($fp)
	lw $t6, -72($fp)
	move $t5, $t6
	sw $t5, -492($fp)
	lw $t0, -488($fp)
	lw $t1, -492($fp)
	add $t7, $t0, $t1
	sw $t7, -496($fp)
	li $t2, 0
	sw $t2, -500($fp)
	li $t3, 0
	sw $t3, -504($fp)
	li $t4, 24682
	sw $t4, -508($fp)
	lw $t5, -508($fp)
	bne $t5, 0, label341
	j label340
label340:
	lw $t6, -504($fp)
	li $t6, 1
	sw $t6, -504($fp)
label341:
	li $t7, 23295
	sw $t7, -512($fp)
	lw $t0, -504($fp)
	lw $t1, -512($fp)
	blt $t0, $t1, label338
	j label339
label338:
	lw $t2, -500($fp)
	li $t2, 1
	sw $t2, -500($fp)
label339:
	lw $s0, -500($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -496($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -476($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t3, $v0
	sw $t3, -516($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t4, -516($fp)
	bne $t4, 0, label337
	j label336
label336:
	lw $t5, -472($fp)
	li $t5, 1
	sw $t5, -472($fp)
label337:
	lw $t7, -472($fp)
	li $s2, 0
	sub $t6, $s2, $t7
	sw $t6, -520($fp)
	li $t0, 0
	sw $t0, -524($fp)
	lw $t2, -20($fp)
	move $t1, $t2
	sw $t1, -528($fp)
	li $t3, 1
	sw $t3, -532($fp)
	lw $t4, -532($fp)
	lw $t5, -532($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -532($fp)
	lw $t7, -528($fp)
	lw $t0, -532($fp)
	add $t6, $t7, $t0
	sw $t6, -536($fp)
	lw $t2, -536($fp)
	lw $t1, 0($t2)
	sw $t1, -540($fp)
	lw $t3, -540($fp)
	bne $t3, 0, label343
	j label342
label342:
	lw $t4, -524($fp)
	li $t4, 1
	sw $t4, -524($fp)
label343:
	lw $t6, -64($fp)
	move $t5, $t6
	sw $t5, -544($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -544($fp)
	move $a0, $t7
	jal write
	sw $t7, -544($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -72($fp)
	move $t0, $t1
	sw $t0, -548($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -548($fp)
	move $a0, $t2
	jal write
	sw $t2, -548($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -20($fp)
	move $t3, $t4
	sw $t3, -552($fp)
	li $t5, 0
	sw $t5, -556($fp)
	lw $t6, -556($fp)
	lw $t7, -556($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -556($fp)
	lw $t1, -552($fp)
	lw $t2, -556($fp)
	add $t0, $t1, $t2
	sw $t0, -560($fp)
	lw $t4, -560($fp)
	lw $t3, 0($t4)
	sw $t3, -564($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -564($fp)
	move $a0, $t5
	jal write
	sw $t5, -564($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -20($fp)
	move $t6, $t7
	sw $t6, -568($fp)
	li $t0, 1
	sw $t0, -572($fp)
	lw $t1, -572($fp)
	lw $t2, -572($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -572($fp)
	lw $t4, -568($fp)
	lw $t5, -572($fp)
	add $t3, $t4, $t5
	sw $t3, -576($fp)
	lw $t7, -576($fp)
	lw $t6, 0($t7)
	sw $t6, -580($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -580($fp)
	move $a0, $t0
	jal write
	sw $t0, -580($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -20($fp)
	move $t1, $t2
	sw $t1, -584($fp)
	li $t3, 2
	sw $t3, -588($fp)
	lw $t4, -588($fp)
	lw $t5, -588($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -588($fp)
	lw $t7, -584($fp)
	lw $t0, -588($fp)
	add $t6, $t7, $t0
	sw $t6, -592($fp)
	lw $t2, -592($fp)
	lw $t1, 0($t2)
	sw $t1, -596($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -596($fp)
	move $a0, $t3
	jal write
	sw $t3, -596($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -20($fp)
	move $t4, $t5
	sw $t4, -600($fp)
	li $t6, 3
	sw $t6, -604($fp)
	lw $t7, -604($fp)
	lw $t0, -604($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -604($fp)
	lw $t2, -600($fp)
	lw $t3, -604($fp)
	add $t1, $t2, $t3
	sw $t1, -608($fp)
	lw $t5, -608($fp)
	lw $t4, 0($t5)
	sw $t4, -612($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -612($fp)
	move $a0, $t6
	jal write
	sw $t6, -612($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -20($fp)
	move $t7, $t0
	sw $t7, -616($fp)
	li $t1, 4
	sw $t1, -620($fp)
	lw $t2, -620($fp)
	lw $t3, -620($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -620($fp)
	lw $t5, -616($fp)
	lw $t6, -620($fp)
	add $t4, $t5, $t6
	sw $t4, -624($fp)
	lw $t0, -624($fp)
	lw $t7, 0($t0)
	sw $t7, -628($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -628($fp)
	move $a0, $t1
	jal write
	sw $t1, -628($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -20($fp)
	move $t2, $t3
	sw $t2, -632($fp)
	li $t4, 5
	sw $t4, -636($fp)
	lw $t5, -636($fp)
	lw $t6, -636($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -636($fp)
	lw $t0, -632($fp)
	lw $t1, -636($fp)
	add $t7, $t0, $t1
	sw $t7, -640($fp)
	lw $t3, -640($fp)
	lw $t2, 0($t3)
	sw $t2, -644($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -644($fp)
	move $a0, $t4
	jal write
	sw $t4, -644($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -20($fp)
	move $t5, $t6
	sw $t5, -648($fp)
	li $t7, 6
	sw $t7, -652($fp)
	lw $t0, -652($fp)
	lw $t1, -652($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -652($fp)
	lw $t3, -648($fp)
	lw $t4, -652($fp)
	add $t2, $t3, $t4
	sw $t2, -656($fp)
	lw $t6, -656($fp)
	lw $t5, 0($t6)
	sw $t5, -660($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -660($fp)
	move $a0, $t7
	jal write
	sw $t7, -660($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -20($fp)
	move $t0, $t1
	sw $t0, -664($fp)
	li $t2, 7
	sw $t2, -668($fp)
	lw $t3, -668($fp)
	lw $t4, -668($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -668($fp)
	lw $t6, -664($fp)
	lw $t7, -668($fp)
	add $t5, $t6, $t7
	sw $t5, -672($fp)
	lw $t1, -672($fp)
	lw $t0, 0($t1)
	sw $t0, -676($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -676($fp)
	move $a0, $t2
	jal write
	sw $t2, -676($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -20($fp)
	move $t3, $t4
	sw $t3, -680($fp)
	li $t5, 8
	sw $t5, -684($fp)
	lw $t6, -684($fp)
	lw $t7, -684($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -684($fp)
	lw $t1, -680($fp)
	lw $t2, -684($fp)
	add $t0, $t1, $t2
	sw $t0, -688($fp)
	lw $t4, -688($fp)
	lw $t3, 0($t4)
	sw $t3, -692($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -692($fp)
	move $a0, $t5
	jal write
	sw $t5, -692($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -260($fp)
	move $t6, $t7
	sw $t6, -696($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -696($fp)
	move $a0, $t0
	jal write
	sw $t0, -696($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -268($fp)
	move $t1, $t2
	sw $t1, -700($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -700($fp)
	move $a0, $t3
	jal write
	sw $t3, -700($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -276($fp)
	move $t4, $t5
	sw $t4, -704($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -704($fp)
	move $a0, $t6
	jal write
	sw $t6, -704($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t0, -284($fp)
	move $t7, $t0
	sw $t7, -708($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -708($fp)
	move $a0, $t1
	jal write
	sw $t1, -708($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -292($fp)
	move $t2, $t3
	sw $t2, -712($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -712($fp)
	move $a0, $t4
	jal write
	sw $t4, -712($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	li $t5, 0
	sw $t5, -716($fp)
	lw $t7, -16($fp)
	move $t6, $t7
	sw $t6, -720($fp)
	lw $t1, -720($fp)
	li $s2, 0
	sub $t0, $s2, $t1
	sw $t0, -724($fp)
	lw $t2, -724($fp)
	bne $t2, 0, label344
	j label346
label346:
	li $t3, 0
	sw $t3, -728($fp)
	lw $t5, -292($fp)
	move $t4, $t5
	sw $t4, -732($fp)
	lw $t6, -732($fp)
	bne $t6, 0, label348
	j label347
label347:
	lw $t7, -728($fp)
	li $t7, 1
	sw $t7, -728($fp)
label348:
	li $t0, 1240
	sw $t0, -736($fp)
	lw $t2, -728($fp)
	lw $t3, -736($fp)
	mul $t1, $t2, $t3
	sw $t1, -740($fp)
	li $t4, 17997
	sw $t4, -744($fp)
	li $t5, 58845
	sw $t5, -748($fp)
	lw $t7, -744($fp)
	lw $t0, -748($fp)
	add $t6, $t7, $t0
	sw $t6, -752($fp)
	lw $t1, -740($fp)
	lw $t2, -752($fp)
	bge $t1, $t2, label344
	j label345
label344:
	lw $t3, -716($fp)
	li $t3, 1
	sw $t3, -716($fp)
label345:
	lw $t4, -716($fp)
	move $v0, $t4
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t4, -716($fp)
id_e:
	subu $sp, $sp, 4
	sw $fp, 0($sp)
	move $fp, $sp
	subu $sp, $sp, 1000
	addi $s1, $fp, -16
	sw $s1, -4($fp)
	li $t5, 40132
	sw $t5, -20($fp)
	lw $t7, -20($fp)
	move $t6, $t7
	sw $t6, -24($fp)
	li $t0, 28069
	sw $t0, -28($fp)
	lw $t2, -28($fp)
	move $t1, $t2
	sw $t1, -32($fp)
	lw $t4, -4($fp)
	move $t3, $t4
	sw $t3, -36($fp)
	li $t5, 0
	sw $t5, -40($fp)
	lw $t6, -40($fp)
	lw $t7, -40($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -40($fp)
	lw $t1, -36($fp)
	lw $t2, -40($fp)
	add $t0, $t1, $t2
	sw $t0, -44($fp)
	lw $t4, -44($fp)
	move $t3, $t4
	sw $t3, -48($fp)
	li $t5, 50582
	sw $t5, -52($fp)
	lw $t6, -48($fp)
	lw $t7, -52($fp)
	sw $t7, 0($t6)
	sw $t6, -48($fp)
	lw $t1, -4($fp)
	move $t0, $t1
	sw $t0, -56($fp)
	li $t2, 1
	sw $t2, -60($fp)
	lw $t3, -60($fp)
	lw $t4, -60($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -60($fp)
	lw $t6, -56($fp)
	lw $t7, -60($fp)
	add $t5, $t6, $t7
	sw $t5, -64($fp)
	lw $t1, -64($fp)
	move $t0, $t1
	sw $t0, -68($fp)
	li $t2, 63163
	sw $t2, -72($fp)
	lw $t3, -68($fp)
	lw $t4, -72($fp)
	sw $t4, 0($t3)
	sw $t3, -68($fp)
	lw $t6, -4($fp)
	move $t5, $t6
	sw $t5, -76($fp)
	li $t7, 2
	sw $t7, -80($fp)
	lw $t0, -80($fp)
	lw $t1, -80($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -80($fp)
	lw $t3, -76($fp)
	lw $t4, -80($fp)
	add $t2, $t3, $t4
	sw $t2, -84($fp)
	lw $t6, -84($fp)
	move $t5, $t6
	sw $t5, -88($fp)
	li $t7, 55690
	sw $t7, -92($fp)
	lw $t0, -88($fp)
	lw $t1, -92($fp)
	sw $t1, 0($t0)
	sw $t0, -88($fp)
	lw $t3, -4($fp)
	move $t2, $t3
	sw $t2, -96($fp)
	li $t4, 0
	sw $t4, -100($fp)
	lw $t5, -100($fp)
	lw $t6, -100($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	add $t7, $t0, $t1
	sw $t7, -104($fp)
	lw $t3, -104($fp)
	lw $t2, 0($t3)
	sw $t2, -108($fp)
	lw $t4, -108($fp)
	bne $t4, 0, label349
	j label350
label349:
	sw $t2, -108($fp)
	li $t5, 50119
	sw $t5, -112($fp)
	lw $t7, -4($fp)
	move $t6, $t7
	sw $t6, -116($fp)
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -120($fp)
	lw $t3, -120($fp)
	li $s2, 0
	sub $t2, $s2, $t3
	sw $t2, -124($fp)
	lw $t4, -124($fp)
	lw $t5, -124($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -124($fp)
	lw $t7, -116($fp)
	lw $t0, -124($fp)
	add $t6, $t7, $t0
	sw $t6, -128($fp)
	lw $t2, -128($fp)
	lw $t1, 0($t2)
	sw $t1, -132($fp)
	lw $t3, -112($fp)
	lw $t4, -132($fp)
	beq $t3, $t4, label351
	j label352
label351:
	sw $t1, -132($fp)
label352:
label350:
	lw $t6, -24($fp)
	move $t5, $t6
	sw $t5, -136($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -136($fp)
	move $a0, $t7
	jal write
	sw $t7, -136($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -32($fp)
	move $t0, $t1
	sw $t0, -140($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -140($fp)
	move $a0, $t2
	jal write
	sw $t2, -140($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -4($fp)
	move $t3, $t4
	sw $t3, -144($fp)
	li $t5, 0
	sw $t5, -148($fp)
	lw $t6, -148($fp)
	lw $t7, -148($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -148($fp)
	lw $t1, -144($fp)
	lw $t2, -148($fp)
	add $t0, $t1, $t2
	sw $t0, -152($fp)
	lw $t4, -152($fp)
	lw $t3, 0($t4)
	sw $t3, -156($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -156($fp)
	move $a0, $t5
	jal write
	sw $t5, -156($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -4($fp)
	move $t6, $t7
	sw $t6, -160($fp)
	li $t0, 1
	sw $t0, -164($fp)
	lw $t1, -164($fp)
	lw $t2, -164($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -164($fp)
	lw $t4, -160($fp)
	lw $t5, -164($fp)
	add $t3, $t4, $t5
	sw $t3, -168($fp)
	lw $t7, -168($fp)
	lw $t6, 0($t7)
	sw $t6, -172($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -172($fp)
	move $a0, $t0
	jal write
	sw $t0, -172($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -4($fp)
	move $t1, $t2
	sw $t1, -176($fp)
	li $t3, 2
	sw $t3, -180($fp)
	lw $t4, -180($fp)
	lw $t5, -180($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -180($fp)
	lw $t7, -176($fp)
	lw $t0, -180($fp)
	add $t6, $t7, $t0
	sw $t6, -184($fp)
	lw $t2, -184($fp)
	lw $t1, 0($t2)
	sw $t1, -188($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -188($fp)
	move $a0, $t3
	jal write
	sw $t3, -188($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	li $t4, 0
	sw $t4, -192($fp)
	lw $t6, -24($fp)
	move $t5, $t6
	sw $t5, -196($fp)
	li $t7, 32246
	sw $t7, -200($fp)
	lw $t1, -196($fp)
	lw $t2, -200($fp)
	div $t1, $t2
	mflo $t0
	sw $t0, -204($fp)
	lw $t3, -204($fp)
	bne $t3, 0, label355
	j label354
label355:
	lw $t5, -4($fp)
	move $t4, $t5
	sw $t4, -208($fp)
	lw $t7, -32($fp)
	move $t6, $t7
	sw $t6, -212($fp)
	lw $t0, -212($fp)
	lw $t1, -212($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -212($fp)
	lw $t3, -208($fp)
	lw $t4, -212($fp)
	add $t2, $t3, $t4
	sw $t2, -216($fp)
	lw $t6, -216($fp)
	lw $t5, 0($t6)
	sw $t5, -220($fp)
	lw $t0, -220($fp)
	li $s2, 0
	sub $t7, $s2, $t0
	sw $t7, -224($fp)
	lw $t1, -224($fp)
	bne $t1, 0, label353
	j label354
label353:
	lw $t2, -192($fp)
	li $t2, 1
	sw $t2, -192($fp)
label354:
	lw $t3, -192($fp)
	move $v0, $t3
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t3, -192($fp)
id_ynkfBVr:
	subu $sp, $sp, 4
	sw $fp, 0($sp)
	move $fp, $sp
	subu $sp, $sp, 1000
	lw $a0, 12($fp)
	sw $a0, -8($fp)
	addi $s1, $fp, -28
	sw $s1, -12($fp)
	lw $t5, -12($fp)
	move $t4, $t5
	sw $t4, -32($fp)
	li $t6, 0
	sw $t6, -36($fp)
	lw $t7, -36($fp)
	lw $t0, -36($fp)
	li $s2, 4
	mul $t7, $t0, $s2
	sw $t7, -36($fp)
	lw $t2, -32($fp)
	lw $t3, -36($fp)
	add $t1, $t2, $t3
	sw $t1, -40($fp)
	lw $t5, -40($fp)
	move $t4, $t5
	sw $t4, -44($fp)
	li $t6, 2673
	sw $t6, -48($fp)
	lw $t7, -44($fp)
	lw $t0, -48($fp)
	sw $t0, 0($t7)
	sw $t7, -44($fp)
	lw $t2, -12($fp)
	move $t1, $t2
	sw $t1, -52($fp)
	li $t3, 1
	sw $t3, -56($fp)
	lw $t4, -56($fp)
	lw $t5, -56($fp)
	li $s2, 4
	mul $t4, $t5, $s2
	sw $t4, -56($fp)
	lw $t7, -52($fp)
	lw $t0, -56($fp)
	add $t6, $t7, $t0
	sw $t6, -60($fp)
	lw $t2, -60($fp)
	move $t1, $t2
	sw $t1, -64($fp)
	li $t3, 13616
	sw $t3, -68($fp)
	lw $t4, -64($fp)
	lw $t5, -68($fp)
	sw $t5, 0($t4)
	sw $t4, -64($fp)
	lw $t7, -12($fp)
	move $t6, $t7
	sw $t6, -72($fp)
	li $t0, 2
	sw $t0, -76($fp)
	lw $t1, -76($fp)
	lw $t2, -76($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -76($fp)
	lw $t4, -72($fp)
	lw $t5, -76($fp)
	add $t3, $t4, $t5
	sw $t3, -80($fp)
	lw $t7, -80($fp)
	move $t6, $t7
	sw $t6, -84($fp)
	li $t0, 42752
	sw $t0, -88($fp)
	lw $t1, -84($fp)
	lw $t2, -88($fp)
	sw $t2, 0($t1)
	sw $t1, -84($fp)
	lw $t4, -12($fp)
	move $t3, $t4
	sw $t3, -92($fp)
	li $t5, 3
	sw $t5, -96($fp)
	lw $t6, -96($fp)
	lw $t7, -96($fp)
	li $s2, 4
	mul $t6, $t7, $s2
	sw $t6, -96($fp)
	lw $t1, -92($fp)
	lw $t2, -96($fp)
	add $t0, $t1, $t2
	sw $t0, -100($fp)
	lw $t4, -100($fp)
	move $t3, $t4
	sw $t3, -104($fp)
	li $t5, 61002
	sw $t5, -108($fp)
	lw $t6, -104($fp)
	lw $t7, -108($fp)
	sw $t7, 0($t6)
	sw $t6, -104($fp)
	li $t0, 47607
	sw $t0, -112($fp)
	lw $t2, -112($fp)
	move $t1, $t2
	sw $t1, -116($fp)
	li $t3, 42090
	sw $t3, -120($fp)
	lw $t5, -120($fp)
	move $t4, $t5
	sw $t4, -124($fp)
	li $t6, 38457
	sw $t6, -128($fp)
	lw $t0, -128($fp)
	move $t7, $t0
	sw $t7, -132($fp)
	li $t1, 4530
	sw $t1, -136($fp)
	lw $t3, -136($fp)
	move $t2, $t3
	sw $t2, -140($fp)
label356:
	li $t4, 19046
	sw $t4, -144($fp)
	lw $t5, -144($fp)
	bne $t5, 0, label357
	j label358
label357:
	li $t6, 0
	sw $t6, -148($fp)
	li $t7, 14525
	sw $t7, -152($fp)
	lw $t1, -152($fp)
	li $s2, 0
	sub $t0, $s2, $t1
	sw $t0, -156($fp)
	lw $t2, -156($fp)
	bne $t2, 0, label359
	j label361
label361:
	lw $t4, -132($fp)
	move $t3, $t4
	sw $t3, -160($fp)
	lw $t5, -160($fp)
	bne $t5, 0, label359
	j label360
label359:
	lw $t6, -148($fp)
	li $t6, 1
	sw $t6, -148($fp)
label360:
	lw $t7, -148($fp)
	move $v0, $t7
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t7, -148($fp)
	j label356
label358:
label362:
	li $t0, 0
	sw $t0, -164($fp)
	lw $t2, -124($fp)
	move $t1, $t2
	sw $t1, -168($fp)
	lw $t3, -140($fp)
	lw $t4, -168($fp)
	move $t3, $t4
	sw $t3, -140($fp)
	lw $t6, -140($fp)
	move $t5, $t6
	sw $t5, -172($fp)
	lw $t0, -132($fp)
	move $t7, $t0
	sw $t7, -176($fp)
	lw $t2, -8($fp)
	move $t1, $t2
	sw $t1, -180($fp)
	lw $t4, -176($fp)
	lw $t5, -180($fp)
	mul $t3, $t4, $t5
	sw $t3, -184($fp)
	lw $t7, -8($fp)
	move $t6, $t7
	sw $t6, -188($fp)
	lw $s0, -188($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -184($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -172($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t0, $v0
	sw $t0, -192($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t2, -192($fp)
	li $s2, 0
	sub $t1, $s2, $t2
	sw $t1, -196($fp)
	lw $t3, -196($fp)
	bne $t3, 0, label366
	j label365
label365:
	lw $t4, -164($fp)
	li $t4, 1
	sw $t4, -164($fp)
label366:
	li $t5, 0
	sw $t5, -200($fp)
	li $t6, 18975
	sw $t6, -204($fp)
	lw $t7, -204($fp)
	bne $t7, 0, label368
	j label367
label367:
	lw $t0, -200($fp)
	li $t0, 1
	sw $t0, -200($fp)
label368:
	lw $t2, -164($fp)
	lw $t3, -200($fp)
	mul $t1, $t2, $t3
	sw $t1, -208($fp)
	lw $t4, -208($fp)
	bne $t4, 0, label363
	j label364
label363:
	sw $t0, -200($fp)
	lw $t6, -124($fp)
	move $t5, $t6
	sw $t5, -212($fp)
	li $t7, 0
	sw $t7, -216($fp)
	li $t0, 0
	sw $t0, -220($fp)
	li $t1, 52979
	sw $t1, -224($fp)
	li $t2, 58150
	sw $t2, -228($fp)
	lw $t3, -224($fp)
	lw $t4, -228($fp)
	ble $t3, $t4, label374
	j label375
label374:
	lw $t5, -220($fp)
	li $t5, 1
	sw $t5, -220($fp)
label375:
	li $t6, 39065
	sw $t6, -232($fp)
	lw $t7, -220($fp)
	lw $t0, -232($fp)
	bgt $t7, $t0, label372
	j label373
label372:
	lw $t1, -216($fp)
	li $t1, 1
	sw $t1, -216($fp)
label373:
	lw $t3, -8($fp)
	move $t2, $t3
	sw $t2, -236($fp)
	lw $t5, -236($fp)
	li $s2, 0
	sub $t4, $s2, $t5
	sw $t4, -240($fp)
	li $t6, 6244
	sw $t6, -244($fp)
	lw $t0, -240($fp)
	lw $t1, -244($fp)
	add $t7, $t0, $t1
	sw $t7, -248($fp)
	lw $s0, -248($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -216($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -212($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t2, $v0
	sw $t2, -252($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t3, -252($fp)
	bne $t3, 0, label371
	j label370
label371:
	li $t4, 17296
	sw $t4, -256($fp)
	lw $t6, -256($fp)
	li $s2, 0
	sub $t5, $s2, $t6
	sw $t5, -260($fp)
	li $t7, 0
	sw $t7, -264($fp)
	li $t0, 62360
	sw $t0, -268($fp)
	lw $t1, -268($fp)
	bne $t1, 0, label377
	j label376
label376:
	lw $t2, -264($fp)
	li $t2, 1
	sw $t2, -264($fp)
label377:
	lw $t4, -260($fp)
	lw $t5, -264($fp)
	mul $t3, $t4, $t5
	sw $t3, -272($fp)
	lw $t6, -272($fp)
	bne $t6, 0, label369
	j label370
label369:
	sw $t2, -264($fp)
label370:
	j label362
label364:
	lw $t0, -12($fp)
	move $t7, $t0
	sw $t7, -276($fp)
	li $t1, 0
	sw $t1, -280($fp)
	lw $t2, -280($fp)
	lw $t3, -280($fp)
	li $s2, 4
	mul $t2, $t3, $s2
	sw $t2, -280($fp)
	lw $t5, -276($fp)
	lw $t6, -280($fp)
	add $t4, $t5, $t6
	sw $t4, -284($fp)
	lw $t0, -284($fp)
	lw $t7, 0($t0)
	sw $t7, -288($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t1, -288($fp)
	move $a0, $t1
	jal write
	sw $t1, -288($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t3, -12($fp)
	move $t2, $t3
	sw $t2, -292($fp)
	li $t4, 1
	sw $t4, -296($fp)
	lw $t5, -296($fp)
	lw $t6, -296($fp)
	li $s2, 4
	mul $t5, $t6, $s2
	sw $t5, -296($fp)
	lw $t0, -292($fp)
	lw $t1, -296($fp)
	add $t7, $t0, $t1
	sw $t7, -300($fp)
	lw $t3, -300($fp)
	lw $t2, 0($t3)
	sw $t2, -304($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4, -304($fp)
	move $a0, $t4
	jal write
	sw $t4, -304($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t6, -12($fp)
	move $t5, $t6
	sw $t5, -308($fp)
	li $t7, 2
	sw $t7, -312($fp)
	lw $t0, -312($fp)
	lw $t1, -312($fp)
	li $s2, 4
	mul $t0, $t1, $s2
	sw $t0, -312($fp)
	lw $t3, -308($fp)
	lw $t4, -312($fp)
	add $t2, $t3, $t4
	sw $t2, -316($fp)
	lw $t6, -316($fp)
	lw $t5, 0($t6)
	sw $t5, -320($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, -320($fp)
	move $a0, $t7
	jal write
	sw $t7, -320($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, -12($fp)
	move $t0, $t1
	sw $t0, -324($fp)
	li $t2, 3
	sw $t2, -328($fp)
	lw $t3, -328($fp)
	lw $t4, -328($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -328($fp)
	lw $t6, -324($fp)
	lw $t7, -328($fp)
	add $t5, $t6, $t7
	sw $t5, -332($fp)
	lw $t1, -332($fp)
	lw $t0, 0($t1)
	sw $t0, -336($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -336($fp)
	move $a0, $t2
	jal write
	sw $t2, -336($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t4, -116($fp)
	move $t3, $t4
	sw $t3, -340($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t5, -340($fp)
	move $a0, $t5
	jal write
	sw $t5, -340($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t7, -124($fp)
	move $t6, $t7
	sw $t6, -344($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, -344($fp)
	move $a0, $t0
	jal write
	sw $t0, -344($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, -132($fp)
	move $t1, $t2
	sw $t1, -348($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t3, -348($fp)
	move $a0, $t3
	jal write
	sw $t3, -348($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t5, -140($fp)
	move $t4, $t5
	sw $t4, -352($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -352($fp)
	move $a0, $t6
	jal write
	sw $t6, -352($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	li $t7, 0
	sw $t7, -356($fp)
	li $t0, 994
	sw $t0, -360($fp)
	lw $t2, -132($fp)
	move $t1, $t2
	sw $t1, -364($fp)
	lw $t4, -360($fp)
	lw $t5, -364($fp)
	div $t4, $t5
	mflo $t3
	sw $t3, -368($fp)
	li $t6, 16383
	sw $t6, -372($fp)
	lw $t0, -368($fp)
	lw $t1, -372($fp)
	mul $t7, $t0, $t1
	sw $t7, -376($fp)
	li $t2, 0
	sw $t2, -380($fp)
	li $t3, 0
	sw $t3, -384($fp)
	li $t4, 63600
	sw $t4, -388($fp)
	lw $t6, -116($fp)
	move $t5, $t6
	sw $t5, -392($fp)
	lw $t7, -388($fp)
	lw $t0, -392($fp)
	bge $t7, $t0, label383
	j label384
label383:
	lw $t1, -384($fp)
	li $t1, 1
	sw $t1, -384($fp)
label384:
	li $t2, 18991
	sw $t2, -396($fp)
	lw $t3, -384($fp)
	lw $t4, -396($fp)
	bne $t3, $t4, label381
	j label382
label381:
	lw $t5, -380($fp)
	li $t5, 1
	sw $t5, -380($fp)
label382:
	li $t6, 0
	sw $t6, -400($fp)
	lw $t0, -12($fp)
	move $t7, $t0
	sw $t7, -404($fp)
	lw $t2, -8($fp)
	move $t1, $t2
	sw $t1, -408($fp)
	lw $t3, -408($fp)
	lw $t4, -408($fp)
	li $s2, 4
	mul $t3, $t4, $s2
	sw $t3, -408($fp)
	lw $t6, -404($fp)
	lw $t7, -408($fp)
	add $t5, $t6, $t7
	sw $t5, -412($fp)
	lw $t1, -412($fp)
	lw $t0, 0($t1)
	sw $t0, -416($fp)
	lw $t2, -416($fp)
	bne $t2, 0, label387
	j label386
label387:
	li $t3, 9692
	sw $t3, -420($fp)
	lw $t4, -420($fp)
	bne $t4, 0, label385
	j label386
label385:
	lw $t5, -400($fp)
	li $t5, 1
	sw $t5, -400($fp)
label386:
	lw $s0, -400($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -380($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	lw $s0, -376($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,12
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_PhcuYx4
	move $t6, $v0
	sw $t6, -424($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t7, -424($fp)
	bne $t7, 0, label380
	j label379
label380:
	li $t0, 0
	sw $t0, -428($fp)
	lw $t2, -132($fp)
	move $t1, $t2
	sw $t1, -432($fp)
	lw $t3, -432($fp)
	bne $t3, 0, label389
	j label388
label388:
	lw $t4, -428($fp)
	li $t4, 1
	sw $t4, -428($fp)
label389:
	lw $t6, -12($fp)
	move $t5, $t6
	sw $t5, -436($fp)
	lw $t0, -132($fp)
	move $t7, $t0
	sw $t7, -440($fp)
	lw $t1, -440($fp)
	lw $t2, -440($fp)
	li $s2, 4
	mul $t1, $t2, $s2
	sw $t1, -440($fp)
	lw $t4, -436($fp)
	lw $t5, -440($fp)
	add $t3, $t4, $t5
	sw $t3, -444($fp)
	lw $t7, -444($fp)
	lw $t6, 0($t7)
	sw $t6, -448($fp)
	lw $t1, -428($fp)
	lw $t2, -448($fp)
	add $t0, $t1, $t2
	sw $t0, -452($fp)
	lw $t3, -452($fp)
	bne $t3, 0, label378
	j label379
label378:
	lw $t4, -356($fp)
	li $t4, 1
	sw $t4, -356($fp)
label379:
	lw $t5, -356($fp)
	move $v0, $t5
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t5, -356($fp)
id_Eg:
	subu $sp, $sp, 4
	sw $fp, 0($sp)
	move $fp, $sp
	subu $sp, $sp, 1000
	li $t6, 38196
	sw $t6, -4($fp)
	lw $t0, -4($fp)
	move $t7, $t0
	sw $t7, -8($fp)
	li $t1, 0
	sw $t1, -12($fp)
	lw $t3, -8($fp)
	move $t2, $t3
	sw $t2, -16($fp)
	lw $t5, -8($fp)
	move $t4, $t5
	sw $t4, -20($fp)
	lw $t6, -16($fp)
	lw $t7, -20($fp)
	bne $t6, $t7, label392
	j label391
label392:
	li $t0, 47060
	sw $t0, -24($fp)
	lw $t1, -24($fp)
	bne $t1, 0, label390
	j label391
label390:
	lw $t2, -12($fp)
	li $t2, 1
	sw $t2, -12($fp)
label391:
	lw $s0, -12($fp)
	subu $sp, $sp, 4
	sw $s0, 0($sp)
	li $v1,4
	subu $sp, $sp, 4
	sw $v1, 0($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_ynkfBVr
	move $t3, $v0
	sw $t3, -28($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	lw $t5, -8($fp)
	move $t4, $t5
	sw $t4, -32($fp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t6, -32($fp)
	move $a0, $t6
	jal write
	sw $t6, -32($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	li $t7, 60274
	sw $t7, -36($fp)
	lw $t0, -36($fp)
	move $v0, $t0
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t0, -36($fp)
main:
	subu $sp, $sp, 4
	sw $fp, 0($sp)
	move $fp, $sp
	subu $sp, $sp, 1000
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal id_Eg
	move $t1, $v0
	sw $t1, -4($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $v1, 0($sp)
	addi $sp, $sp, 4
	add $sp, $sp, $v1
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t2, -4($fp)
	move $a0, $t2
	jal write
	sw $t2, -4($fp)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	li $t3, 0
	sw $t3, -8($fp)
	lw $t4, -8($fp)
	move $v0, $t4
	addi $sp, $sp, 1000
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	sw $t4, -8($fp)
