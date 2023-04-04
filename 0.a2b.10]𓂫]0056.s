#🙊️🙉️🙈️K.I.S.S. and get me the fuck off plats/planet pls. 


#something GLARINGLY MISSING? (we dont have "buffer count" thing yet...
	#dont sweat it tho , well have to have one when we take in "full code" so w/e 


#🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️
# will decimals, not / and etc like binary or is that bs? 
#u might be asking for bitstream (u probably should only have 1 or 0 fam...
#⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️
#https://en.wikipedia.org/wiki/Template:Unicode_chart_Egyptian_Hieroglyphs
###########TOKENIZATION = ⚔️
#so heres the real deal 
#u can (and should use just "1/0 + &|!N(nand?)w/e)

#(u have space 2 take in 4+ and TOKENIZE IT 2 "1/0 &|$#! w/e but 
#(thats what ultimately must be done ANYWAYS> ie either u take in token
#as prog or u take it "bitstream(for hardware bitbanging possibilities ;)
#(so now u can do both, yay !
#(u should still convert 2 decimal, but dont store decimal, store token. )
#(can be in another ascii buffer etc (literally can be in 1 buff since
#(their all tokens w/e ) (dont be scared of that its less io , 
#and we only have 2 worry about the order which is EZ_ 
#so the thing ur header should do is tell if its pre tokenized or not ;) 
#= 4/16 bit prog = "header,a,b,inst"
#another reason 4 "bin first" ?  can tx it 2 other archs/ including NAND
#and use bitbanging / pwm / ethernet w/e (some mediums literally dont
#accept ascii fam, only "BIN"that was the "ENTIRE POINT"
#U cant trasmit "ASCII " over morse code/diy-sdr , etc. 
#⚔️
#yes u could just do tokne 4 now and it maybe faster 
#(at least we have the formula for ascii 2 bin
#and u might do that therefor 2 get going w/o mistakes. 
#u shoudl still use  a header and still match it 2 ascii 
#but when u finish token-ngn - u will see its so ez and versitile
#2 parse from binary (WE ALREADY DIDTHE HARD WORK)---but it can w8 w/e 
#⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️
#🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️🥁️
#🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️
#SUM = we want a "_i_ reg compayre statement that matches "not/nand or w/e"
#inst 🎸️🎷️🎻️👩🏻‍🏫️🎺️🎹️🍽️🥁️
#🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️🌚️
#>[]
#local specs ? > i dont see old "dream-specs" so do w/e works
#>[]
#➿️
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

#👹️
#if u dont want to fill up "RAM 64 (orw/e)" but u dont want trailing "0's"
#u may need to put a "period" at the end of ur "tokens"/code" 2 indicate end
#may include that in 4 bit tho u will know if its only 4 bit...
#sometimes there are training ".'s" we can just "clip them off then jmp"
#and we will also have "string count" this is necessary , its just the way
#"IT IS
#u can count it and later compare its count with the chips u have + inst
#2 know what chip were using (for mux etc) 

#legitimately outputs a "missingno "엘" to console" (instead of "�"/ "<?>") #"0000\0000\0000\0000\0000\0000\0000\0000\0000\0000\0000\0000\0000\0000\0000\0000"  # i dont believe any program will ever exceed 32 bits...
#overflows 2 print binary looking number as "exit code' <WRONG never does that
#at least not for %rbx
# (unicode encoding in there?
					#probably but , tokenization? (nah)

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
#🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️
#4bit minisys
#0 = 0
#1 = 1
#2 = jo   = '('= 40 # "jo" isnt really relevant 2 us right now , dont sweat it. 
#3 = jne  = ')' = 41
#4 = not  = !
#5 = nand = @ ? = 
#6 = mt (and &  ? (storage address pointer? [decimal?]  register? 
#7 = mt (or = | "174" ? xor =* "42" ? 	(????)		register? 
#8 = shl  "60"  #---> we might not actually do these for "BHDL"
#9 = shr  "62"
#10 = O "79"(outcode)  #should try 2 reset b4 new chip
	#were going 2 change incodes and outcodes
	#(mux's take 8 inputs 
	
	#bascially were just gonna designate the entire alphabet 2 "IN's and OUTS" 
	#i dont think u will have much more than "64 io after all"
	
#i have designated a-z if we need so maybe i will use OK
#🔡️🔠️- u should beable 2 do what to upper does , and just check "a-z" so u may free this reg up ;) <3 
#if we literally use "lowercase" for now Its the same code identical 2 "2 UPPER"
 #The lower boundary of our search
  #  .equ  LOWERCASE_A, 'a'
    #The upper boundary of our search
   # .equ  LOWERCASE_Z, 'z'
    #Conversion between upper and lower case
   # .equ  UPPER_CONVERSION, 'A' - 'a'
   
    #go to the next byte unless it is between
    #’a’ and ’z’
   # cmpb  $LOWERCASE_A, %cl
    #jl    next_byte
    #cmpb  $LOWERCASE_Z, %cl
    #jg    next_byte
