#jim gildersleeve
#brian suchy

# File:        exception.asm
# Written by:  J.P. Mellor, 15 Sep. 2004
#
# This file demonstrates exception handling in mips
				
	.globl main		# Make main globl so you can refer to
					# it by name in SPIM.


	.text			# Text section of the program
				# (as opposed to data).

main:				# Program starts at main.

	li  	$t0, 0x7FFFFFFF	# a big number

	ori $t3, $0, 1  #saving tmp 1
	sw $t3, try		#ima try this out

	addi	$t1, $t0, 2	# make it overflow

	li  	$t0, 0x7FFFFFFF	# a big number

	ori $t3, $0, 1  #saving tmp 1
	

	addi	$t1, $t0, 2	# make it overflow
	
	ori 	$v0, $0, 10	# Prepare to exit
	syscall			#   ... Exit.

