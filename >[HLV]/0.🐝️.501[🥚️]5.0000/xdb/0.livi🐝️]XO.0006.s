
#🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️
#when u are able to optionally parse 16mux8 and do io (2riscv/arm and x86self). this code will be BEEST
#also its transferable 2 other archs, forever. 
#take ur time , u will get there quicker than u think
#comign from tokngn, i can vouce for this , took much longer
#2 learn asm than 2 code the engin
#🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️
#🧼️2do
#📆️may9]0.take file in from cli/bash only>go fast
#>[]


.section .data

#######CONSTANTS########
#system call numbers
    .equ SYS_OPEN, 2
    .equ SYS_WRITE, 1
    .equ SYS_READ, 0
    .equ SYS_CLOSE, 3
    .equ SYS_EXIT, 60
    
     .equ ST_FD_OUT, 56
     
       .equ O_RDONLY, 0
    .equ O_CREAT_WRONLY_TRUNC, 03101
#standard file descriptors
    .equ STDIN, 0
    .equ STDOUT, 1
    .equ STDERR, 2
        .equ END_OF_FILE, 0  #This is the return value
                         #of read which means we’ve
                         #hit the end of the file
    .equ NUMBER_ARGUMENTS, 2
    #______________________
    
 
ascii_16_test_0:
.ascii "xxxxXXXXyyyyYYYY"
    
ascii_8_prog_0:
.ascii "12345678"

      #🧹️TEMT🧹️
     ascii_8_test_0:        #ascii_8_prog_0:(mt)
     .ascii "xxxxxxxx"
     ascii_8_test_0_end:
.equ ascii_8_test_0_len, ascii_8_test_0_end - ascii_8_test_0
    #🧹️TEMT🧹️

#🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️
#*******"REGISTARS"*******
#__________PROG_16.4x4
#🗡️🗡️🗡️🗡️🗡️🗡️🗡️🗡️🗡️🗡️🗡️🗡️🗡️🗡️🗡️🗡️🗡️🗡️
#theres no header, im not gonna delete it right now and break prog. but will swap 4 out l8r
ascii_4_head:   #header
.ascii "0000"


ascii_4_a:
.ascii "0000"

ascii_4_b:
.ascii "0000"

ascii_4_i:
.ascii "0000"

ascii_4_outcode:
.ascii "0000"



ascii_4_test_0:
.ascii "same"     #"tes0"

ascii_4_test_1:
.ascii "same"   #"tes1"
#__________PROG_16.4x4
####
#--------------=====output tail or full as log 2 prove u have
ouput_4_0:
.ascii "0000"

#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️
ascii_8_a:
.ascii "........"

ascii_8_b:
.ascii "........"

ascii_8_c:
.ascii "........"

ascii_8_d:
.ascii "........"
#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️#🧼️
#🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️🪣️
#⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️
#🤺️
token_prog_0:
.ascii "0000"
#🤺️
token_test_prog_0:
.ascii "01!A"  "alpha bet for output registers...?4 now?"
		#using o for now cuz only 1 out w/e tho
		#not the biggest issue
#🤺️
token_array_multi_chip_0:
.ascii "10&aa1&bab!c"   #should we use "o" or "abc" not sure
#🤺️

#######this is for the actuall binary in.
token_array_16_2_4_0:
.ascii "0000"
#🤺️


#🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️
ram_4_0:
.ascii "0000" 
###################################
ram_16_0:
.ascii "0000\0000\0000\0000" 
# "." ? = space 4 last period? 🐑️<try count 1rst
ram_32_0:
.ascii "...............................x"  
# "." ? 🐑️
ram_64_0:
.ascii "................................................................"
#.ascii #"0000000000000000000000000000000000000000000000000000000000000000"
#.ascii #"________________________________________________________________"

ram_128_0:
.ascii "................................................................................................................................"

ram_128_v_0:
.ascii "................................................................................................................................"



ram_256_0:
.ascii "................................................................................................................................................................................................................................................................"


ram_64_history_0:
.ascii "................................................................"



ram_64_v_0:
.ascii "................................................................"


ram_64_v_history_0:
.ascii "................................................................"

ram_64_t_0:
.ascii "................................................................"


#👹️ just assume 4 bits. prog end? worry bout it when u get there

#🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️🐏️
#⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️
#➕️
#🎛️🎛️🎛️🎛️🎛️PRE-EQ (these should just be ascii compares...
	.equ reg_a  , 1000 
	.equ reg_b  , 1000
  	.equ inst , 10
  	.equ out , 0
  	.equ car , 0
  	#🎛️🎛️🎛️🎛️🎛️
  	#🎛️EQ
   .equ lo , 0b0000  # 0b0000 ? YES the only way m8
   .equ hi , 0b0001 
   #!!!!!!!!!!!!!!!!!!
   .equ not , 0b0100  #0b0100 
   
   	      #32     
   .equ not, 0b100001 #=33'!' #trying trix 4 "2nots"
   			#i seen in some dissasemblys
			#hope it uses first for (calls 2 ;)
			
	#.equ not # = 241 w/0 - 48 ... why?
	#NO the symbol is #1 but i guess thats alt
	#however 8bits only goes up 2 "127" so... naw...
			
   #!!!!!!!!!!!!!!!!!!!!!!
   #@@@@@@@@@@@@@@@@@@@@@@
   .equ nand , 0b0110 	  		
   .equ nand , 0b1000000 #=64'@' 
   #@@@@@@@@@@@@@@@@@@@@@@
   #---------------
   	
   .equ jno , 0b0010  #jo(for4bit) #cmp? sub? or w/e we need
   
   .equ jno , 0b101000 #= 40'('
   
   .equ jne , 0b0011  #jb? add ? (SHIFT LEFT ? RIGHT?) (ele) 
 .equ jne , 0b101001
   ########------3limit end
   .equ shl , 0b1000
   .equ shr , 0b1001
   #🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️🎛️
   #🧱️
 .equ out_kode , 0b1010  #=10 (og out kode ) 
