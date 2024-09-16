# Exercise 3
# Max Score: 12 points
.data	
list1:		.word		3, 9, 1, 2, 6, 3, -4, -7, -8, 4, -2,  8, 7, 6
.text 		# list1 is an array of integers storing the given sequence of values	 
.globl	tomato
tomato: 
addi	$sp, $sp, -8       #make space on stack pointer
addi	$t0, $a0, -1       #t0=8
sw  	$t0, 0($sp)        #store t0 on stack
sw  	$ra, 4($sp)        #save return address on stack
bne 	$a0, $zero, orange   #comparison, if a0 is not equal to zero go to orange
li  	$v0, 0             #if a0 is zero set vo to 0
addi	$sp, $sp, 8        #deallocate stack space
jr 	$ra                 #back to main
orange:   
move  $a0, $t0            #restore a0 to its previous value 
jal   	tomato 	  #recursively call tomato
lw    	$t0, 0($sp)   #load value of a0 from stack
sll	$t1, $t0, 2  	  #convert index from bytes to words
add   	$t1, $t1, $a1     
lw    	$t2, 0($t1)       
add   	$v0, $v0, $t2     
lw    	$ra, 4($sp)                
addi 	$sp, $sp, 8        
jr 	$ra                  #back to main
# main function starts here                                            						
.globl main
main:	
    addi	$sp, $sp, -4	# Make space on stack
	sw	$ra, 0($sp)	# Save return address
	la	$a1, list1	# a1 has the base address pointing to the first 
# element of the “list1” array declared in .data section above
	li	$a0, 9		# loads the immediate value into the destination register
	jal	tomato	
return:	
li	$v0, 0			# Return value
	lw	$ra, 0($sp)		# Restore return address
	addi	$sp, $sp, 4		# Restore stack pointer
	jr 	$ra			# Return
# Step through this code in your simulator and monitor the register values. 
# What does the tomato function do?   
# Write your answer HERE: Computes sum of elements in list starting on first element until 9th element on list (8th element of array=-8) so final sum is 5
