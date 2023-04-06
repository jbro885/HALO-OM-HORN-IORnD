#sudo apt-get update -y

#sudo apt-get install -y gnu-efi

file=${input%.*}

#as "$file".s -o "$file".o

#🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️
#https://wiki.osdev.org/GNU-EFI
#u need 2 find where "YOUR EFI HEADERS ARE STORED ON UR CPU

#where are they? 
#https://www.rodsbooks.com/efi-programming/hello.html

#https://wiki.osdev.org/GNU-EFI#Converting_Shared_Object_to_EFI_executable
#< if u actually "READ THIS" it will tell you "EVERYTHING" 
#would be nice 4 "CAPSTONE, but would also be nice to try 


#https://github.com/vathpela/gnu-efi/blob/master/gnuefi/crt0-efi-x86_64.S
#https://github.com/vathpela/gnu-efi/blob/master/lib/x86_64/efi_stub.S
#< the legit "EFI" headers (in ATT assembly code?)

#🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️🈴️

#https://wiki.osdev.org/GNU-EFI#Creating_an_EFI_executable
#gcc -I../gnu-efi/inc -fpic -ffreestanding -fno-stack-protector -fno-stack-check -fshort-wchar -mno-red-zone -maccumulate-outgoing-args -c "$file".c -o main.o

##########ON *just paste into cli #########
#gcc -I../gnu-efi/inc -fpic -ffreestanding -fno-stack-protector -fno-stack-check -fshort-wchar -mno-red-zone -maccumulate-outgoing-args -c efi-hello.c -o main.o


#gcc -I../gnu-efi/inc -fpic -ffreestanding -fno-stack-protector -fno-stack-check -fshort-wchar -mno-red-zone -maccumulate-outgoing-args -c main.c -o main.o
#################ON 

 #as -g --gstabs+ "$file".s -o "$file".o
 # ld -o "$file" "$file".o 

#https://forum.nasm.us/index.php?topic=2774.0
as boot.o bootx64]pure.s   # -f elf64 -o <NOPE
ld -znocombreloc -shared boot.o -o boot.so

objcopy -j .text -j .data -j .r
odata -j .bss -j .dynamic -j .dynsym -j .rel -j .rela -j .reloc    --target=efi-app-x86_64  boot.so bootx64.efi


objcopy -j .text -j .sdata -j .data -j .dynamic -j .dynsym  -j .rel -j .rela -j .rel.* -j .rela.* -j .reloc --target efi-app-x86_64 --subsystem=10 boot.so bootx64.efi

cp bootx64.efi M/EFI/BOOT/bootx64.efi
	qemu-system-x86_64 -cpu qemu64 -bios OVMF.fd -drive driver=vvfat,rw=on,dir=M 

#####################
#https://stackoverflow.com/questions/67138035/how-to-set-pe-header-characteristics-flags

#ld -shared -Bsymbolic -L../gnu-efi/x86_64/lib -L../gnu-efi/x86_64/gnuefi -T../gnu-efi/gnuefi/elf_x86_64_efi.lds ../gnu-efi/x86_64/gnuefi/crt0-efi-x86_64.o main.o -o main.so -lgnuefi -lefi


#objcopy -j .text -j .sdata -j .data -j .dynamic -j .dynsym  -j .rel -j .rela -j .rel.* -j .rela.* -j .reloc --target efi-app-x86_64 --subsystem=10 main.so main.efi

#cp main.efi M/EFI/BOOT/bootx64.efi

#qemu-system-x86_64 -cpu qemu64 -bios OVMF.fd -drive driver=vvfat,rw=on,dir=M 

#this will open a "computer efi menu" ,(go down 2 efibootmenu) u can then push thru and get 
#Shell> fs0: ,  cd EFI cd BOOT bootx86.efi < just runs 
#computer 2 say hello world, i wouldn't mind making a "USB BOOTABLE" and doing on surf
#but also i rather just get "att.s" going ... 
#will i do kernel if this works? maybe, maybe ill just use the same principles
#2 make my own efi library with less ignorance. i still rather have mono-kernel
#but at least no one is intimidated by efi ;) 
#########################

#as -o bootx64.o bootx64.s

#ld -dynamic-linker /usr/lib64/ld-linux-x86-
#64.so.2 -o bootx64.so bootx64.o -ldl

#objcopy -j .text -j .sdata -j .data -j .dynamic -j .dynsym  -j .rel -j .rela -j .rel.* -j .rela.* -j .reloc --target efi-app-x86_64 --subsystem=10 bootx64.so bootx64.efi

#cp bootx64.efi M/EFI/BOOT/bootx64.efi
#	qemu-system-x86_64 -cpu qemu64 -bios OVMF.fd -drive driver=vvfat,rw=on,dir=M 
