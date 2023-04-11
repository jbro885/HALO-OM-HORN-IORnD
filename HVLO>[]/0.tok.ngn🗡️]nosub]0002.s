#👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️
#when u are able to optionally parse 4bit or mux . this code will be BEAST
#also its transferable 2 other archs, forever. 
#take ur time , u will get there quicker than u think
#👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️

#⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️
#🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️
#🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️
#SUM = we want a "_i_ reg compayre statement that matches "not/nand or w/e"
#inst 🎸️🎷️🎻️👩🏻‍🏫️🎺️🎹️🍽️🥁️
#🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️
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
.ascii "0000\0000\0000\0000\0000\0000\0000\0000"  
# "." ? 🐑️
ram_64_0:
.ascii "................................................................"
#.ascii #"0000000000000000000000000000000000000000000000000000000000000000"
#.ascii #"________________________________________________________________"

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
    .ascii "a.hvl\0"
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


#⭐️
#call just_do_it

#call prog_regs_out #doing this 2 see order of output , etc(pulled  V


#call print_16
#call ascii_newline
#⭐️
#📍️
#start parsing instructions pls...
#literally just compare ascii_4_i
call sh_test
call ascii_sing_out
call ascii_newline

#call test_fx_0
#call ascii_sing_out
call ascii_newline

#call a2b_0
#call ascii_sing_out
#🪀️

#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️
#call token_chip_drop_0  #step 0. go as far as u can with token not

#call convert_to_ram_64  #👵🏻️#🧕️refreshed 2 only take 4 @ a time , good 2 go (apr5)
# u should literally start doing "multi chip now" do the not or nand (stick with not long as possible
				#and string THOSE into a nand gate , then we will use 
				# @ token 2 call 2 that set of binaries or w/e 



#call token_logic_1 #📍️#apr7 . u just need 2 call convert ram in fx
			#using the next "rsi count" till its "buffer size"
	#cuz if u try 2 do it "fancy" (replacing buff(we cant see buffer 🤮️)
	#fuk off with that shit till i get my own debugger etc 
	#u need 2 do the closest thing next 2 not having comments .
	#if u have comments at all (we already do so u should beable 2 finagle it
	#but worst comes 2 worst dont (but dont do that ofc) 
	#i was tryign 2 be responsible, but i didn't realize
	#not seeing the buffer would be so bad


#call buffer_stripper_0  #if i put this first, it segfaults. wanna know y? 
			#sol idea ? try clearing out the vars b4 leaving fx? 
			#no didn't fix it.
			#honestly i dont care im just gonna move on , guess wut
		#otherwise , crossplat will have, no comments no spaces, voila, move on 
		#especially with rap/violence move on 
	

		
call buffer_comment_0
call buffer_stripper_0

call token_logic_1  #is looking for "only 4 " 
#	call token_logic_loop   # 📍️#	
#🚪️🚪️🚪️🚪️🚪️🚪️
call print_buff
call ascii_newline

call ascii_64_out
call ascii_newline

#call ascii_sing_out
#call ascii_newline
#call ascii_4_test_out_0
#🚪️🚪️🚪️🚪️🚪️🚪️

#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️

################


#call asc_2_bin  #then stored as "dec.ascii"y? may as well...really?no
#call ascii_4_i_test_out
#call ascii_dec_2_sing_out(FAKE) #use 'sing_out' just -48 ,pls
#call bin_2_asc
#📍️

call ascii_newline

call exit
#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️
 
#🏁🏁🏁🏁🏁
exit: 
mov $1, %rax

#mov $99, %rbx# this is the status number we will

int $0x80# this wakes up the ker
#🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁

#🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️

#🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️🚧️
#🗓️
#apr 9
#🗓️

.globl token_logic_loop
token_logic_loop:
 pushq %rbp 
    movq  %rsp, %rbp
    
    mov $BUFFER_DATA, %rax
    mov $BUFFER_SIZE, %rbx
    
    # _________________________
end_token_logic_loop:  
popq  %rbp
    ret 
#🗓️
#########################################


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
#🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️
#🚿️ APR-9 - logic_1 >> logic_1_[]