##🔡️🔠️#🔡️🔠️#🔡️🔠️#🔡️🔠️#🔡️🔠️#🔡️🔠️#🔡️🔠️#🔡️🔠️#🔡️🔠️#🔡️🔠️#🔡️🔠️
#11 = "=" (will use as comparison but if compares to '_' will just be a "YR"
#12 = mt_w8ing (fx?  = % = "37"
#13 = 	mt   (fx a in ? register? 
#14 		(fx b in ? register?
#15 = mt_END 	(fx return?  register? 
# not.gate. only takes 1 input.what about "_" for mt?
# and 15 = 1111 
#🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️🔌️
#🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️

  #\\\\\\\\\\\\\\\\\\\\\\\\\\\  
newline_out:
.ascii "\n"

ascii_sing:
.ascii "0"

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
    .ascii "a.yr\0"
    filename_out:
    .ascii "out.yr\0"
    logname_out:
    .ascii "log.out.txt\0"
#➕️
#🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️🔏️
#ie : 0010 = 2(&below) = 4bit mode (ignore vvvv) 
#----------------------------------------------
#ie : 0011 = 3 = 8bit mode 
#ie . 0100 = 4 = 16bit mode 
#ie . 0101 = 5 = 32bit mode
#ie . 0110 = 6 = 64bit mode

#ie : 1000 = BNN (neural net 
#ie : Q000 = Quantum w/e 

#⚔️
#ie . 00?0 =  > https://commons.wikimedia.org/wiki/File:ASCII-Table.svg
#wouldn't have equalled the others we can assume its tokenized
#theres other ways but this seems best 4 now , unless u have 2 add more diverse
#headers, then we will approach that , at that point. KISS> we may tx 2 other archs
#⚔️
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
#call sh_test
#call ascii_sing_out
call ascii_newline

#call test_fx_0
#call ascii_sing_out
call ascii_newline

#call a2b_0
#call ascii_sing_out
#🪀️
#call token_logic_0

call ascii_sing_out
call ascii_newline

#call token_logic_1
#call ascii_sing_out

#call token_logic_buff_0
#call ascii_sing_out

#call token_logic_buff_1
#call ascii_newline
#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️#🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️🔯️
#call token_chip_drop_0  #📍️step 0. go as far as u can with token not
#how? token thrubuff 2 header parse
 #+exclude comments = (sub loop '#' till '\n'
 #then we can comment chips ...  
 #u should also sanitize post ram (it may have trailing"."'s

#call buff_header_parse_0  #📍️step 0.& parse binary bin/tok/4bit header
#call convert_to_ram_64_1 # convert the binary 1rst prog 2 ram64
#call ram_to_logic_0 # do logic on w/e is in ram 
		#🧠️
#should beable 2 loop itself 2 check buffer till empty
#the header should even beable 2 help u count "mult_prog" size
#💡️💡️💡️💡️💡️💡️💡️💡️💡️💡️💡️
#>should we just do tokens after? NO try 2 do them same time(or only!
#cuz i think it will even work , if u just chunk out chips w/e 
#thats the point isn't it ? (2 have it all in transistors? 
#do u even actually WANT buffer  ? < good point...
# literally even just do token first...
#the only thing that would stop u is "WIRING" (but not chips)
#and wiring can be reprsented by "ASCII" REMEMBER?!??!
#with 4 bits u still get 3max wires, cuz u wont use "header"
#that space is for if u "CHOSE" 2 go into multibit l8er u wont
#be scrambling for space ;) <3 
#💡️💡️💡️💡️💡️💡️💡️💡️💡️💡️💡️
call convert_to_ram_64  #👵🏻️
#call print_buff
call ascii_newline
#🚪️🚪️🚪️🚪️🚪️🚪️
call ascii_64_out
call ascii_newline
call ascii_4_test_out_0
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

#______________
#🧠️🧠️🧠️🧠️🧠️🧠️🧠️🧠️🧠️🧠️
.globl jbnn_bit_mode_switch 
jbnn_bit_mode_switch :

start_jbnn_bit_mode_switch :
end_jbnn_bit_mode_switch:
 popq  %rbp
    ret 
    
    
#🧠️🧠️🧠️🧠️🧠️🧠️🧠️🧠️🧠️🧠️
#xornn? 
#https://www.intel.com/content/www/us/en/developer/articles/technical/binary-neural-networks.html
#https://mohitjain.me/2018/07/14/bnn/ = summary of   [https://arxiv.org/pdf/1602.02830.pdf]
#🧠️🧠️🧠️🧠️🧠️🧠️🧠️🧠️🧠️🧠️
.globl q_bit_mode_switch 
q_bit_mode_switch :

#https://arxiv.org/pdf/quant-ph/0406210.pdf   <binary quantum algos FAST (macro informed ;) = good choicez

