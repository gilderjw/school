#jim Gildersleeve
#Brian Suchy

#**********************************************************************
#   CSSE 232: Computer Architecture
#
#   File:    p6.asm
#   Written: 3/9/97, Rimli Sengupta
#   Modified by:  J.P. Mellor, 6 Sep. 2004
#
# This file contains a MIPS assembly language program that uses only the
# instructions introduced in p1.asm, p2.asm, p3.asm, p4.asm and p5.asm.
#
# It also takes advantage of several spim syscalls and the assembly
# directive .asciiz
#
#**********************************************************************

	.globl	main
	.globl	V


	.data

V:	.word   20, 56, -90, 37, -2, 30, 10, -66, -4, 18
N:	.word	10
message:	.asciiz "Rotated array: "
sep:	.asciiz " "
newline:	.asciiz "\n"

#**********************************************************************

	.text

main:	

	
#----------------------------------------------------------------------
# 	Rotate the array
#----------------------------------------------------------------------

#


# Insert your code here
#
	la $s0, V 			#assign $s0 to the beginning of V
	lw $t0, N 			#assign $t0 the upper bounds of array
	addi $t0, $t0, -1 	#loop one less time
	addi $t1, $0, 0 		#set $t1 to the index that we are working on
	lw $t3, ($s0) 		#assign $t3 to the first element in array

 
yolo:
	beq $t1, $t0, swag  #if $t1 = N dip out brah
	addi $t1, $t1, 1	#increment i
	sll $t2, $t1, 2	    #assign $t2 to our offset
	add $t2, $t2, $s0	#assign $t2 to address
	lw $t4, ($t2)			#load the next item
	sw $t3, ($t2)			#store current item into next item's spot

	ori $t3, $t4, 0		#place next item into the current item register

	j yolo


swag:

	sw $t3, ($s0)		#place last final element at start of array
#----------------------------------------------------------------------
# 	Print the rotated array
#----------------------------------------------------------------------

	la	$t1, N		# load the address of N
	lw	$t1, 0($t1)	# load the value of N
	sll	$t1, $t1, 2     # multiply by 4
	la	$a0, message	# store pointer to message
	li	$v0, 4		# use system call to
	syscall			# print message
	li	$t0, 0		# initialize the index
loop2:	lw	$a0, V($t0)	# store next element
	li	$v0, 1		# use system call to
	syscall			# print the min
	la	$a0, sep	# store pointer to sep
	li	$v0, 4		# use system call to
	syscall			# print sep
	add	$t0, $t0, 4	# increment the index
	bne	$t0, $t1, loop2	# check if we've printed all the elements
	la	$a0, newline	# store pointer to a new line
	li 	$v0, 4		# use system call to
	syscall			# print new line

# --------------------------------------------------------------------
#   Exit 
# ---------------------------------------------------------------------

	li	$v0, 10		# use system call to
	syscall			# exit