.equ out_kode ,   0b1001111  #=79 'O'
.equ karry_kode , 0b1011
.equ karry_kode , 0b1001011  #=75 'K'
#🧱️
#should !& binary just be value of "ascii? (no not gonna fit) 15.bits 
#unless u do 127 but i rather have relevant 4 2 8bit conversion for HDL tbh fam 8bit is ez.(alredy don) 
# https://commons.wikimedia.org/wiki/File:ASCII-Table.svg

#ie before u push the "token" ask if its "same number as (decided token revalue)(
#🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️(grab from macrospec when ur ready)


  #\\\\\\\\\\\\\\\\\\\\\\\\\\\  
newline_out:
.ascii "\n"

ascii_sing:
.ascii "."

sing_test:
.ascii "엘"

err_msg_0:
.ascii "📊️'Please Review Process'\n"  #aka abortive process/attempt
     err_msg_0_end:
.equ err_msg_0_len, err_msg_0_end - err_msg_0

#\\\\\\\\\\\\\\\\\\\\\\\\\\\



#.section .text


#-----------------
  #-------------------------
    .section .bss
    .equ BUFFER_SIZE, 15000
    .lcomm BUFFER_DATA, BUFFER_SIZE    
    #--------------------------
.section .text #not having this caused SEGFAULT ! watch 4 🔭️
#➕️
# file name 
.equ ST_LOG_OUT_0 , 64
.equ ST_LOG_OUT_1, 72
.equ ST_LOG_OUT_2, 80 #log out 8 bit 1  2 other first
#➕️

#STACK POSITIONS
    .equ ST_SIZE_RESERVE, 16 #i dont see a use 4 this
    			#but will keep eyes peeled
    			#as i go thru 1 by 1...
    .equ ST_FD_IN, 48 # i made these pos, keep an eye on that.
    .equ ST_FD_OUT, 56
    #u must add 16 to all these u simply must
    .equ ST_ARGC, 16#0      #Number of arguments
    .equ ST_ARGV_0, 24 #8   #Name of program
    .equ ST_ARGV_1, 32 #16   #Input file name
    .equ ST_ARGV_2, 40   #Output file name
    
    #⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️
    #⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️
    
        #➕️
filename_in:
    .ascii "?.hvl\0"
    filename_out:
    .ascii "out.yr\0"
    logname_out:
    .ascii "log.out.txt\0"
#➕️

#🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️
#✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️
#✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️
#✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️✡️
#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️
.globl _start
_start:
mov  %rsp, %rbp

call sys_in
call sys_out
#🎖️
call load_buff #puts buff in BUFF_DATA nothign fancy 
#call ruof_edit 



#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️

		
call buffer_comment_0
call buffer_stripper_0
#📍️📍️📍️📍️📍️📍️📍️
#call buffer_to_ram_64   #64-2-64 for now? bigger or smaller should be ez
call a2b_1
call ascii_newline
call ascii_sing_out
call ascii_newline
call ascii_newline

#🖨️🖨️🖨️🖨️🖨️🖨️🖨️🖨️🖨️🖨️🖨️
call print_buff
call ascii_newline
#🔋️🔋️🔋️🔋️🔋️🔋️🔋️🔋️🔋️🔋️🔋️

#call ascii_64_v_out #⚡️
#call ascii_newline 

call ascii_128_v_out #⚡️
call ascii_newline 


call ascii_64_out
call ascii_newline



call print_err_0
call ascii_newline

#🖨️🖨️🖨️🖨️🖨️🖨️🖨️🖨️🖨️🖨️🖨️


#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️

################


call ascii_newline

call exit
#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️
 
#🏁🏁🏁🏁🏁
exit: 
mov $1, %rax

#mov $201, %rbx# this is the status number we will

int $0x80# this wakes up the ker
#🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁

#🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️

#🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️

#🗓️
#🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️
 .equ a_sum , 40
 .equ b_sum , 48
 .equ e_sum , 56  #this breaks everything for some reason...
 .equ d_sum , 64
 
 .equ c_sum , 72
 
   .equ test_pos_0_0 , 16
 .equ test_inc_1_1 , 24
 .equ test_sum_2_2 , 32
 #🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️🐝️
#########################################
#🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️


#🥼️🥼️🥼️🥼️🥼️🥼️🥼️#🥼️🥼️🥼️🥼️🥼️🥼️🥼️#🥼️🥼️🥼️🥼️🥼️🥼️🥼️
.globl a2b_1   #GODL = TOKENIZATION ⚔️⚔️⚔️⚔️
		#we will tokenize inst for now , then do full prog
		#⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️
a2b_1:
 pushq %rbp 
    movq  %rsp, %rbp
#_________________________
 start_test_a2b_1:  
 

 ###########
  

  mov $BUFFER_DATA, %r8  #✅️do not change this! 
  movq $ascii_sing, %r9 #❌️temp , dont need 
 mov $0,%r10   #❌️ counts up till abcd_ (then clear till next loop
 
 
  mov $0 , %r11 # ram-stack count
 #movq $ram_64_v_0, %r12 #header goes first , ez
 movq $ram_128_v_0, %r12 #
   	 movq $ram_64_0, %r13
 
 mov $0,%r14  #✅️ do not change this is counting entire buffer
 movq $ram_32_0, %r15#✅️ #is our "a2b STACK < DONT
 #➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️💍️
 ################
  
    movq  $0, %r14
  mov  $7, %rdi  #❌️
    ######################################

   start_reverse_ascii_in_only_1: 
   mov (%r8,%r14,1) ,%al 
   mov %al , (%r15,%rdi,1) 

    cmp  $'0', %al #0 #low
    jl   end_a2b_1   # push_program_tokens_2 #next_byte
    cmp  $'5' , %al #127 #his+
    jg   end_a2b_1   #  push_program_tokens_2 
  
   
   
  	 dec %rdi #
    inc %r14  
cmp $-1 , %rdi
   jne start_reverse_ascii_in_only_1
   ########################
 	mov $0 , %rdi
 	######################
 	
 	
 		 #➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️
 mov $0, %rbx#4 debuggin only
 movq $'0', test_pos_0_0(%rbp)
  movq $0, test_inc_1_1(%rbp) #using rdi cuz ()placements need it
   movq $0, test_sum_2_2(%rbp)
   
 	######################
 	 test_loop_a2b_1: #strip and load loop 
