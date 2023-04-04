#💀️ DAEDELUS (going wellso far Mar27 (printed A
#wont compare still ...moving on #💀️
#https://www.youtube.com/watch?v=APiHPkPmwwU
########################

.section .data

.section .text

.global _start


#############################

_start:
#mov  %sp, %bp #.16 is not ready for stack based
#❤️‍🩹️
movb $4 , %bl
movb $4 , %cl   #the only ones that work in .16 ? 
#💀️
#
cmp %bl , %cl #doesnt' work dunno nasm "would" but dont care
#💑️: apperantly i do have compare if types match...

#💀️
#📑️
#https://bugs.launchpad.net/ubuntu/+source/ipxe/+bug/1843394
#📑️
#❤️‍🩹️
#je abc_loop

abc_loop:
mov $14, %ah
mov $65, %al 
int $0x10	

jmp abc_loop


#jmp $ is fake / nasm...

########
# https://commons.wikimedia.org/wiki/File:ASCII-Table.svg
 ##########
 msg:
    .asciz "hello world\n"  #do ur own newline 
    len = . - msg     
#👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️
   .org 510             #why? (according 2 "HARD ARCH"?
.word 0xaa55	#why ? (according 2 "HARD ARCH"?





#👨🏽‍🚀️ we may do this , but it maynot be immidiately 
#👨🏽‍🚀️i dont think 8080/86.4 will be that hard 2 emulate after u do 4004 ...
#👨🏽‍🚀️i literally think its counter productive and "premature" "impatient"
#🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️
#if u were 2 do it(poke in a bit), the reason would be 2 understand the hardware
#and 2 beable 2 "NEED" 2 look for the proper hardware information...
#🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️🤖️
#👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️
#XCEPTION : THIS BUT ITS IN NASM BUT THIS IS WHAT U JUST TRIED 2 DO + more
#[start here]
#🎬️🎬️🎬️🎬️🎬️🎬️🎬️🎬️🎬️🎬️
#https://www.youtube.com/watch?v=APiHPkPmwwU
#Making an OS (x86) Chapter 2 - BIOS, Printing the Alphabet, Conditional Jumps
#Making an OS (x86) Chapter 3 - Strings, Keyboard Input in BIOS 
#Making an OS (x86) Chapter 4 - Stack, Functions, Segmentation
#Making an OS (x86) Chapter 5 - Reading the disk with BIOS 
#👼️👼️👼️👼️👼️👼️👼️👼️👼️👼️👼️👼️👼️👼️👼️
#👼️if u can achieve this it will "fulfill prophesy" kill2 birds etd
#👼️go for it  "sticky keysS"
#👼️👼️👼️👼️👼️👼️👼️
#👿️👿️👿️👿️👿️👿️👿️👿️👿️👿️
#👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️👾️
#📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️
#R&D 
#GPT = "GUID" = disk id (ie disk u wanna write 2 ;) 👻️
#📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️📑️



#🕎️wiki🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️
#https://wiki.osdev.org/Boot_Sequence
# Master Boot Record

#The (legacy) BIOS checks bootable devices for a boot signature, a so called magic number. The boot signature is in a boot sector (sector number 0) and it contains the byte sequence 0x55, 0xAA at byte offsets 510 and 511 respectively. When the BIOS finds such a boot sector, it is loaded into memory at 0x0000:0x7c00 (segment 0, address 0x7c00). 

#🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️🕎️
#🧑‍🎓️🧑‍🎓️🧑‍🎓️🧑‍🎓️🧑‍🎓️🧑‍🎓️🧑‍🎓️🧑‍🎓️🧑‍🎓️🧑‍🎓️🧑‍🎓️

#https://wiki.osdev.org/Main_Page

################################

