# Exercise 3
# Max Score: 12 points
.data	
list1:		.word		3, 9, -1, 0, 6, 5, -4, -7, -8,  
list2:		.word		9, 5, 0, 3, -4, 5, 6, -7, 8, 9, 
.text
.globl	tomato
tomato: 
addi	$sp, $sp, -8       #make space on stack pointer
addi	$t0, $a0, -1       #t0=7
sw  	$t0, 0($sp)        #store the value of t0 into top of stack
sw  	$ra, 4($sp)        #save return address on stack
bne 	$a0, $zero, orange   #comparison, if a0 is equal to 0 then orange executes 
li  	$v0, 0             #once a0 is not zero then set v0 to 0 
addi	$sp, $sp, 8        #deallocate stack space
jr 	$ra                #return to main

orange:   
add  $a0, $0, $t0     #restore value of a0 to t0=7 
jal   tomato 		#go to tomato
lw    $t0, 0($sp)  	#load value of to from stack
sll	$t1, $t0, 2     #convert index from bytes to words
add   $t1, $t1, $a1     #compute address in list by adding offset 
lw    $t2, 0($t1)	#load value at computed address into t2
slt   $t3, $t2, $a2	#set t3 to 1 if t2 < a2
bne   $t3, $0, carrot     #comparison, if t3 is equal to 0 then carrot executes
add   $v0, $v0, $t2 	#if t2 < a2 then add t2 to v0

carrot:    
lw    $ra, 4($sp)                #restore return address from stack
addi 	$sp, $sp, 8        		#deallocate stack space
jr 	$ra                      	#return to main
########################################################################
.globl	test
test:	
addi	$sp, $sp, -4	# Make space on stack
sw	$ra, 0($sp)		# Save return address
jal	tomato		# call function
lw	$ra, 0($sp)		# Restore return address
addi	$sp, $sp, 4		# Restore stack pointer
jr 	$ra			# Return
########################################################################
# main function starts here                                            #
.globl main
main:	addi	$sp, $sp, -4	# Make space on stack
	sw	$ra, 0($sp)		# Save return address
	la	$a1, list2	
	li	$a0, 8
      li    $a2, 5		
	jal	test		
# What is the value of $v0 at this point? (v0)= 25        #
	la	$a1, list1	
	li	$a0, 13		
	jal	test		
# What is the value of $v0 at this point?	(v0) = 34       #
# What does this code compute? Your answer HERE: This code computes the sum of elements in the list that are less than a2(5) for both lists #
#For list2 it starts addition from first element until element 8 (-7) and for list1 it starts addition from first element until element 13 which means it jumps to list2 to complete function
return:	
li	$v0, 0		# Return value
	lw	$ra, 0($sp)		# Restore return address
	addi	$sp, $sp, 4		# Restore stack pointer
	jr 	$ra			# Return	
