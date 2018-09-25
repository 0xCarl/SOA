#include <asm.h>
ENTRY(write)

	mov %eax,4
	sysenter $0x80
	cmp %eax, $0
	jge return
	mul -1, %eax
	mov 