#____________________________________⚔️
.globl token_logic_1
token_logic_1:
 pushq %rbp 
    movq  %rsp, %rbp
    #_________________________
 start_token_logic_1:  
#################################
  mov $BUFFER_DATA, %r8
    mov $BUFFER_SIZE, %r9
    ####################################

   			#or swap sing 4 64 out and see what happens < THIS 	
   	 movq $ram_64_0, %r13	
   ########

mov $0 , %r10 # ram-stack count
 
 #➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️💍️
 ################
     movq  $0, %rdi  #inc
    movq  $0, %rsi  #prog si.ze #maybe 4 buffer...
  
   push_program_tokens: 
   mov (%r8,%rsi,1) ,%cl 
 						 # sub $'0' , %rax
   push %rcx
   inc %rdi
   inc %rsi
   
   cmp $4 , %rdi     #leaving this, gonna count buffer length at the end and loop back ;)
   		#actually no, unless ur cutting stuff out of buffer.
   		
   jne push_program_tokens
   
   movq  $0, %rdi
    
   #tokens maybe in reverse order now... ➰️
   
    program_logic: 
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

 drop_finder_0:


compare_rax: 
#cmp $'_' , %rax
#je val_in

 cmp $'_' , %rax
jne compare_rbx
 mov %rbx , %r14 
compare_rbx: 
 cmp $'_' , %rbx
#jne val_in
 mov %rax , %r14 
 
 #🏥️🏥️🏥️🏥️🏥️🏥️🏥️🏥️🏥️🏥️🏥️
 compare_r14: 
 
 cmp $'_' ,  %r14  #should be #should now put val in r%14
 jne logic_switch
 mov  $'*' ,  %r14  #may default zero.
 #mov %r14 , %rbx 
 #call exit
 #jmp logic_switch
 
#THIS IS FUNCTIONING CORRECTLY THEORETICALLY
#BUT U NEED 2 Swap $'0' for "PRE VALUE NOW (dont subtract yet)
 #🏥️🏥️🏥️🏥️🏥️🏥️🏥️🏥️🏥️🏥️🏥️
 #############
 #!❗️WANNA FIX THIS ONCE AND FOR ALL? 
 #dont jump to val_in , till u check "%r14"
 
 #📅️📅️📅️📅️📅️📅️📅️📅️📅️📅️
 val_in: 
 
 
 
 
 
  	mov %r10, %r11  # is 2 ...(why not 1 ? ) 
sub $1 ,%r11 #to blank
mov (%r13,%r11,1) , %r14 

 # mov %r14 , %rbx 
				#95 = _
 


# mov $'.', (%r13,%r10,1)   # , %r14   #r13 = ram (1's position) (1 shl = 4 ) 
#sub $1 ,%r10 #to replacement # 1 for clean replace 2 for prev
# mov (%r13,%r10,1) , %r14   #r13 = ram (0 position) (2 shl = 8) (add 1+1)(ignoring 1rst)
# mov $'?' , %r14 
 #mov %r14, (%r13,%r10,1)
#add $1 ,%r10

#mov %r14 , %rbx 
#mov %rsi , %rbx 
#mov %r10 , %rbx 
#call exit 
			#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️
#u shouldn't never bit shifted. just inc  the other counter 1x, each time u ram-stuff
			#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️#👨🏾‍🚀️
			 #📅️📅️📅️📅️📅️📅️📅️📅️📅️📅️
 final_switch:
 
   logic_switch:
    cmp $'!' ,%rcx   
   je logical_not_1
    cmp $'_' ,%rcx  
    je ram_drop_thru
   # mov %rcx , %rbx  #contains zero if not notated, who knows why will test 4 all cases
   # call exit
    jmp end_token_logic_1
    
logical_not_1: 

  sub $'0' , %r14   
    xor $1 , %r14   
 add $'0' , %r14 
 
 next_fx:
 
  # 🚧️
  ram_drop_thru:
  #mov %rsi , %r10
