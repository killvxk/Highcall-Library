; Hc/NtUserCreateWindowStation
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserCreateWindowStation:DWORD

.DATA
.CODE

HcUserCreateWindowStation PROC
	mov r10, rcx
	mov eax, sciUserCreateWindowStation
	syscall
	ret
HcUserCreateWindowStation ENDP

ELSE
; 32bit

EXTERNDEF C sciUserCreateWindowStation:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserCreateWindowStation PROC
	mov eax, sciUserCreateWindowStation
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcUserCreateWindowStation ENDP

ENDIF

END