mov  (%r15,%rdi,1) , %al 

 movb %dil ,%cl
   shl %cl, %al  #🧑‍🚀️dec from 8 
   addb   %al , test_sum_2_2(%rbp)
   


   inc %rdi
   
 #pop -8(%rsp)   #u should be using iterator(shl) so this is ok <3
 cmp $8, %rdi
 jne test_loop_a2b_1
 #######################################
 mov $7 , %rdi	  #this was literally the problem!❗️
 	######################
 	 #######################################
 	 
 	# mov   test_sum_2_2(%rbp) , %rbx
#call exit 

 #why does this add twice? 	 
 	 
 addw $'0' , test_sum_2_2(%rbp)
 mov test_sum_2_2(%rbp) , %al 
  add $'0' , %al # "number is ascii , not gonna show as digidec🚨️
 mov %rax, (%r9,%rbx,1) #⚔️we dont actually need "OUT'


######################
 	 store_result_1: 

 store_result_a:
 cmp $0 , %r10 
 jne store_result_b
 	movb %al , d_sum(%rbp)
 	#mov %rax, %rbx #❌️
 	#call exit	#❌️#❌️ = 51 / 3 
 	#jmp 	end_a2b_1#❌️
 	jmp end_store_result_1
 store_result_b:
 
	 cmp $1 , %r10 
 	 jne store_result_c
 	movb %al , c_sum(%rbp)
 	#mov %rax, %rbx #❌️
 	#call exit	#❌️
 	#jmp 	end_a2b_1#❌️
 	jmp end_store_result_1
  store_result_c:	
 	 cmp $2 , %r10 
 	 jne store_result_d
 	movb %al , a_sum(%rbp) #❌️
 #	mov %rax, %rbx #❌️
 #	call exit
 	#jmp 	end_a2b_1#❌️
 	
 jmp end_store_result_1
 
 
  store_result_d:	
 	 cmp $3 , %r10 
 	 jne end_store_result_1
 	movb %al , b_sum(%rbp)

 	#mov %rax, %rbx #❌️
 	#call exit	#❌️
 	#jmp 	end_a2b_1#❌️
 	
 

 #######################################
end_store_result_1:
 	
 	#mov %al ,(%r10,%r10,1)  #goes in backwards! (its ok debug)
 	inc %r10   #loop 4 4 fill, can reuse when 4 is full
 	cmp $4 , %r10 #4 is 2 much
 	jne  start_reverse_ascii_in_only_1
############################################
mov $0,  %r10 
#abcd_sum are all stored, you can transplant logic now
#

#🖨️
					#🗡️ new order
mov d_sum(%rbp) , %dl 		#was 'a'	#🗡️ header (ignore)							
mov c_sum(%rbp),    %cl 	#was 'b'##🗡️ instruction 
mov a_sum(%rbp)  ,  %al  # wasinstruction   #🗡️ input _ a 
mov b_sum(%rbp) , %bl #output##🗡️ input _ b 

#🖨️can u just output these values right 2 cli so i can see them?
#at least a&b 
#✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️
#################################
#⚡️🐏️⚡️🐏️⚡️🐏️⚡️🐏️⚡️🐏️⚡️🐏️⚡️🐏️
 #⚡️🐏️# mov $0 , %r11 # ram-stack count
#⚡️🐏️#  movq $ram_64_v_0, %r12 #header goes first , ez
#⚡️🐏️#    movq $ram_64_0, %r13  #⚡️🐏️
  #⚡️🐏️⚡️🐏️⚡️🐏️⚡️🐏️⚡️🐏️⚡️🐏️⚡️🐏️
#################################


#🪱️##🪱️##🪱️#
 
scoop_wr_d_2_vi: 
cmp $'_', %rdx
je end_scoop_wr_d_2_vi


match_head_tail_dab_2_vi:  
		
		
	#mov %rdx , %rbx
  	#call exit
  	
match_head_tail_d_2_vi:	
	
	cmp  $'A', %dl
    jl    end_scoop_wr_d_2_vi  # or a to b in this case 
    cmpb  $'z', %dl     #test lower z with "%dh+"]ON (dh=off)
    jg    end_scoop_wr_d_2_vi
    
  # mov %rdx , %rbx
  	#call exit
  
 match_head_tail_a_2_vi: 
  cmp_a_blank_2_vi:
 cmp  $'_', %al
 jne pre_rdx_2_vi
 
 cmp_b_blank_2_vi:
 cmp  $'_', %bl
 jne pre_rdx_2_vi
 
 mov $'_' , %dl  # deleting bad wiring w/e 
 
 jmp end_scoop_wr_d_2_vi


 #🐴️
 pre_rdx_2_vi: 

 movb %dl , %sil 
 sub $65 , %sil
 
 stor_rax_wr_2_vi: 
 cmp $'_' , %al 
 je stor_rbx_wr_2_vi
 mov %al , (%r12,%rsi,1) 
 mov $'_' , %rax
 jmp end_scoop_wr_d_2_vi


##################
 stor_rbx_wr_2_vi: 

   cmp $'_' , %bl 
 je end_scoop_wr_d_2_vi
 
 #mov %r10 , %rbx
 #call exit
 mov %bl , (%r12,%rsi,1) 
 mov $'_' , %rbx
     #vom 
     
      
 
end_scoop_wr_d_2_vi:
#🪱️##🪱️##🪱️#
#👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️👖️
patch_drop_ab_2_vi:

#dec %r11  #u may want this after logic but 
 	#when im debuging it pre everythign it decs 2 far bac <3


 ############DEBUG#############
  
  post_logic_check_d_2_vi:
 cmp  $'_', %rdx
  je post_logic_check_c_2_vi
  mov %dl, (%r13,%r11,1) 
  
#  mov %dl, (%r12,%r11,1) #debuging wire
 inc %r11
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 post_logic_check_c_2_vi:
cmp  $'_', %rcx
  je end_patch_drop_ab_2_vi
mov %cl, (%r13,%r11,1) 	
  inc %r11
  ############################