# shr $2, %r10      # 🚧️
# sub $1 ,%r10 		# 🚧️
   mov %r14, (%r13,%r10,1)
   
   inc %r10 
 # 🚧️


         #🎖️
        cmp %rsi, %r9 # count vs buffsize
       jne push_program_tokens
   
    
   logical_nand_1: 
   
   

   

     #____________________________
    end_token_logic_1:
 popq  %rbp
    ret 
#_________________________⚔️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️

#🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️🚿️








#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
















#🆕️

.globl bit_mode_check 
bit_mode_check :

start_bit_mode_check :

#this may run prior 2 anything else and tell us how to "parse buffer"
#(depending on this should be how we "fork 2 new fx Ie: not in main like in testing

#i think if its more than 4.bit , we may ask how many chips there are 
#but even if it is 4 bit (we will assume no complex chips, but still count how many chips

#CAVEAT : it may take us a while 2 get here proper, no need 2 jump the gun

end_bit_mode_check:
 popq  %rbp
    ret 

#______________removed stuff about x86 level nn/q , adhear 2 tokonly stab thru philosophy pls.🗡️
#🆕️
#🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🎸️
#🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️




#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#📍️#token_chip_drop:    #🚿️ APR 1 . 
#4bit prog (16bin) 
#put header up front, then inst. (then 2 ins 
#output will simply auto drop 2 next "not chip 
#dont wanna not the value? just use  " _=1_ " <mt header 
# just wanna try this and see if it can work "no fake chips" it may not so...
 		#if necessary we can use 4bit mt header for routing...
 		#so could be out for on chip in for another , get it ? 
 		#but first chip shouldn't have header even if u need  2
 		# just push 1 value as "_=1_ a=__ b=__"(a dropped b drops)
 						#this is ER btw but can re a/b
 				#y backwards lol? its classy m8 ;)ㅇㅊㅎㅎ 
#📍️ parse first 4 as header.  (i think if _ = first then its 4bit...) 
	
#same time w/e 

#+++++++++++++++++++++++++++++++++++++++++++000000
token_test_mt:
.ascii "ㅇㅊㅎㅎ"

token_test_0:
.ascii "_!1_"  #not (new/eternal way)

.globl token_chip_drop_0
token_chip_drop_0:


 pushq %rbp 
    movq  %rsp, %rbp
    #_________________________
 start_token_chip_drop_0:  
 
 
  #_____________________________
    end_token_chip_drop_0:
 popq  %rbp
    ret 
#+++++++++++++++++++++++++++++++++++++++++++++0000
 
.globl buff_header_parse_0
buff_header_parse_0:


 pushq %rbp 
    movq  %rsp, %rbp
    #_________________________
 #start_buff_header_parse_0:
 
 
#dont worry about what token parser does, just "interpret the first 4 of buffer..."
#assume we will use "THAT" protocol for the entire stack...
    mov $BUFFER_DATA, %rax
  #  mov $BUFFER_SIZE, %rbx
    
   # mov $ascii_4_head %r13
    
    #i actually see it WOULD be better to parse ram (cuz comments) but we cant 
    #just do same, but only for first 4 
    
 
 

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


#🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️
 .equ test_pos_0 , 16
 .equ test_inc_1 , 24
 .equ test_sum_2 , 32
  ascii_4_i_test:
.ascii "1011"   #a2b is only doing "15" 4 some reason...
		#i think its going backwards tbh...
		#u should just beable 2 dec..
 
#🥼️🥼️🥼️🥼️🥼️🥼️🥼️#🥼️🥼️🥼️🥼️🥼️🥼️🥼️#🥼️🥼️🥼️🥼️🥼️🥼️🥼️
#🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️
#🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️
.globl a2b_0   #GODL = TOKENIZATION ⚔️⚔️⚔️⚔️
		#we will tokenize inst for now , then do full prog
		#⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️
a2b_0:
 pushq %rbp 
    movq  %rsp, %rbp
#_________________________
 start_test_a2b_0:  
 

 ###########
  movq $ascii_sing, %r12
 movq $ascii_4_i_test , %r11 # 
 
 #➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️💍️
 ################
     movq  $4, %rbx  #byte size
    movq  $0, %rdi
    ######################################
   #doing seperate fx so we can use whenever #modular etc
