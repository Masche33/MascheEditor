
#!/bin/sh

mkdir ./$1  2>/tmp/null
echo "Creating project $1"
cd ./$1

mkdir ./src 2>/tmp/null
printf ".intel_syntax noprefix\n.globl _start\n_start:\n    mov rax, 60\n    syscall\n" > ./src/main.s
printf "/bin\n/build\n_compile.sh\n_newproject.sh\nmaschEditor\n" > ./.gitignore
echo "Project created"