end_patch_drop_ab_2_vi:

post_logic_check_ab_2_vi:  
	post_logic_check_a_2_vi:
	
 cmp  $'_', %rax
  je post_logic_check_b_2_vi
mov %al, (%r13,%r11,1) 
  inc %r11
 
  post_logic_check_b_2_vi:
  
  
 cmp  $'_', %rbx
  je end_post_logic_check_ab_2_vi
  mov %bl, (%r13,%r11,1) 
 inc %r11

#🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️
end_post_logic_check_ab_2_vi:

#✂️✂️✂️✂️✂️✂️#🪱️
		loop_if_2_vi:
         #🎖️
      #  cmp %rsi, %r9 # count vs buffsize
   
      # jne push_program_tokens_2
      
     jmp  start_reverse_ascii_in_only_1  
 #____________________________
 #____________________________
    end_a2b_1:
 popq  %rbp
    ret 

#🥼️🥼️
    
    
    
    #❎️#❎️#❎️#❎️#❎️#❎️#❎️#❎️#❎️#❎️#❎️
    #❎️#❎️#❎️#❎️#❎️#❎️#❎️#❎️#❎️#❎️#❎️
 

#🥼️🥼️
#🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️

 
#____________________________________⚔️🩸️🩸️🩸️🩸️🩸️🩸️🩸️🩸️🩸️
.globl token_logic_2
token_logic_2:
 pushq %rbp 
    movq  %rsp, %rbp
    #_________________________
 start_token_logic_2:  
#################################
  mov $BUFFER_DATA, %r8
    mov $BUFFER_SIZE, %r9
    ####################################

   			#or swap sing 4 64 out and see what happens < THIS 	
   	 
   	 
   ########
mov $0 , %r10 # vram-stack 
mov $0 , %r11 # ram-stack count

movq $ram_64_v_0, %r12 #header goes first , ez
   	 movq $ram_64_0, %r13
   	 
   	  movq $ram_64_t_0, %r14   #will worry about names later. duh
   	 mov $0, %r15 # t-stack , count
   	 

#i may need %r11 freed up , y isn't it? 
 
 ############################################
 

 #➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️💍️
 ################
     movq  $0, %rdi  #inc
    movq  $0, %rsi  #prog si.ze #maybe 4 buffer...
  
   push_program_tokens_2: 
   mov (%r8,%rsi,1) ,%cl 
 						 # sub $'0' , %rax
   push %rcx
   inc %rdi
   inc %rsi
   
   cmp $4 , %rdi     #leaving this, gonna count buffer length at the end and loop back ;)
   		#actually no, unless ur cutting stuff out of buffer.
   		
   jne push_program_tokens_2
   
   movq  $0, %rdi
    
   #tokens maybe in reverse order now... ➰️
   
    program_logic_2: 
  #######################
  #🪄️

					#🗡️ new order
mov 24(%rsp) , %rdx 		#was 'a'		#🗡️ header (ignore)							
	
mov 16(%rsp),    %rcx 	#was 'b'##🗡️ instruction 
mov 8(%rsp)  ,  %rax  # wasinstruction   #🗡️ input _ a  #obviosly u see i changes rx. makes sense tho
mov (%rsp) , %rbx #output				##🗡️ input _ b 

#superficial pops 2 stop segfault (just 4 ease out logic out <3)
pop -8(%rsp)
pop -8(%rsp)
pop -8(%rsp)
pop -8(%rsp)


#

#_____________________________replaced witch checking ALLascii
#this could probably use %rdx / rax btw  (was rbx)
 cmp  $1, %rdx #0 #ALT
    jl   end_token_logic_2# push_program_tokens_2 #next_byte
    cmp  $126 , %rdx #127 #$LOWERCASE_Z,
    jg   end_token_logic_2# push_program_tokens_2 
    
    cmp  $1, %rcx #0 #ALT
    jl   end_token_logic_2# push_program_tokens_2 #next_byte
    cmp  $126 , %rdx #127 #$LOWERCASE_Z,
    jg   end_token_logic_2# push_program_tokens_2 
    
     cmp  $1, %rax #0 #ALT
    jl   end_token_logic_2# push_program_tokens_2 #next_byte
    cmp  $126 , %rax #127 #$LOWERCASE_Z,
    jg   end_token_logic_2# push_program_tokens_2 
    
     cmp  $1, %rbx #0 #ALT
    jl   end_token_logic_2# push_program_tokens_2 #next_byte
    cmp  $126 , %rbx #127 #$LOWERCASE_Z,
    jg   end_token_logic_2# push_program_tokens_2 
    ###########this works perfectly (ITS NOT THE PROBLEM)


######
valid_entry:


#⚡️⚡️⚡️⚡️⚡️

caps_header_2:

cmp  $'A', %rdx
    jl    end_caps_header_2  # or a to b in this case 
    cmp  $'G', %rdx     #as if 4 regs (or less m8)
    jg    end_caps_header_2
    
    
 mov %rdx , (%r14,%r15,1) 	
	inc %r15
end_caps_header_2:
symbols_header_2:

end_symbols_header_2:
#⚡️⚡️⚡️⚡️⚡️

#🔌️#🔌️#🔌️#🔌️#🔌️#🔌️#🔌️#🔌️#🔌️#🔌️#🔌️#🔌️#🔌️#🔌️#🔌️



#jmp ram_drop_thru_2   #emergency skip all
#🎧️🎧️🎧️🎧️🎧️🎧️🎧️🎧️🎧️🎧️🎧️🎧️🎧️
 # so dont go out of abc order...