#if ur reverse the ascii u can undo it at end of fx if u 
#copy it 2 %r13 or w/e , id like 2 check that 2 avoid future bugs
#u may have 2 copy it 2 empty ascii reg tho tbh i dont know
#it maybe beter 2 not do this if all that is necessary , 
#and just decrement....(but i will mark in gotchas...)

#ofc if u do this its not gonna be pretty cuz ur gonna half 2 
#do the bin 2 dec conversion "BACKWARDS" thus tainting its purity
#so ... SUPER SOLUTION , POP THEM ONTO THE STACK 
# THEN POP THEM OFF THE STACK AND OPERATE ON THEM AFTER
# 2 fx but not 3 (no loading back into register...) 
#ie reverse_ascii_in_only:  # all problems avoided ;) 
################################################
#u should beable 2 complete this in 1_FX if doubt ur over doing it
#u actually might need 1 loop 2 load 4 into stack (not 4 pop tho)
#so thats what we thot u just put pop at end not in that header
##############################################
   reverse_ascii_in_only: 
   mov (%r11,%rdi,1) ,%al 
   push %rax
   inc %rdi
   
   cmp $4 , %rdi 
   jne reverse_ascii_in_only
   
   movq  $0, %rdi
 
    #➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️
   
   
    mov $0, %rdi#4 debuggin only
 mov $0, %rbx#4 debuggin only
 movq $'0', test_pos_0(%rbp)
  movq $0, test_inc_1(%rbp) #using rdi cuz ()placements need it
   movq $0, test_sum_2(%rbp)
   
   
 ###############
 test_loop_a2b_0: #strip and load loop 
  #######################
  #🪄️
  mov (%rsp) ,  %al 
    #🪄️
   ##########################################

   
   movb %dil ,%cl
   shl %cl, %al
   addb   %al , test_sum_2(%rbp)
   
   #incw test_inc_1(%rbp)
   inc %rdi
   
 pop -8(%rsp)   #u should be using iterator(shl) so this is ok <3
 cmpb $4, %dil
 jne test_loop_a2b_0
 #######################################
 addw $'0' , test_sum_2(%rbp)
 
 movb test_sum_2(%rbp) , %bl #❎️
   call exit	#❎️
 
 mov test_sum_2(%rbp) , %al 
  add $'0' , %al # "number is ascii , not gonna show as digidec🚨️
 mov %rax, (%r12,%rbx,1) #⚔️we dont actually need "OUT'
 			#⚔️we want "TOKEN"⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️
 #____________________________
    end_a2b_0:
 popq  %rbp
    ret 

#🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️
#pro test ? == 1.fall thru on 3 2.use bigger #'s
#3. it should be ez cuz u will see the dec of bin u need ;) 

#🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️🥼️




#🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️
#takes 16bit binary and puts into 4 ascii regs . 
.globl prog_regs_out
prog_regs_out:
 pushq %rbp 
    movq  %rsp, %rbp
    
 start_prog_regs_out:  

 #movq $ascii_4_test_0, %r12
 movq $ascii_16_test_0, %r12
######################registars⭐️
  movq  $ascii_4_head, %r8 
     movq  $ascii_4_a, %r9
   movq  $ascii_4_b, %r10
   movq  $ascii_4_i, %r11
  ####################⭐️
 
 
  movq  $4, %rbx  #byte size
    movq  $0, %rdi
    
     #🎠️
      loop_4_head_pro: # (4head) can switch 4 ez

 mov (%r8,%rdi,1) ,%rcx # %cl
  push %rcx
 #🦉️
    inc %rdi
    cmp %rdi, %rbx
    jne  loop_4_head_pro
    movq  $0, %rdi
    #END 4HEAD
       #🎠️
       
       #🎠️
      loop_4_a_pro: # (4head) can switch 4 ez
 mov (%r9,%rdi,1) ,%rcx # %cl
  push %rcx
 #🦉️
    inc %rdi
    cmp %rdi, %rbx
    jne  loop_4_a_pro
    movq  $0, %rdi
    #END 4HEAD
       #🎠️
         #🎠️
      loop_4_b_pro: # (4head) can switch 4 ez
 mov (%r10,%rdi,1) ,%rcx # %cl
  push %rcx
 #🦉️
    inc %rdi
    cmp %rdi, %rbx
    jne  loop_4_b_pro
    movq  $0, %rdi
    #END 4HEAD
       #🎠️
            #🎠️
      loop_4_i_pro: # (4head) can switch 4 ez
 mov (%r11,%rdi,1) ,%rcx # %cl
  push %rcx
 #🦉️
    inc %rdi
    cmp %rdi, %rbx
    jne  loop_4_i_pro
    movq  $0, %rdi
    #END 4HEAD
       #🎠️
    
     #####################  
     movq  $16, %rsi
    #  movq  $16, %rsi  #future buff size. will push or w/e should be in buffsize tho
        
           convert_loop_pro:
