👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️
MORALE : intel's documentation is "WAAAAY 2 complex" to "DIY" and "THATS WHY NOTHINGS DONE" (in ATT...) 
Do ur own chip first  (then GTRON/4004/AVR), and u will see more clearly 2 work with x86/arm/riscv w/e 

DO ! use interupts , IDT/GDT with ur own chip , and reference the concepts (compare 2 nand / gigatron (EVEN IN CAPSTONE w/e)
DO ! explore those concepts in capstone just 2 do it .
DO ! do capstone right now with this understanding 

DO NOT . TRY to DO THAT STUFF IN ATTT (just document understanding so u can do COMPARE GIGATRON/NAND + HAVE HARD REF/PROPOSAL)
👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️👨🏽‍🚀️
___________________👨🏽‍🎓️WGU CAPSTOPNE______________________🦒️🐖️
➰️

before u try to do any more . read thru  each section of
https://github.com/christianb93/ctOS/blob/master/doc/hardware/

make notes etc, till u feel u have a "handle on "
interupts etc.

(interupts for ,usb,harddrive, pci(2wifi), keyboard, camera, ++

HINT : intx80 is an interupt. so is intx60 (there are many more) 
	*mem, result is placed or pulled from R?X's 
	
	
	compaire bios/uefi interupts on ATT if u can 
	
	compare SURF/HP / iphone/droid MOTHERBOARDS 4 clues. 
	(how do chips w/o bios chip write kernel? (ard? eeprom?)
	
(we also do this in capstone. but u should have apriori knowledge


_______________CAPSTONE CALENDAR RND________________________🥌️
🗓️
🗓️
_______________________________________________________________


___________________IO PORTS (IDT)
🪳️
https://stackoverflow.com/questions/14848645/what-does-this-x86-assembly-language-code-with-io-ports-0x61-and-0x20-do
_________________________IDT________________________(intx80)
🪳️
https://stackoverflow.com/questions/773199/how-do-i-identify-device-specific-interrupts-on-x86
🪳️

https://stackoverflow.com/questions/58569102/the-lowest-level-function-to-handle-a-user-input
🪳️
https://stackoverflow.com/questions/14364057/x86-assembler-interrupts-code
_____________________________________________________ 

________________________GIT_DUMP_______________________https://github.com/christianb93/ctOS/blob/master/doc/hardware/


https://github.com/cirosantilli/ralf-brown-interrupt-list

https://samypesse.gitbook.io/how-to-create-an-operating-system/chapter-7

___________________LEGEND DUMP _______________
interupt hex legend = http://www.delorie.com/djgpp/doc/rbinter/ix/  (EZ)

https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/7-series-chipset-pch-datasheet.pdf

______________________PDF DUMP___________________
https://pdos.csail.mit.edu/6.828/2011/readings/ia32/MPspec.pdf

https://compas.cs.stonybrook.edu/~nhonarmand/courses/fa17/cse306/slides/14-devices.pdf

___________________DUMP _____________
https://stackoverflow.com/questions/548492/how-to-perform-low-level-io-with-a-usb-flash-drive-under-the-bios-compared-to-a
(ralph brown int list (


#__________________________________
https://comp.lang.asm.x86.narkive.com/mjv3PEkR/how-do-i-boot-x86-without-bios

(set up DTs, toggle PE bit in %cr0 and far jmp to your 32bit code
seg).

Q:what is %cr0   [helps setup GDTR/IDTR (LDTR?)]
A: control register

https://wiki.osdev.org/CPU_Registers_x86
#__________________________________

#https://stackoverflow.com/questions/72208705/how-to-generate-a-keyboard-interrupt-in-assembly-8086

#_________________________________________


https://stackoverflow.com/questions/8374185/how-do-i-access-the-usb-port-through-the-bios-in-16-bit-x86-real-mode


There's nothing in the PC BIOS to support USB I/O similar to all other I/O (keyboard, display, serial, parallel, disk, speaker).

The only USB-related thing you can get from the BIOS is support for USB keyboards and storage connected via USB (you can boot from them on modern PCs). Other than that, you have to implement your own USB stack.

 
>>> pcie bus = [graphics->monitor] 
[bridge/memcontroller-> processor , memory , cache]
[sas controller -> disks] [expansion bus -> kbd,usb's]
#_____________________________________














https://stackoverflow.com/questions/60283058/writing-interrupt-handler-in-x86-real-mode-assembly