#nice 2 have here, cuz can inform jbhdl / other archs w/e 

#ezist fastest binary blockchain miner 
#diffie helman? rsa ? something else / quantum matrix? (wat "WAS" it? ) 
#The simplest form is Diffie-Hellman key exchange. (vs elgamal/rsa/ ecc)
#can we just get simple hash blocks in xasm/jbhdl?(2 inform beyond? 


#Public key cryptography is a security protocol that ensures the safety of data that we exchange through a transaction in a blockchain network.

start_q_bit_mode_switch :
end_q_bit_mode_switch:
 popq  %rbp
    ret 
    
    #🕋️🧊️
   #how i would represent matrix of binary? (as stack of ?x?'s < ?= dec.bin value of entire bin string ;)
https://iq.opengenus.org/3d-array-in-c/  < 3d 2 2d 2d 2 3d array "real.c" code ! 

#can i use this for quantum/ binary mex early on?
#can we make it do 1d 2 2d (makes jbhdl = jbhdl3d...)

#can we start mex by doing a "tripple+ meta verse" of stacking matrix of 3x3x3[3x3x3's(3x3x3)]?)get it?
#just have atoms moving around in there +- digimon w/e ? (side by side "top up .botum up / mid out<tetris+

#trunking this data (versioning fx asap?) (will save so much needed space 4 "ngn" in long run...
#rendering the 3d matrix using "light sim?" etc...

#seems like u may wait 2 do this till u have "nand 2" or gtron. i wanna see how they render matrix...
#but versining fx will tx if u need 2 jump the gun..(can help u organize dev...)
#🧠️🧠️🧠️🧠️🧠️🧠️🧠️🧠️🧠️🧠️

#bootloader kernel for nvme ? (research at least how on x86 ? 
#may wanna get 2 ur own asm[gigaV/@] asap but yea...
#doestn' hurt 2 harden research 4 capstone...
#also . just finish proposal quickly after this and get close as "JBASM" as possible!


#would like 2 model / use emulated 4004 or w/e plus nvme emulator 2 bootload
#using our own emulator ? or w/e 
#theres risc emulators/ x86 quemu + virtual mounting disks etc...
#its easy 2 mess with those loopdisks, there not "x86 related" 
# So now you have a file acting as a hard drive, through Linux's loop device mechanism. At this point you want to format it with mke2fs /dev/sdb 
#etc...

#how quick could this be emulated / even run on x86?(as booting kernel?)
#not using "UEFI" just going str8 2 nvme...
#could inform how we bootload onto other devices compare with [@/tron/etc
#IE ; get us some nvme , research 4 proposal as well j, 
#then just turn that in and make jbhdl, we will look more into it after review/
#3rd task, lul

#dfpga ? bitstream?


#mex ? multiverse versioning ? (espeically for "NN-states" ) , digimon? the code will transfer...
#cli monopoly/ pacman/ tetris/ minecraft mychara etc ? multiverse sim big bang 3d matrix mmorpg p2p?
# we can always re do it in jbasm ez ? get started ? then thread thru get neural net doing it? 

#obviously were not gonna do gnome gui out and kernel vga at same time. so get some control and scope.

#any of these formulas will transfer (back and forth) for jbasm/xasm. but how 2 flash "NVME" boot? 
#is this a good time to do some "MACRO LEVEL" kernel/(basicaf/pagetable+io) dev research?
#how does grub/basic uefi/bios work on a "RAW NVME" surely nvme doesn't give a fuck about "bios.uefi"...
#(or it DOES but so can u...
#research even let us bypass "uefi only" on laptop ? sort of research...

#_________________
#🆕️
#🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🎸️
#🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️
#we just push first 4 for now..
#when we deal with buffer we will rewrite a few things
#maybe leave olds w/e 
#were keeping it simple 2  get "infrastructure"fast[tek-tree
 .equ token_a , 24
 .equ token_b , 16
 .equ token_I , 8  #leaving lowercase for ins, since dunno
 .equ token_O , 0 #i may do out as lowercase 2ndhalf alpha
 		   #and leave upper 4 symbols but w/e



#🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️
#👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️
#ultinately were gonna do right from buffer 2 
#convert  2 "tokens " and even do the logic
#maybe(seems) all in 1 fx (intead of putting into "4 ascii's"
#but thats demonic. we weren't at that level b4
#so its ok that their broken up <3 
##👿️
#(we had problems so ur good)cmon didn't even know that
#speed run should be ez 
#m8 we reg hammer out micro specs dont think its so ez
#👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️
#☪️
#1 got done fast , cuz were keeping it ez. and not getting fancy 'KISS"👩🏻‍🎤️
#.globl token_logic_3x  #post _1 📍️📍️ (but still only "4"(1prog) ignore [x8(12)]
#this is just gonna strip first or last 4 w/e im skipping 2 buffer. 
#that other thing isn't even relevant.
#unless u switch directions and use it 2 do multi chips...
#so then not skpping it , doing 3xmultichip b4 infinte buffer <3 
#📍️📍️📍️ = chip.o 2 chip.i  (nand out of nots) 
#📍️📍️📍️📍️ = #.globl token_logic_buffer (but still only "4"(1prog) ignore [buff]
#📍️📍️📍️📍️📍️ = remember we haven't actually tokenized the binary yet
#.globl tokenizer (also head parsing 2 see if tokens already (how?) 