mov (%rsp), %cl      # goes in mults of 8 (NEVER POPS "ZERO"		
 mov %cl, (%r12,%rdi,1) 
   
  
next_byte_pro:
pop -8(%rsp)
    incq  %rdi              #next byte
    cmpq  %rdi, %rsi
                            #we’ve reached the
                            #end
                    
    jne   convert_loop_pro
 
   
    end_prog_regs_out:
 popq  %rbp
    ret  
 #🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️🗃️
 
#take 4 regs in and spits them back out w/e just cuz..
.globl just_do_it   #make new fx and force output...s
just_do_it:
 pushq %rbp 
    movq  %rsp, %rbp
    
 start_just_do_it:   
#movq  $ascii_4_test_1, %r8  #BUFFER_DATA
movq  $ascii_4_head, %r8 
 #movq $ascii_4_test_0, %r12
 movq $ascii_16_test_0, %r12
 
 
  movq  $4, %rbx  #byte size
    movq  $0, %rdi
    
    
      loop_4_head_it: # (4head) can switch 4 ez

 mov (%r8,%rdi,1) ,%rcx # %cl
# pushb  %cl
  push %rcx
#push $48

 #🦉️
    inc %rdi
    cmp %rdi, %rbx
    jne  loop_4_head_it
    movq  $0, %rdi
    #END 4HEAD
    
 
       #🎠️
       #🎠️
           #🎠️
     #####################      
           convert_loop_it:
mov (%rsp), %cl      # goes in mults of 8 (NEVER POPS "ZERO"		
 mov %cl, (%r12,%rdi,1) 
   
  
next_byte_it:
pop -8(%rsp)
    incq  %rdi              #next byte
    cmpq  %rdi, %rbx 
                            #we’ve reached the
                            #end
                    
    jne   convert_loop_it
    #################
    
    end_just_do_it:
 popq  %rbp
    ret 
#---------------------------🎚️ 



#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️
#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️
#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️#🍀️


#📟️📟️📟️📟️📟️📟️📟️📟️📟️📟️📟️📟️📟️📟️📟️
########################
.globl ruof_edit
ruof_edit:
 pushq %rbp 
    movq  %rsp, %rbp

start_ruof_edit:



convert_to_upper_ruof_edit:
    # not needed: pushq %rbp 
    # not needed: movq  %rsp, %rbp
###SET UP VARIABLES###

  movq  $BUFFER_DATA, %rax  #BUFFER_DATA
# movq  $ascii_16_prog_0 , %rax 
 #proves that this pull it 4 "BUG" isn't from buffer size. lets fix it pls.
 #last new line isn't glitching anymore , just 4th register
 #  movq  $BUFFER_SIZE, %rbx  #BUFFER_DATA

   movq  $ascii_4_head, %r8  #BUFFER_DATA
   movq  $ascii_4_a, %r9
   movq  $ascii_4_b, %r10
   movq  $ascii_4_i, %r11

 
 
   movq  $4, %rbx  #byte size
    movq  $0, %rdi
      movq  $16, %rsi  #prog size
      
      ##############
    #if a buffer with zero length was given
    #to us, just leave
    cmpq  $0, %rbx
    je    end_ruof_edit
