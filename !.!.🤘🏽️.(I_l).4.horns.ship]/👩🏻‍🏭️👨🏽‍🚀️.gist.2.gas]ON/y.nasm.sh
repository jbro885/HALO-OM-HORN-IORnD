input=$1
file=${input%.*}

nasm -f elf "$file".asm -o "$file".o

ld -m elf_i386 "$file".o -o "$file"_nasm_exe


 echo $?