#📍️📍️📍️📍️📍️ 📍️  = how to signal 8+bit program to post tokenized logic ? 

#thats a really good question cuz we actually dont have "MUX" etc "tokenized"

#"how many are there?" APPENDIX 4 = N@ND2 = "37 differnt chips"
#ASCII ? = 32 max unique chars,but you have already used like 8 of them...
#ofc the tokens we were using were only for 4 bit... but...


#dont be making things that "aren't chips" just move onto mux etc

#👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️
#when u are able to optionally parse 4bit or mux . this code will be BEAST
#also its transferable 2 other archs, forever. 
#take ur time , u will get there quicker than u think
#👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️👹️

.globl token_logic_buff_1  #(0 was 2 messy 
token_logic_buff_1:
 pushq %rbp 
    movq  %rsp, %rbp
    #_________________________
 start_token_logic_buff_1:  
 
  movq $ascii_sing, %r11 # may swap this for a 4 out 2 test no " "'s first
  		#when mux requires multiple inputs we will throw into a
  		#64(5)bit "register" and 2 indicated the end we will push
  		#a "." or somthing on back of it. 
  		#i may even move the place of the instruction 
  		#2 the front of the function but w/e
  		#👹️👹️👹️👹️ dunno, baby steps , were very closez
  	movq $ascii_4_test_0 , %r12
  	movq $ram_64_0 , %r13
  	movq $0 , %r14
  	
  	 buffer_in_fx_1:
    
    mov $BUFFER_DATA, %rax #vetted, this should work w/o weird pushes ;) 
    mov $BUFFER_SIZE, %rsi #vetted, this should work w/o weird pushes ;) 
    mov $0, %rdi
    cmp $0, %rsi
    je end_token_logic_buff_0  # next_bit_fx_0
    
     ignore_loop_fx_1:  	# was convert_loop:
    		#will move to external file and do 'nand' 
    		#or do them out of the not gate as tx 
    mov (%rax,%rdi,1), %cl  # lower byte of rcx
    
    
  # need to jump before doing this if byte is not "1 or zero" (its editing "[,]"

#call exit  #❎️ stopping MAR 31 : 4:06 (segfaults lower !?)📍️
cmpb $10, %cl #ascii for 'n\ '
je next_bit_fx_1
cmpb $32, %cl #ascii for ' '
je next_bit_fx_1
cmpb $44, %cl #ascii for ','
je next_bit_fx_1
cmpb $91, %cl #ascii for '['
je next_bit_fx_1
cmpb $93, %cl #ascii for '['
je next_bit_fx_1 #

#-----------------------------#
store_bit_fx_1:
#mov %cl, (%r12 ,%rdi,1)
mov %cl, (%r13 ,%rdi,1)
mov %cl, (%rax ,%rdi,1)
push %rcx 
inc %r14
#-----------------------------#
  next_bit_fx_1:
    inc %rdi
    #decl %
    cmp %rdi, %rsi # - 4? 

    jne  ignore_loop_fx_0
    #🚨️🚨️🚨️🚨️🚨️🚨️🚨️🚨️🚨️
   #     mov %rdi , %rbx	#❎️
   # call exit        #❎️
    
    keeping_it_safe_1:


#may rather move into "ascii buffer" and pull out each one at a time
#there was no need 2 push them. i made"RAM" for them
#rdi wont be a count , ur literally just stripping 
#and putting into ram" THIS WOULDN"T BE THE ENTIRE BUFFER , multi chip
#we will deal with it "program by program..."
#try 2 keep things less ram intensive as possible , cuz u maynot have ram
#stack is fine

 
 #_____________________________
    end_token_logic_buff_1:
 popq  %rbp
    ret 




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
 start_buff_header_parse_0:
 
 
  #_____________________________
    end_buff_header_parse_0:
 popq  %rbp
    ret 
#+++++++++++++++++++++++++++++++++++++++++++++0000
#+++++++++++++++++++++++++++++++++++++++++++++1111
.globl convert_to_ram_64_1
convert_to_ram_64_1:


 pushq %rbp 
    movq  %rsp, %rbp
    #_________________________
 start_convert_to_ram_64_1:
 
 #cut up by byte size (all can store in 64 however. 
 ##(max is 8bit(32prog) tbh ,not gonna have 255+ tokens 4 chips lol
 							
 
  #_____________________________
    end_convert_to_ram_64_1:
 popq  %rbp
    ret 
