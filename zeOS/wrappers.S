#include <asm.h>
ENTRY(write)
	push %ecx
	push %edx
	push %esp
	push %eip
	push %ebp
	mov 4, %EAX
	sysenter $0x80
	cmp %eax, $0
	jge return
	mul -1, %eax
	mov %eax, registre errno
return:
	pop %ebp
	pop %eip
	pop %esp
	pop %edx
	pop %ecx
	sysexit


ENTRY(gettime)

		