#🪱️🪱️🪱️🪱️🪱️🪱️🪱️🪱️🪱️🪱️🪱️🪱️🪱️🪱️
wire_header_ab_2:
wire_cmp_a_2:
    cmp  $'a', %rax
    jl    wire_cmp_b_2  # or a to b in this case 
    cmp  $'z', %rax     #as if 4 regs (or less m8)
    jg    wire_cmp_b_2

    mov %rax , %r10 
     sub $97, %r10  # 48 + 50

    
   mov (%r12,%r10,1) , %al
   
   # movb $'.' , (%r12,%r10,1) 
   cmp $'.' , %rax 
   jne wire_cmp_b_2
   mov $'_' , %rax

      wire_cmp_b_2:
      
       cmp  $'a', %rbx
    jl    end_wire_header_ab_2  # or a to b in this case 
    cmp  $'z', %rbx     #as if 4 regs (or less m8)
    jg    end_wire_header_ab_2

    mov %rbx , %r10 
     sub $97, %r10  # 48 + 50

    
   mov (%r12,%r10,1) , %bl
      
    #   movb $'.' , (%r12,%r10,1) 
   cmp $'.' , %rbx 
   jne end_wire_header_ab_2
   mov $'_' , %rbx
    
    end_wire_header_ab_2:
  

 
 #✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️
###############
##👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️

##👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️
   ######################
   mult_yr_2_a:  


   finished_2:
   #📮️---------starts
inc %r11
#📮️(incs at bottom postal post;)

   #🤹‍♀️️🤹‍♀️️🤹‍♀️️🤹‍♀️️🤹‍♀️️🤹‍♀️️🤹‍♀️️🤹‍♀️️🤹‍♀️️🤹‍♀️️🤹‍♀️️

#######################################
   logic_switch_2:
   ###u may actually "NOW" move into %14/15 
   #(from "RAM" (AND IF NOTHING IS THERE BREAK OUT
#THEN U CAN REPLACE THE VALUES AFTER 
#OR JUST DELETE THEM WHEN U PULL THEM , THEN NOTHING 2 REPLACE
#HOW 2 GET VALS? = %R11 & R11 - 1 

#📍️ #empty drop with logic doesn't do anythign < BIG PROBLEM!
#why? im gonna fix that now w/e ur talking about by skipping if both r mt
#they would have dropped down by now
#we haven't made logic for "RAW NOT" so... if either is empty u need 2 
#disengage. 

ab_valid_vars_check_2: #if u add not u may change this...DONT lol..
##############################
a_valid_var_check_2:
cmp $'_' ,%rax
je end_logic_2
b_valid_var_check_2:
cmp $'_' ,%rbx 
je end_logic_2
#########################
   
   
     cmp $'_' ,%rcx  
    je end_logic_2
  
 cmp $'@' ,%rcx   
   je logical_nunq_2 # logical_nand_2
  
   #@@@@@@@@@@@@@@@@@@@@@
   logical_nunq_2: 
   #👨🏽‍🚀️
   #new logical nand (just make using "cmp $0 & $1 )
   #(cuz the arch is doing somethingweird(will try %al...
    #👨🏽‍🚀️
    sub $'0' , %rax   
  sub $'0' , %rbx   
  
  unq_fx_2: 
  
  
 cmp_a0b0:
 cmp $0 , %al
 jne cmp_a0b1
 cmp $0 , %bl
 jne cmp_a0b1
 jmp nun_fx_2
 #done cmp_a0b0 =0
 
 cmp_a0b1:

  cmp $0 , %al
 jne cmp_a1b0
 cmp $1 , %bl
 jne cmp_a1b0
 jmp nun_fx_2

 #done cmp_a0b1 = 0
 
 cmp_a1b0:
 
   cmp $1 , %al
 jne cmp_a1b1
 cmp $0 , %bl
 jne cmp_a1b1
 
 mov %bl , %al
 jmp nun_fx_2

 #done cmp_a1b0 = 0
 
 cmp_a1b1:
 #al is 1 , ur done already

 #done cmp_a1b1 = 1
  
   nun_fx_2: 
     xor $1 , %al
 add $'0' , %al 
  add $'0' , %bl
  
 
   end_logical_nunq_2: 
   mov $'_', %rbx
   jmp end_logic_2
     #👨🏽‍🚀️
   #🔥️  #also they die and burn in hell soon 4 sending me 2 shower for no reason <DRU ^^^^^^^^^^^^^^^^^
   
#https://kobzol.github.io/davis/
#riscv
#wanted to see if they booth do that (simulated)
     
     #&
#|   a   |   b   |  out  |
#|   0   |   0   |   0   |
#|   0   |   1   |   0   |
#|   1   |   0   |   0   |
#|   1   |   1   |   1   |
     
logical_nand_2:

 
# how the fuck did we get this far with literal nand
#not working when a&b swaps sides. wussup ? why? 
  sub $'0' , %rax   
  sub $'0' , %rbx   
  
    
  #proves this shit is jacked for some reason , skip it. yuk
    AND  %al  , %bl
    #AND  %bl  , %al
    
     mov %al, %bl #
  call exit #
  
    xor $1 , %al
 add $'0' , %al 
  add $'0' , %bl
  
 
  
   mov $'_', %rbx


end_logic_2:
#🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️

#🥈️🥈️🥈️🥈️🥈️🥈️🥈️🥈️🥈️🥈️🥈️🥈️🥈️🥈️🥈️🥈️🥈️🥈️🥈️

################
#🪱️##🪱️##🪱️#
#do we drop alpha 2 binary? (probably not
#qo us 'up-wr' in place? no not unless header is on same wire <3 
scoop_wr_d_2: 
cmp_d:     #🧊️ (freezing this.
cmp $'_', %rdx
je end_scoop_wr_d_2

#else cmp lettering #a/b will already be in bin form so w/o u good


match_head_tail_dab_2:  
		
		
match_head_tail_d_2:	
	
	cmp  $'a', %rdx
    jl    end_scoop_wr_d_2  # or a to b in this case 
    cmp  $'z', %rdx     #as if 4 regs (or less m8)
    jg    end_scoop_wr_d_2
    
   
  
 match_head_tail_a_2: 
  cmp_a_blank_2:
 cmp  $'_', %rax
 jne pre_rdx_2
 
 cmp_b_blank_2:
 cmp  $'_', %rbx
 jne pre_rdx_2
 
 mov $'_' , %rdx  # deleting bad wiring w/e 
 
 jmp end_scoop_wr_d_2
   #both blank, should we drop wire? 
  #no thats tacky honestly u probably shouldn't drop #'s