#+++++++++++++++++++++++++++++++++++++++++++++1111
#+++++++++++++++++++++++++++++++++++++++++++++GOL
.globl ram_to_logic_0
 ram_to_logic_0:
 
  pushq %rbp 
    movq  %rsp, %rbp
    #_________________________
 start_ram_to_logic_0:
 
 
 #loop until buffer is empty (not ram lol its already clear) 
  #_____________________________
    end_ram_to_logic_0:
 popq  %rbp
    ret 
    #+++++++++++++++++++++++++++++++++++++++++++++GOL

#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️


			#========== * CONVERT TO RAM64 * ==========#
#tokens 2 ram? buff 2 ram? 
convert_to_ram_64:
    push %rbp
    mov %rsp, %rbp
    
    go_buff: 
  movq $ascii_4_test_0 , %r12
  	movq $ram_64_0 , %r13  
    
    
    mov $BUFFER_DATA, %rax
    mov $BUFFER_SIZE, %rbx
    mov $0, %rdi
    mov $0, %rsi
    cmp $0, %rbx
    je end_not_loop
    
 nu_not_loop:  	# was convert_loop:
    		#will move to external file and do 'nand' 
    		#or do them out of the not gate as tx 
    mov (%rax,%rdi,1), %cl  # lower byte of rcx
    
    
  # need to jump before doing this if byte is not "1 or zero" (its editing "[,]"


cmpb $10, %cl #ascii for 'n\ '
je next_bit
cmpb $32, %cl #ascii for ' '
je next_bit
cmpb $44, %cl #ascii for ','
je next_bit
cmpb $91, %cl #ascii for '['
je next_bit
cmpb $93, %cl #ascii for '['
je next_bit
  
  
 cmpb $'#', %cl 
jne to_64_ram_0
comment_out_0:
 mov (%rax,%rdi,1), %cl #❣️this is buffer value, into %cl ;) 
 inc %rdi
 cmpb $10, %cl #ascii for 'n\ '
 jne comment_out_0
cmp $64 , %rdi # %rbx (uses rediculously number like 200)
    jne  nu_not_loop
#❣️COMM=ON (trailing  32"."'s now . should still parse head 2 clean
 #can have spaces|/n\ outs "at end" dont do anything more fancy ✝️🚢️
 
 
 to_64_ram_0: 
 
 

   mov %cl, (%rax,%rsi,1) #buffer out debug
   mov %cl, (%r12,%rsi,1)  # 4 only out
   mov %cl, (%r13,%rsi,1)  # = 64_ram_in
		inc %rsi 
    next_bit:
    inc %rdi
    cmp $64 , %rdi # %rbx (uses rediculously number like 200)
    jne  nu_not_loop
    
    #🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️
  clean_periods_0:   #clean trailing "."'s if any 
  
 #this code is actually meant 2 support even 32bit-progs
 #so u need 2 clean the ".' of here then pass 2 logic *UR DONE"
 #we will parse header after this (things are in ram or will be?)
 #should we will parse header after. w/e we will see when 
#"relooping? = NO!!!🐣️🐣️🐣️🐣️🐣️🐣️🐣️🐣️🐣️🐣️
# (actually u should only pull in buffer based on 
#what header dictaed, if u do that before 
#then u can put a limit on "cmp $64" wont count over prog lengths
#u also need 2 save that number(bytesize) somewhere... 
#🐣️🐣️🐣️🐣️🐣️🐣️🐣️🐣️🐣️🐣️🐣️🐣️
#just do it now instead of cutting of tail < ignorant
#🧻️📅️📍️
#🚿️ APR 2 
#y we have 2 parse first 4 first? 
# so we know "when 2 stop loop ( 1rst prog only  1x*4/4x*16/8x*32
#u CAN do it in seperate fx. throw in RSI then use , 
#or just do at head w/e 
#🧻️📅️
 # 🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️🍳️
  #just re put chars in same ascii like 2 upper , skipping '.''s
  #logic will be in new fx, nothing is on stack <3 
  
    

end_not_loop:
 
 end_convert_to_ram_64:
    pop %rbp
    ret
    
#☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️☪️
token_test_prog_2x:
.ascii "_0=a _a!b "   #skip white space ? how? (do it now (also doing = 


.globl token_logic_buff_0
token_logic_buff_0:
 pushq %rbp 
    movq  %rsp, %rbp
    #_________________________
 start_token_logic_buff_0:  
 #🐣️🐣️🐣️🐣️ 🐣️🐣️🐣️🐣️go for 2x ,can add more l8r2 ignore
 #basically we dont know how many "progs" will be on buff
 # so were gonna go "4 at a time" (forever)
 #its gonna be the same thing but its about time
 #either we get a check length fx (will w8 for buff
 #and focus on multi chip , babysteps always works <3
 #❗️❗️❗️❗️ ❗️❗️❗️❗️ DO MIND THE " " WHITE SPACE NOW🐾️
 
 #🐾️ if ur gonna ignore white space (or other things like comments
 #🐾️ u might wanna push EVERYTHING 2 stack first , but maybe not...
 #👨🏽‍🚀️
 #look at "HDL.KNOT🎖️ , somehow it does "buffer length" while still iterating
 #  just go for it and not waste time
 # just pull from file but u could always write 2 file first if that helps
 #🎖️do something better than pushing bufflen if u can (or not its good tbh)
 #doing it by buffer is a whole other way , and its gonna be the long term 
 #way so just do it by buffer <3 [do it "HDLKNOT🎖️ way<3]
 #👨🏽‍🚀️

   movq $ascii_sing, %r12
   ########