convert_loop_ruof_edit:
    #get the current byte
   # movb  (%rax,%rdi,1), %cl
  push (%rax,%rdi,1)
   # movb  %cl, (%rax,%rdi,1)
next_byte_ruof_edit:
    incq  %rdi              #next byte
    cmpq  %rdi, %rsi        #continue unless
                            #we’ve reached the
                            #end
    jne   convert_loop_ruof_edit
       movq  $0, %rdi
    #🎠️
    loop_4_head_edit: # (4head) can switch 4 ez
 mov (%rsp), %cl      # goes in mults of 8 (NEVER POPS "ZERO"		
mov %cl, (%r8,%rdi,1)  #swapped 4 4 . 
pop -8(%rsp)
    inc %rdi
    cmp %rdi, %rbx
    jne  loop_4_head_edit
      movq  $0, %rdi
       #🎠️
       #🎠️
           #🎠️
    loop_4_a_edit: # (4head) can switch 4 ez
 mov (%rsp), %cl      # goes in mults of 8 (NEVER POPS "ZERO"		
mov %cl, (%r9,%rdi,1)  #swapped 4 4 . 
pop -8(%rsp)
    inc %rdi
    cmp %rdi, %rbx
    jne  loop_4_a_edit
      movq  $0, %rdi
       #🎠️
       #🎠️
                 #🎠️
    loop_4_b_edit: # (4head) can switch 4 ez
 mov (%rsp), %cl      # goes in mults of 8 (NEVER POPS "ZERO"		
mov %cl, (%r10,%rdi,1)  #swapped 4 4 . 
pop -8(%rsp)
    inc %rdi
    cmp %rdi, %rbx
    jne  loop_4_b_edit
      movq  $0, %rdi
       #🎠️
       #🎠️
       
                        #🎠️
    loop_4_i_edit: # (4head) can switch 4 ez
 mov (%rsp), %cl      # goes in mults of 8 (NEVER POPS "ZERO"		
mov %cl, (%r11,%rdi,1)  #swapped 4 4 . 
pop -8(%rsp)
    inc %rdi
    cmp %rdi, %rbx
    jne  loop_4_i_edit
      movq  $0, %rdi
       #🎠️
       #🎠️
       
  
 
       
    #🈺️🈺️🈺️🈺️🈺️🈺️🈺️🈺️🈺️

end_ruof_edit:
 popq  %rbp
    ret 
#---------------------------🎚️

#🪳️#🪳️#🪳️#🪳️#🪳️#🪳️#🪳️#🪳️

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
#🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️🎚️
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
#---------------------------🎚️

.globl ascii_4_i_test_out   
ascii_4_i_test_out :
 pushq %rbp 
    movq  %rsp, %rbp

start_ascii_4_i_test_out :

      
   movq  $ascii_4_i_test, %rsi      #this buffer
   	#movq 	ascii_4_a, %rsi #💡️
   movq $4, %rax #replace size?

    movq  %rax, %rdx             #buff 2 
    movq  $SYS_WRITE, %rax        #write to
    movq  ST_FD_OUT(%rbp), %rdi   #to this file s
    
    syscall
    
end_ascii_4_i_test_out :
 popq  %rbp
    ret 
#---------------------------🎚️


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



#---------------------------🎚️

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





#🧪️🧪️🧪️🧪️🧪️🧪️🧪️🧪️🧪️🧪️
.globl test_fx_0
test_fx_0:
 pushq %rbp 
    movq  %rsp, %rbp

 start_test_fx_0:  
 

 
mov $0, %rdi
 movq $3, test_pos_0(%rbp)
  movq $0, test_inc_1(%rbp)
   movq $0, test_sum_2(%rbp)
 
  movq $ascii_sing, %r12
 


 
 test_loop_0_0:
 
 incw test_inc_1(%rbp)

#add test_inc_1(%rbp) , test_sum_2(%rbp)
#🫀️🫀️🫀️🫀️🫀️🫀️🫀️🫀️🫀️
#(do add HERE FIRST !

mov test_inc_1(%rbp) , %r8 
mov test_sum_2(%rbp) , %r9