# numdrop is ok. 4 reasons
 #i may drop args/*/w/e onto ram3 tho later.
 #(if they are on header? (or w/e if u need 4 w/e)
 #not just frivilously
 #i may use "hil" for "ram3 wiring 2 and just match"

 #🐴️
 pre_rdx_2: 
 
 mov %rdx , %r10 
 sub $97, %r10  # 48 + 50
 
 stor_rax_wr_2: 
 cmp $'_' , %rax 
 je stor_rbx_wr_2
 mov %al , (%r12,%r10,1) 
 mov $'_' , %rax
 jmp end_scoop_wr_d_2
 stor_rbx_wr_2: 
   cmp $'_' , %rbx 
 je end_scoop_wr_d_2
 mov %bl , (%r12,%r10,1) 
 mov $'_' , %rbx
     #vom 
     
      
 
end_scoop_wr_d_2:
#🪱️##🪱️##🪱️#

#✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️
#################################
patch_drop_ab_2:

dec %r11



end_patch_drop_ab_2:

post_logic_check_ab_2:  
	post_logic_check_a_2:	
	
 cmp  $'_', %rax
  je post_logic_check_b_2
mov %al, (%r13,%r11,1) 
mov $'_', %rax
	#move this back in now, and add1 4 15
  inc %r11
  post_logic_check_b_2:
  cmp  $'_', %rbx
  je end_post_logic_check_ab_2
  mov %bl, (%r13,%r11,1) 
 inc %r11

#🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️
end_post_logic_check_ab_2:


#🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️🥢️
end_post_logic_check_ab_2:


#✂️✂️✂️✂️✂️✂️#🪱️
		loop_if_2:
         #🎖️
        cmp %rsi, %r9 # count vs buffsize
   
       jne push_program_tokens_2
   

   

     #____________________________
    end_token_logic_2:
 popq  %rbp
    ret 
#_________________________⚔️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️

#🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️



#🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️
#🔢️🔢️🔢️🔢️
#(if u wanted 2 fix it u would just fix the 
#(buffer out from looking "crazy" 
#(dont sweat it tho maybe on bootstrap we can revist it afresh)
#🔢️🔢️🔢️🔢️
.globl buffer_stripper_0
buffer_stripper_0:
 pushq %rbp 
    movq  %rsp, %rbp
    
    mov $BUFFER_DATA, %rax
    mov $BUFFER_SIZE, %rbx
    
    
  mov $0, %rdi
    mov $0, %rsi
    cmp $0, %rbx
    je end_buffer_stripper_0
    
 strip_loop:  	# was convert_loop:
    		#will move to external file and do 'nand' 
    		#or do them out of the not gate as tx 
    mov (%rax,%rdi,1), %cl  # lower byte of rcx
    
    
  # need to jump before doing this if byte is not "1 or zero" (its editing "[,]"


cmpb $9, %cl #ascii for 'tab\ '
je next_bit_strip

cmpb $10, %cl #ascii for 'n\ '
je next_bit_strip
cmpb $32, %cl #ascii for ' '
je next_bit_strip
cmpb $44, %cl #ascii for ','
je next_bit_strip
cmpb $91, %cl #ascii for '['
je next_bit_strip
cmpb $93, %cl #ascii for '['
je next_bit_strip



  ###########################################
# think im gonna put comment stripper in new fx. 
#this one getting rediculous , its better this way trust me <3 
 to_buff_re: 
  
   mov %cl, (%rax,%rsi,1)
inc %rsi
  cmp %rdi, %rbx
    je  end_buffer_stripper_0

    next_bit_strip:    
  	inc %rdi 
    cmp %rdi, %rbx
    jne  strip_loop
    
   ##########################

  mov $0, %rdi
    mov $0, %rsi
    mov $0, %rax
    mov $0, %rbx
    mov $0, %rcx
# _________________________
end_buffer_stripper_0:  
popq  %rbp
    ret 
    
    

#🚂️🚂️🚂️🚂️🚂️🚂️🚂️

.globl buffer_comment_0
buffer_comment_0:
 pushq %rbp 
    movq  %rsp, %rbp
    
    mov $BUFFER_DATA, %rax
    mov $BUFFER_SIZE, %rbx
    
    
  mov $0, %rdi
    mov $0, %rsi
    cmp $0, %rbx
    je end_buffer_comment_0
    
 comment_loop:  	# was convert_loop:
    		#will move to external file and do 'nand' 
    		#or do them out of the not gate as tx 
    mov (%rax,%rdi,1), %cl  # lower byte of rcx


  ##########################
     cmpb $'#', %cl 
jne to_buff_com
comment_out_strip:
 mov (%rax,%rdi,1), %cl #❣️leave this, look at it, duh (confused me earlier)
 inc %rdi
 cmpb $10, %cl #ascii for 'n\ '
 jne comment_out_strip

cmp %rdi, %rbx
    jne  comment_loop
   # jmp end_buffer_comment_0
  #################

 to_buff_com: 
  
   mov %cl, (%rax,%rsi,1)
inc %rsi


    next_bit_comment:    
  	inc %rdi 
    cmp %rdi, %rbx
    jne  comment_loop
    
   #################
  mov $0, %rdi
    mov $0, %rsi
    mov $0, %rax
    mov $0, %rbx
    mov $0, %rcx
 
# _________________________
end_buffer_comment_0:  
popq  %rbp
    ret 



#🚂️🚂️🚂️🚂️🚂️🚂️🚂️
##🚂️🚂️🚂️🚂️🚂️🚂️redoing "nqn" for taking in buffer and looping thr
##🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️ make this one easy 2 understand pls.
##🚂️🚂️🚂️🚂️stripping it should be seperate fx. then u can still do what u need after
##🚂️🚂️🚂️🚂️🚂️put many tests in.
.globl buffer_engine_0 
buffer_engine_0: 
 #_________________________
end_buffer_engine_0:  
#🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️🚂️







#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
















#🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️




 

#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️


#_________________________⚔️
#☪️




#🪳️#🪳️#🪳️#🪳️#🪳️#🪳️#🪳️#🪳️

#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️
#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️
#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️
#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️



#🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️
#🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️
#🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️
#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️
#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️
#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️#