# movq $token_test_prog_buff , %r11 # 
 

 
 #➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️💍️
#🎖️🎖️🎖️🎖️🎖️🎖️🎖️🎖️🎖️🎖️🎖️🎖️🎖️🎖️🎖️🎖️🎖️🎖️
 buffer_in_fx_0:
    
    mov $BUFFER_DATA, %rax #vetted, this should work w/o weird pushes ;) 
    mov $BUFFER_SIZE, %rsi #vetted, this should work w/o weird pushes ;) 
    mov $0, %rdi
    cmp $0, %rsi
    je end_token_logic_buff_0  # next_bit_fx_0
    
     ignore_loop_fx_0:  	# was convert_loop:
    		#will move to external file and do 'nand' 
    		#or do them out of the not gate as tx 
    mov (%rax,%rdi,1), %cl  # lower byte of rcx
    
    
  # need to jump before doing this if byte is not "1 or zero" (its editing "[,]"

#call exit  #❎️ stopping MAR 31 : 4:06 (segfaults lower !?)📍️
cmpb $10, %cl #ascii for 'n\ '
je next_bit_fx_0
cmpb $32, %cl #ascii for ' '
je next_bit_fx_0
cmpb $44, %cl #ascii for ','
je next_bit_fx_0
cmpb $91, %cl #ascii for '['
je next_bit_fx_0
cmpb $93, %cl #ascii for '['
je next_bit_fx_0 #
#call exit  #❎️ 

   next_bit_fx_0:
    inc %rdi
    cmp %rdi, %rsi # - 4? 
    jne  ignore_loop_fx_0
    #🚨️🚨️🚨️🚨️🚨️🚨️🚨️🚨️🚨️
    #FUCK NO. i think u need 2 put (4/8 w/e (assuming tokenized so just 4)
    #since ur stripping it i dunno tho thats ugly u may wann do w/o spaces 1rst
    		#into a "ascii buffer" and we will pull out if it 
    		#THIS , is why i said one step at a time, u may 
    		#need 2 dial it back 2 something more manageable
    		#cuz i keep getting segfaults..
	#we dont have time 2 waste, and they cant focus...

##🫀️
mov $0 , %rdx
 push_4_fx_0:  #🫀️
#this is where u should simply push 4 2 stack.
#u should do all things here if stack has 4 on it now...
#THEN u can do "next bit again.
#🫀️TRANSPLANT "token_logic_1" into here now #🫀️
 push %rcx 
inc %rdx
cmp $4, %rdx # - 4? 
    jne  push_4_fx_0
    # DO LOGIC HERE (should u pop 2 new fx or just use this one?
    #if u do use external fx , u will return "RIGHT HERE "can w8 tho w/e
jmp keeping_it_safe_0



keeping_it_safe_0:
mov $0 , %rdx

mov 24(%rsp) ,  %rax 

mov 16(%rsp) ,  %rbx 
mov 8(%rsp) ,  %rcx  #instruction  #🔴️ is "!" just as expected. begin logic "mar 27
mov (%rsp) , %rdx #output

#📳️📳️📳️📳️📳️📳️📳️📳️📳️📳️
pop -8(%rsp)
pop -8(%rsp)
pop -8(%rsp)
pop -8(%rsp)
#📳️📳️📳️📳️📳️📳️📳️📳️📳️📳️
#📤️📤️📤️📤️📤️📤️📤️📤️📤️📤️
#can call external fx in future, but will leave here for now...
#call exit  #❎️ 
logical_not_fx_0: 

# cmp $'!' ,%rcx   #] ON 
#cmp $'!' , 8(%rsp)

   jne logical_nand_1
   
   
   		#call exit        #❎️ 					#😇️
   #🎖️this is gonna work forever. just keep pushing 
   #🎖️could be one of most complex things u ever have 2 code (once)<3
   
   #SHOULD ONLY BE 1 VALUE 4 NOT, BUT I WONT ASSUME WHICH SO COMPARE BOTH WITH
# "_" = EMPTY CHAR (mov the other into "rdi"
#gonna do buffer soon but just finish this first. (and even do 3 chips
#so we know how we wanna handle buffer
compare_rax_fx_0: 
 cmp $'_' , %rax
