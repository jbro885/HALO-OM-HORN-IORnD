#https://gist.github.com/DGivney/7196bd7a9f21a12c9397bdcf9ae040d2

#this code is pretty nice (if u run an strace) ur doing all the "things"...
# just gonna need a "few mods..."] its "C-worthi tho..."]⛵️

##; Socket
##; Compile with: nasm -f elf socket.asm
##; Link with (64 bit systems require elf_i386 option): ld -m elf_i386 socket.o -o socket
##; Run with: ./socket

#%include    'functions.asm'  #calls print from read, just use strace

 .data

##; our response string
#response:
#.byte 'HTTP/1.1 200 OK', 0Dh, 0Ah, 'Content-Type: text/html', 0Dh, 0Ah, 'Content-Length: 14', 0Dh, 0Ah, 0Dh, 0Ah, 'Hello World!', 0Dh, 0Ah, 0h

  .section .bss
#buffer resb 255,                ##; variable to store request headers

.lcomm buffer, 255

.text
.global _start

_start:

    xor     %eax, %eax            ##; init eax 0
    xor     %ebx, %ebx            ##; init ebx 0
    xor     %edi, %edi            ##; init edi 0
    xor     %esi, %esi            ##; init esi 0

_socket:

    push    $6              ##; push 6 onto the stack (IPPROTO_TCP)
    push    $1              ##; push 1 onto the stack (SOCK_STREAM)
    push    $2              ##; push 2 onto the stack (PF_INET)
    mov     %rsp , %rcx           ##; move address of arguments into ecx
    mov     $1, %rbx            ##; invoke subroutine SOCKET (1)
    mov     $102 , %rax           ##; invoke SYS_SOCKETCALL (kernel opcode 102)
   int $0x80                ##; call the kernel



_bind:

    mov     %rax , %rdi		 #edi, eax            #; move return value of SYS_SOCKETCALL into edi (file descriptor for new socket, or -1 on error)
    push    $0x00000000    #; move 0 dec onto the stack IP ADDRESS
    push    $0x2923         #; move 9001 dec onto stack PORT
    push    $2              #; move 2 dec onto stack AF_INET
    mov    %rsp , %rcx 		# ecx, esp            #; move address of stack pointer into ecx
    push    $16             #; move 16 dec onto stack (arguments length)
    push    %rcx                 #; push the address of arguments onto stack
    push    %rdi                 #; push the file descriptor onto stack
    mov    %rsp, %rcx	# ecx, esp            #; move address of arguments into ecx
    mov    $2 , %rbx 		#ebx, 2              #; invoke subroutine BIND (2)
    mov   $102 , %rax		  #eax, 102            #; invoke SYS_SOCKETCALL (kernel opcode 102)
     int $0x80                 #; call the kernel

_listen:

    push    $1              #; move 1 onto stack (max queue length argument)
    push    %rdi            #     ; push the file descriptor onto stack
    mov    %rsp , %rcx		# ecx, esp            ; move address of arguments into ecx
    mov   $4 , %rbx		#  ebx, 4              ; invoke subroutine LISTEN (4)
    mov   $102 , %rax		#  eax, 102            ; invoke SYS_SOCKETCALL (kernel opcode 102)
     int $0x80           #    ; call the kernel

_accept:

    push   $0             # ; push 0 dec onto stack (address length argument)
    push    $0             # ; push 0 dec onto stack (address argument)
    push    %rdi            #     ; push the file descriptor onto stack
    mov    %rsp, %rcx	# ecx, esp            ; move address of arguments into ecx
    mov    $5 , %rbx		# ebx, 5              ; invoke subroutine ACCEPT (5)
    mov    $102 , %rax		# eax, 102            ; invoke SYS_SOCKETCALL (kernel opcode 102)
   int $0x80                   #; call the kernel
   
   
   #🍴️ (would removing fork stop looping? (well yes obviously...)
   #🍴️ remove fork and see if we get "static read write"
   _fork:

    mov    %rax , %rsi 		# esi, eax   ; move return value of SYS_SOCKETCALL into esi (file descriptor for accepted socket, or -1 on error)
    mov     $2, %rax		#eax, 2              ; invoke SYS_FORK (kernel opcode 2)
      int $0x80                #; call the kernel

    cmp    $0, %rax 	 #eax, 0 ; if return value of SYS_FORK in eax is zero we are in the child process
    jz      _read           #✂️  #  ; jmp in child process to _read

    jmp     _accept            # ; jmp in parent process to _accept

#✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️
#where the looping starts . dont do this if u dont want it 2  i guess.. 
#✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️✂️
_read:

    mov    $255, %rdx	# edx, 255   ; number of bytes to read (we will only read the first 255 bytes for simplicity)
    mov    buffer , %rcx	# ecx, buffer  ; move the memory address of our buffer variable into ecx
    mov     %rsi , %rbx       #    ; move esi into ebx (accepted socket file descriptor)
    mov     $3 , %rax          #    ; invoke SYS_READ (kernel opcode 3)
    int $0x80    #              ; call the kernel

 mov    buffer , %rax  #       ; move the memory address of our buffer variable into eax for printing   

#    call    sprintLF            ; call our string printing function
#just print it ur own way if u have a way (go head and do it now...)

#✂️


_write:

    mov    $78, %rdx           # edx, 78             ; move 78 dec into edx (length in bytes to write)
   # mov   $response , %rcx         # ecx, response       ; move address of our response variable into ecx
    # response would be cool but w/e u have currently looks sketch... it will beok soon tho < qlu 🔍️
    #🔍️ur fine <3🔍️
    # nn (do wgu pls now!)  sept25 sunday/mun/over *this is a fine place 2 stop <3 
    #i KNOW it will be alright cuz nasm works , just . be patient 
    #this has been easier for me in c 2 kinda but. theres some c refs u may want.
    #how does this as a c ref morph into "http get yahoo.fin?" 
    
    mov   %rsi , %rbx   # ebx, esi            ; move file descriptor into ebx (accepted socket id)
    mov   $4 , %rax # eax, 4              ; invoke SYS_WRITE (kernel opcode 4)
      int $0x80   #               ; call the kernel

_close:

    mov     %rsi , %rbx           ##; move esi into ebx (accepted socket file descriptor)
    mov    $6 , %rax              ##; invoke SYS_CLOSE (kernel opcode 6)
    int $0x80                   ##; call the kernel

    call exit
#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️#🐲️
 
#🏁🏁🏁🏁🏁
exit: #Table C-1. Important Linux System Calls 


#mov $201, %rbx# this is the status number we will

mov $1, %rax

int $0x80# this wakes up the ker