#🎚️#
.globl print_err_0  
print_err_0 :
 pushq %rbp 
    movq  %rsp, %rbp

start_print_err_0 :

      
   movq  $err_msg_0, %rsi      #this buffer
movq $err_msg_0_len , %rax

   movq  %rax, %rdx             #buff 2 
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_err_msg_0 :
 popq  %rbp
    ret 
#---------------------------🎚️
#---------------------------🎚️

.globl print_buff  
print_buff :
 pushq %rbp 
    movq  %rsp, %rbp

start_print_buff :

      
   movq  $BUFFER_DATA, %rsi      #this buffer
   	
   movq $BUFFER_SIZE, %rax #replace size?

    movq  %rax, %rdx             #buff 2 
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_print_buff :
 popq  %rbp
    ret 
#---------------------------🎚️

#---------------------------🎚️

.globl print_16
print_16 :
 pushq %rbp 
    movq  %rsp, %rbp

start_print_16 :

      
   movq  $ascii_16_test_0, %rsi      #this buffer
   	
   movq $16, %rax #replace size?

    movq  %rax, %rdx             #buff 2 
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_print_16 :
 popq  %rbp
    ret 
#---------------------------🎚️




#---------------------------🎚️

.globl ascii_4_test_out_0   
ascii_4_test_out_0 :
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_4_test_out_0:

      
   movq  $ascii_4_test_0, %rsi      #this buffer
   	
   movq $4, %rax #replace size?

    movq  %rax, %rdx             #buff 2 
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_4_test_out_0 :
 popq  %rbp
    ret 
#---------------------------🎚️


#---------------------------🎚️

.globl ascii_4_head_out   
ascii_4_head_out :
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_4_head_out :

      
   movq  $ascii_4_head, %rsi      #this buffer
   	#movq 	ascii_4_a, %rsi #💡️
   movq $4, %rax #replace size?

    movq  %rax, %rdx             #buff 2 
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_4_head_out :
 popq  %rbp
    ret 
#---------------------------🎚️
#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️

#---------------------------🎚️

.globl ascii_4_a_out  
ascii_4_a_out :
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_4_a_out :

      
   movq  $ascii_4_a, %rsi      #this buffer
   	#movq 	ascii_4_a, %rsi #💡️
   movq $4, %rax #replace size?

    movq  %rax, %rdx             #buff 2 
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_4_a_out :
 popq  %rbp
    ret 
#---------------------------🎚️
#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️
#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️
#---------------------------🎚️

.globl ascii_4_b_out   
ascii_4_b_out :
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_4_b_out :

      
   movq  $ascii_4_b, %rsi      #this buffer
   	#movq 	ascii_4_a, %rsi #💡️
   movq $4, %rax #replace size?

    movq  %rax, %rdx             #buff 2 
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_4_b_out :
 popq  %rbp
    ret 
#---------------------------🎚️
#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️

#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️
#---------------------------🎚️

.globl ascii_4_i_out   
ascii_4_i_out :
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_4_i_out :

      
   movq  $ascii_4_i, %rsi      #this buffer
   	#movq 	ascii_4_a, %rsi #💡️
   movq $4, %rax #replace size?

    movq  %rax, %rdx             #buff 2 
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_4_i_out :
 popq  %rbp
    ret 
#---------------------------🎚️

#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️



#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️
#---------------------------🎚️

.globl ascii_newline 
ascii_newline:
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_newline:
#👨🏽‍⚕️️im gonna diagnose newline by pushing random stuff 2 stack and seeing
#if it messes it up 
#or just printing "ascii's as is...
      
   movq  $newline_out, %rsi      #this buffer
   	
   movq $1, %rax #lasttime i checked \n only takes 1 char ;) 

    movq  %rax, %rdx             #buff size
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_newline:
 popq  %rbp
    ret 
#---------------------------🎚️
#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️

#ram_32_0
 #🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️
.globl ascii_32_out 
ascii_32_out:
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_32_out:

   movq  $ram_32_0, %rsi      #this buffer
   	
   movq $32, %rax #lasttime i checked \n only takes 1 char ;) 

    movq  %rax, %rdx             #buff size
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_32_out:
 popq  %rbp
    ret 
    
    
    
    
    
    
    #🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️
#---------------------------🎚️
 #🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️
.globl ascii_64_out 
ascii_64_out:
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_64_out:
#👨🏽‍⚕️️im gonna diagnose newline by pushing random stuff 2 stack and seeing
#if it messes it up 
#or just printing "ascii's as is...
      
   movq  $ram_64_0, %rsi      #this buffer
   	
   movq $64, %rax #lasttime i checked \n only takes 1 char ;) 

    movq  %rax, %rdx             #buff size
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_64_out:
 popq  %rbp
    ret 
    
    
    
    
    
    
    #🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️
.globl ascii_64_history_out 
ascii_64_history_out:
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_64_history_out:
#👨🏽‍⚕️️im gonna diagnose newline by pushing random stuff 2 stack and seeing
#if it messes it up 
#or just printing "ascii's as is...
      
   movq  $ram_64_history_0, %rsi      #this buffer
   	
   movq $64, %rax #lasttime i checked \n only takes 1 char ;) 

    movq  %rax, %rdx             #buff size
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_64_history_out:
 popq  %rbp
    ret 
    #🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️ 
    
    #📺️#📺️#📺️#📺️#📺️#📺️#📺️#📺️#📺️
               #🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️
.globl ascii_64_t_out 
ascii_64_t_out:
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_64_t_out:
#👨🏽‍⚕️️im gonna diagnose newline by pushing random stuff 2 stack and seeing
#if it messes it up 
#or just printing "ascii's as is...
      
   movq  $ram_64_t_0, %rsi      #this buffer
   	
   movq $64, %rax #lasttime i checked \n only takes 1 char ;) 

    movq  %rax, %rdx             #buff size
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_64_t_out:
 popq  %rbp
    ret 
    #🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️ 
    #📺️#📺️#📺️#📺️#📺️#📺️#📺️#📺️
    
            #🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️