jne compare_rbx_fx_0
 mov %bl , %cl 
compare_rbx_fx_0: 
 cmp $'_' , %rbx
jne logic_result_fx_0
 mov %al , %cl 
 
 
   logic_result_fx_0:

  
 # sub $'0' , %cl
  # mov %rcx, %rbx #❎️ 
 #call exit        #❎️ 
   
    xor $1 , %cl   
 add $'0' , %cl 
 mov $0 , %rax
 #❕️ #❕️ #❕️ #❕️ #❕️ #❕️ #❕️
   mov %cl, (%r12,%rax,1)
   # instead of doing this, u need 2 put it in the alphabetical buffer
   #that it asked for...
#there are ways 2 do this , even using the stack...
    #❕️ #❕️ #❕️ #❕️ #❕️
         #🎖️
        
    jmp pre_exit_fx_0
   logical_nand_fx_0: 
   
   pre_exit_fx_0: 
   call exit        #❎️ 
#jmp end_token_logic_buff_0        #❎️ 
#📤️📤️📤️📤️📤️📤️📤️📤️📤️📤️

  
 #_____________________________
    end_token_logic_buff_0:
 popq  %rbp
    ret 
 
 #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️ #☪️☪️☪️☪️
   

token_test_prog_theory:
.ascii "_0=a 1_=b ab=c "#tf c = "= or !" ... as a new chip? for instruct... mebbe
#probalby not thot u shouldn't be doing stuff like that u really  should 
#start flipping up into *8/16 bit inputs doing MUX ETC

#u can try signaling a 16 bit program as a token???

 #nand as both built in but soon pull from 'chips/@.txt'?		#i think it will be ezier 2 validate external chip using nand 1rst then do "NOT"
#there si no not chip its just 1 chip , but maybe u can still use it like that ...
#instead of using "xor 1 " ? (u could literally pull down but lets kiss )
#this isn't electronic sim yet, DEFINATELY should wait  4complexity > post JBASM🔦️

.globl token_logic_x 

#☪️





token_test_prog_1:
.ascii "_0!a"   #og "01!a" # 48,49,33(!),97(a) #https://commons.wikimedia.org/wiki/File:ASCII-Table.svg
#____________________________________⚔️
.globl token_logic_1
token_logic_1:
 pushq %rbp 
    movq  %rsp, %rbp
    #_________________________
 start_token_logic_1:  
 
   movq $ascii_sing, %r12
   ########
 movq $token_test_prog_1 , %r11 # 
 

 
 #➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️➿️💍️
 ################
     movq  $0, %rdi  #inc
    movq  $4, %rsi  #prog si.ze #maybe 4 buffer...
  
   push_program_tokens: 
   mov (%r11,%rdi,1) ,%al 
 						 # sub $'0' , %rax
   push %rax
   inc %rdi
   
   cmp $4 , %rdi 
   jne push_program_tokens
   
   movq  $0, %rdi
    
   #tokens maybe in reverse order now... ➰️
   
    program_logic: 
  #######################
  #🪄️
 # mov (%rsp) ,  %al #❗️just use them at their addr tbh
  		#❗️this is why we pushed (2 save regs...
   
 #  mov (%rsp) ,  %bl  #0=O,8=! , (its backwards...) 
   #this is making me wonder why we dont just move them
   #into the regs... let me try some stuff...
#yes it wont let me compare stack positions so...
#u should probably just have moved them in
#no... it dont work like that (,?,)

mov 24(%rsp) ,  %rax 

mov 16(%rsp) ,  %rbx 
mov 8(%rsp) ,  %rcx  #instruction  #🔴️ is "!"
mov (%rsp) , %rdx #output

#superficial pops 2 stop segfault (just 4 ease out logic out <3)
pop -8(%rsp)
pop -8(%rsp)
pop -8(%rsp)
pop -8(%rsp)

 logical_not_1: 
 #mov $'!'
 #  cmp %rsi , $'!'
 #📍️ON
 cmp $'!' ,%rcx   #] ON 

   jne logical_nand_1
   
   
   							#😇️
   #🎖️mar_23= mar30 WEEK LATER (STILL ASSUALT BUT IGNORE < Dru (prom) < RITETRAK
   
   #SHOULD ONLY BE 1 VALUE 4 NOT, BUT I WONT ASSUME WHICH SO COMPARE BOTH WITH
# "_" = EMPTY CHAR (mov the other into "rdi"
#gonna do buffer soon but just finish this first. (and even do 3 chips
#so we know how we wanna handle buffer
compare_rax: 
 cmp $'_' , %rax
jne compare_rbx
 mov %bl , %cl 
compare_rbx: 
 cmp $'_' , %rbx
jne logic_result
 mov %al , %cl 
 
 
   logic_result:

  
  sub $'0' , %cl
 #  mov %rcx, %rbx 
