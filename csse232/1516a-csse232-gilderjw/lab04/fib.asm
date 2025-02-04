#jim Gildersleeve
#brian suchy

#**********************************************************************
#  CSSE 232: Computer Architecture
#
#  File:     fib.asm
#  Written:  1/5/00, JP Mellor
#  Modified: 12/11/08, JP Mellor
#
# This file contains a MIPS assembly language program that calls a
# recursive procedure fib which calculates Fibonacci numbers.
#
#**********************************************************************

        .globl main
        .globl Start
        .globl Okay
        .globl Again
        .globl ExitMain

        .data
prompt:         .asciiz "Input a non-negative integer => "
prompt2:        .asciiz "Do you wish to try another? (1/0) "
message:        .asciiz "Fibonacci number "
message2:       .asciiz " is: "
newline:        .asciiz "\n"
error:          .asciiz "The integer must be non-negative\n"
        
#----------------------------------------------------------------------
#   Frame is 4 words long, as follows:
#     -- previous s0
#     -- previous ra
#     -- empty
#     -- empty
#
#   Arguments:
#     none
#
#   Returns:
#     none
#
#   Register allocations:
#    $s0 - n
#    $t0 - temp storage for fib(n)
#
#   asks user for number n and gives n to fib
#----------------------------------------------------------------------

        .text

main:
        sub     $sp, $sp, 16    # Create a 4-word frame.
        sw      $ra, 4($sp)     # Save $ra
        sw      $s0, 0($sp)     # Save $s0

#----------------------------------------------------------------------
#       Read an integer
#----------------------------------------------------------------------

Start:  la      $a0, prompt     # load address of prompt
        li      $v0, 4          # use system call to
        syscall                 # print prompt
        li      $v0, 5          # use system call for reading
        syscall                 # an integer n
        move    $s0, $v0        # Copy integer n into $s0

#----------------------------------------------------------------------
#       Check if the integer is in bounds
#----------------------------------------------------------------------

        slt     $t0, $s0, $zero # check if n is negative
        beq     $t0, $zero, Okay # if non-negative, calc fib(n)
        la      $a0, error      # load address of prompt
        li      $v0, 4          # use system call to
        syscall                 # print error mesage
        j       Again

# ---------------------------------------------------------------------
#   Execute the fib procedure.
# ---------------------------------------------------------------------

Okay:   move    $a0, $s0        # Pass n to
        jal     fib             #       fib
        move    $t0, $v0        # save result
        la      $a0, message    # load address of message
        li      $v0, 4          # use system call to
        syscall                 # print message
        move    $a0, $s0        # n
        li      $v0, 1          # use system call to
        syscall                 # print n
        la      $a0, message2   # load address of message2
        li      $v0, 4          # use system call to
        syscall                 # print message2
        move    $a0, $t0        # fib(n)
        li      $v0, 1          # use system call to
        syscall                 # print fib(n)
        la      $a0, newline    # load address of newline
        li      $v0, 4          # use system call to
        syscall                 # print newline
        la      $a0, newline    # load address of newline
        li      $v0, 4          # use system call to
        syscall                 # print newline
        
# ---------------------------------------------------------------------
#   Do it again?
# ---------------------------------------------------------------------

Again:  la      $a0, prompt2    # load address of prompt2
        li      $v0, 4          # use system call to
        syscall                 # print prompt2
        li      $v0, 5          # use system call for reading
        syscall                 # an integer
        move    $t0, $v0        # save response
        la      $a0, newline    # load address of newline
        li      $v0, 4          # use system call to
        syscall                 # print newline
        bne     $t0, $zero, Start # do it again.

# ---------------------------------------------------------------------
#   Exit the main procedure.
# ---------------------------------------------------------------------

ExitMain:
        lw      $ra, 4($sp)     # Restore $ra
        lw      $s0, 0($sp)     # Restore $s0
        add     $sp, $sp, 16    # Undo the 4-word frame.
        jr      $ra             # Return


        .globl fib

#----------------------------------------------------------------------
#   Procedure: fib
#       
#   Frame is 4 words long, as follows:
#     -- empty
#     -- previous ra
#     -- previous s1
#     -- previous s0
#
#   Arguments:
#     $a0 - n
#
#   Returns:
#     $v0 - fib(n)
#
#   Register allocations:
#     $s0 - n
#     $s1 - fib(n-1)
#
#----------------------------------------------------------------------

        .text



fib:
	beq $a0, $0, zero 	#special case for 0
	ori $t0, $0, 1	 	#temp value 1 in $t0
	beq $a0, $t0, one	#special case for 1

	add $sp, $sp, -16	#grab 4 words in stack
	sw $ra, 8($sp)		#store old $ra onto stack
	sw $s0, 12($sp)		#store old s0 onto stack

	addi $s0, $s0, -1 	#decrement counter
	ori $a0, $s0, 0		#change parameter
	jal fib 		#recall self

	sw $v0, 4($sp)		#store return of fib(n-1) onto stack

	addi $s0, $s0, -1 	#decrement counter
	ori $a0, $s0, 0		#change parameter
	jal fib 		#recall self for fib(n-2)
	lw $t2, 4($sp)		#store fib(n-1) into $t2
	add $v0, $v0, $t2	#add and return fib(n-1)+fib(n-2)

	lw $ra, 8($sp)		#restore $ra
	lw $s0, 12($sp)		#restore old s0
	addi $sp, $sp, 16	#give stack back
	j end
zero:
	ori $v0, $0, 0 	#return 0
	j end
one:
	ori $v0, $0, 1	#return 1
end:	
	jal $ra






#
# Insert your code here
#