add  %r8 , %r9  #🧸️sum goes into(2nd arg) %r9 ... okay ... fine...


mov  %r9 , test_sum_2(%rbp) 


 #🫀️🫀️🫀️🫀️🫀️🫀️🫀️🫀️🫀️
 
  cmpw $3 , test_inc_1(%rbp) #🔛️ < these ARE equal. ie no need 2 use "RBX"
 jne test_loop_0_0
 
#mov test_sum_2(%rbp) , %rbx #outputs 6 but this actually maybe 
			#wut we want is it? 
			#or should they be ZERO? 
			#if they need 2 be zero theres a few ways
			#i do think ur ready 2 retry now
			#since ur so close 2 ur equation.
#call exit 
 
 test_loop_0_1:
 
#jne 
 movb test_sum_2(%rbp) , %al #, %al# no have 2 move it out first

  add $'0' , %al
 mov %rax, (%r12,%rdi,1) 
 
   end_test_fx_0:
 popq  %rbp
    ret 

#🧪️🧪️🧪️🧪️🧪️🧪️🧪️🧪️🧪️🧪️
#🧪️🧪️🧪️🧪️🧪️🧪️🧪️🧪️🧪️🧪️
.globl sh_test
sh_test:
 pushq %rbp 
    movq  %rsp, %rbp

 start_sh_test:  
 movq $ascii_sing, %r12
 mov $hi , %r13

    movq  $0, %rdi
 
 #mov (%rsp), %cl      # goes in mults of 8 (NEVER POPS "ZERO"		
 #mov %cl, (%r12,%rdi,1) 
 
 #movb $'!', (%r12,%rdi,1) 
 
 #______________PRE A2B TEST ENV____✉️]ON
 #mov $1 , %cl #%cl
 #add $'0' , %cl
 # mov $'1' , %rcx #%cl
 # sub $'0' , %rcx
 # movb %cl , (%r12,%rdi,1) 
 ####_advanced
# mov $hi , %cl  #%r13 = $hi = .equ ,0b0001 #read only
# add $'0' , %cl
 #movb %cl , (%r12,%rdi,1) 
 
 
 #✉️✉️✉️✉️✉️✉️✉️✉️✉️✉️✉️✉️✉️✉️]ON
 #🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️
 ###_galaxy mind = shifting right = dividing by 2.
 ##                 shift left = mult by 2 ...cant u get ascii 2 dec
 		#with that? seems ez m8 ;) 
# mov $0b0001 , %cl #%cl
#shr     $0b0000, %cl  #checking shift 0 
#  add $'0' , %cl
# movb %cl , (%r12,%rdi,1) 
# movb $'!', (%r12,%rdi,1) 
 ###################################
 #👍️shifting right = dividing by 2.
       #👍️    shift left = mult by 2 ...cant u get ascii 2 dec
 #🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️
 #👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️
 #MULTIVERSAL REALITY 3RD EYE 👁️ (ascii compare)+(swap equ📴️ 2 ascii🔛️
 #ascii_4_test_0
 movq $ascii_4_test_0, %r8
 movq $ascii_4_test_1, %r9
 
 cmp %r8, %r9
 jne out_1
 out_0:
 movb $'!', (%r12,%rdi,1) 
 out_1:
 movb $'?', (%r12,%rdi,1)
 	 #ascii2ascii cmp doesn't work..(prob using mem addressed)
 	 #will try in ()but incase...
 				#u may need 2 put bin.dec. into "r8/r9"
 			#and just push 2 stack or do ur op locally.
 			#do that, then we will "parse inst"
		#then we can get output, and decide how 2 do more chips
		#otherwise u could compare each ascii but thats dumb...
		#so revisit 'bin' and go from there
  #👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️👁️
   end_sh_test:
 popq  %rbp
    ret 
#🧪️🧪️🧪️🧪️🧪️🧪️🧪️🧪️🧪️🧪️

#y test? if/when this works(wont be in order) we can build "logic-ngn"

#is there "more effex way 2 do ? not really if anything u should probably 
#pull directly from "REGS" instead of stack...w/e tho