# call exit
   
    xor $1 , %cl   
 add $'0' , %cl 
   mov %cl, (%r12,%rdi,1)
         #🎖️
        
   
    
   logical_nand_1: 
   

   

     #____________________________
    end_token_logic_1:
 popq  %rbp
    ret 
#_________________________⚔️
#☪️
#🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️🟢️
#🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️
#🛑️i didn't delete this cuz i "t_l_1" isn't done...
#doing token_logic_2 cuz 0&1 hav lots of notes+-kruft/xp 

.globl token_logic_2
token_logic_2:
 pushq %rbp 
    movq  %rsp, %rbp
    #_________________________
 start_token_logic_2:  
 
   movq $ascii_sing, %r12
   ########
 movq $token_test_prog_0 , %r11 #
 #its not gonna let u move ( ,?,) into w/e 
 #go 2 t_l_1  #🎖️
 
    #____________________________
    end_token_logic_2:
 popq  %rbp
    ret 
   # ---------------------------------------

#🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️
#token_logic_0
#this DOESN"T "TOKENS are in(diff) "ASCII..." it shouldnt'
#cuz they would all be in 1 ascii. parse them out now.
#the CAN stay on the stack "RBP" tbh ...
#however i will leave "rABCx" open incase they need 2 pass
#

.globl token_logic_0   #GODL = TOKENIZATION ⚔️⚔️⚔️⚔️
		#we will tokenize inst for now , then do full prog
		#⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️
		
		#token_test_prog_0 # = 10&a
		
token_logic_0:
 pushq %rbp 
    movq  %rsp, %rbp
#_________________________
 start_token_logic_0:  
 #were not tokenizing (we assume its done, tho its not (so it has somewhere 2 go when it is ;)
 
movq $token_test_prog_0 , %r8  #01&O
movq $ascii_sing, %r12

mov (%r8,%rdi,1) ,%rax     

 parse_instruction:
 movq  $0, %rsi   #actually using "rax and rbx for a&b duh.
   movq  $0, %rdi  # '3=O' 2='inst' (no)its backwards? 🪤️	
   		#🧀️<no, its not backwards its ready 2 go...
   		#ie i wont push it on stack or anything
   		#altho i may for"buffer"...#🧀️<
   		#we will do buffer asap 
   		#just do this first fast. 
   	#❗️	########🧱️🧱️🧱️🧱️
   		#(u need 2 push it and use addresses tbh
   		#or u have 2 loop thru "ASCII"
   		#🧀️#🧀️#🧀️#🧀️#🧀️
   		
   		#xp=i dont think u can get away with doing 
   		#buffer w/o having 4infra first. 
		#BUT WERE NERE END OF INFRA BUILD
		#will use buffer after 8/12/16 test w/e 
		#🧀️#🧀️#🧀️#🧀️#🧀️#🧀️#🧀️
   ########🧱️🧱️🧱️🧱️
   #🧮️🧮️🧮️🧮️🧮️🧮️
   #how u wanna store out for rein? do another chip
   #right after , then we will crack open book
   #AND NAND FOLDER>...🧮️
   #never mind missing some ez infrastruct i dont 
   #wanna make useless scaffold (we dont have infin time)
   #if we get 2 "JBASM" faster then nothing matters ...
   #however for "JBASM" i think "no syscalls" 
   #we will bitbang gigatron/riscv or something...
   #we alreayd have binary parser...
   #if it needs 2 be more sophisticated(clock w/e)
   #we will make it so , were already doing clock4 book...
   #🧮️🧮️🧮️🧮️🧮️🧮️🧮️🧮️🧮️🧮️
   mov (%r8,%rdi,1) ,%r11 
  # sub $'0' ,%r11 
#call exit
#mov %r11, (%r12,%rsi,1)

 #____________________________
    end_token_logic_0:
 popq  %rbp
    ret 

#🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️🪀️



#token_logic_advanced_0

#bin_logic_0 (why do we nee tokens?(for "nand+-[cmp]" may as well ;) 


#🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️🤺️

#⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️⚔️
#token_in : #from headeR? no just assume ur already approving tokens 

 .equ test_pos_0 , 16
 .equ test_inc_1 , 24
 .equ test_sum_2 , 32
 
 #🥼️🥼️🥼️🥼️🥼️🥼️🥼️#🥼️🥼️🥼️🥼️🥼️🥼️🥼️#🥼️🥼️🥼️🥼️🥼️🥼️🥼️
 ascii_4_i_test:
 #💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️
.ascii "1011"   #a2b is only doing "15" 4 some reason...
		#i think its going backwards tbh...
		#u should just beable 2 dec..
		
				
#< ur gonna have values liek this coming out backwards all ur life
#< theres really not a lot u can do but be on the lookout for it...s
	
	#👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️
	#SOL? : why it wasn't in expected ordeR? = 
	#we used raw ascii instead of pushing it 2 stack!	
	#👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️👨🏾‍🚀️
	#💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️💯️

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
   	
   movq $16, %rax #replace size?

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