.globl ascii_64_v_out 
ascii_64_v_out:
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_64_v_out:
#👨🏽‍⚕️️im gonna diagnose newline by pushing random stuff 2 stack and seeing
#if it messes it up 
#or just printing "ascii's as is...
      
   movq  $ram_64_v_0, %rsi      #this buffer
   	
   movq $64, %rax #lasttime i checked \n only takes 1 char ;) 

    movq  %rax, %rdx             #buff size
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_64_v_out:
 popq  %rbp
    ret 
    #🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️ 
        #🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️
.globl ascii_64_v_history_out 
ascii_64_v_history_out:
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_64_v_history_out:
#👨🏽‍⚕️️im gonna diagnose newline by pushing random stuff 2 stack and seeing
#if it messes it up 
#or just printing "ascii's as is...
      
   movq  $ram_64_v_history_0, %rsi      #this buffer
   	
   movq $64, %rax #lasttime i checked \n only takes 1 char ;) 

    movq  %rax, %rdx             #buff size
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_64_v_history_out:
 popq  %rbp
    ret 
    #🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️ 
    
    
    
     #🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️
.globl ascii_128_v_out 
ascii_128_v_out:
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_128_v_out:

      
   movq  $ram_128_v_0, %rsi      #this buffer
   	
   movq $128, %rax #lasttime i checked \n only takes 1 char ;) 

    movq  %rax, %rdx             #buff size
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_128_v_out:
 popq  %rbp
    ret 
    #🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️🖨️🐏️ 
    
#---------------------------🎚️
#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️
#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️
#---------------------------🎚️
#🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️
#https://forum.nasm.us/index.php?topic=98.0 (nasm speaker syscal8)
.globl ascii_sing_out 
ascii_sing_out :
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_sing_out:
      
   movq  $ascii_sing, %rsi      #this buffer
   	
   movq $1, %rax #lasttime i checked \n only takes 1 char ;) 

    movq  %rax, %rdx             #buff size
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_sing_out :
 popq  %rbp
    ret 
    
    #🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️🎙️
#---------------------------🎚️
#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️
#엘 sing test. not gonna work but w/e lets test it. 

#🎙️🧪️🎙️🧪️🎙️🧪️🎙️🧪️🎙️🧪️🎙️🧪️🎙️🧪️
#https://forum.nasm.us/index.php?topic=98.0 (nasm speaker syscal8)
.globl ascii_sing_test 
ascii_sing_test :
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_sing_test:
      
   movq  $sing_test, %rsi      #this buffer
   	
   movq $1, %rax #lasttime i checked \n only takes 1 char ;) 

    movq  %rax, %rdx             #buff size
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_sing_test :
 popq  %rbp
    ret 
#🎙️🧪️🎙️🧪️🎙️🧪️🎙️🧪️🎙️🧪️🎙️🧪️🎙️🧪️
#------------------------------------🈺️
#sys in . #can still io from ascii so no biggie
.globl sys_in
sys_in:
 pushq %rbp 
    movq  %rsp, %rbp

start_sys_in:



open_files:
open_fd_in:
#
#cmpq $3, ST_ARGC(%rbp) #(use the real position if u want ...duh
#jne store_fd_stdin

  mov $filename_in, %rdi # 🚩            
   
    mov $O_RDONLY, %rsi   
      # mov $O_CREAT_WRONLY_TRUNC, %rsi
      
    mov $0666, %rdx                    
    mov $SYS_OPEN, %rax 

    syscall #🏕️
store_fd_in:
    #save the given file descriptor
    movq  %rax, ST_FD_IN(%rbp)
    

  #--------------------
    jmp end_sys_in # open_fd_out
    
    store_fd_stdin:
#save the given file descriptor
movl $STDIN, ST_FD_IN(%rbp)

end_sys_in:
 popq  %rbp
    ret 
#---------------------------🈺️
#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️
#--------------------------------------🎛️

.globl sys_out
sys_out:
 pushq %rbp 
    movq  %rsp, %rbp

start_sys_out:

  open_fd_out:
 
cmpq $3, ST_ARGC(%rbp)
jne store_fd_stdout

###OPEN OUTPUT FILE###
    movq  $SYS_OPEN, %rax          #open 
    movq  ST_ARGV_2(%rbp), %rdi    #this file
    movq  $O_CREAT_WRONLY_TRUNC, %rsi          #with write_only flag
    movq  $0666, %rdx              #(if needed creation) with mode 666
    syscall                        #file id returned in %rax
store_fd_out:
    #store the file descriptor here
    movq  %rax, ST_FD_OUT(%rbp)
 
    jmp  end_sys_out #read_loop_begin  #🀄️ 
    
    store_fd_stdout:
#store the file descriptor here
movl $STDOUT, ST_FD_OUT(%rbp)
end_sys_out:

 popq  %rbp
    ret 

#---------------------------------------🎚️






#🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️
#🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️
#🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️🧊️

#------------------------------------🎛️
.globl load_buff  #called continue but call from "MAIN" same as 123
load_buff:
 pushq %rbp 
    movq  %rsp, %rbp

start_load_buff:
# 🕹️
###BEGIN MAIN LOOP###
load_loop_begin_0:
    ###READ IN A BLOCK FROM THE INPUT FILE###
    movq  $SYS_READ, %rax       #read
    movq  ST_FD_IN(%rbp), %rdi  #from this file
    movq  $BUFFER_DATA, %rsi    #to this buffer
    movq  $BUFFER_SIZE, %rdx    #up to this count
    syscall                     #size of buffer read is returned in %rax
    
    ###EXIT IF WE’VE REACHED THE END###
    #check for end of file marker
    cmpq  $END_OF_FILE, %rax
    #if found or on error, go to the end
    jle   end_load_buff # end_loop
    
    continue_load_loop_0:
###CONVERT THE BLOCK TO UPPER CASE###
    movq $BUFFER_DATA, %rdi    #location of buffer #
# 🕹️
    movq %rax, %rsi            #size of the buffer ###🕹️
 
#🥼️]🥼️]🥼️]🥼️]🥼️]🥼️]🥼️]🥼️]

end_load_buff:
 popq  %rbp
    ret 
#---------------------------🎚️






