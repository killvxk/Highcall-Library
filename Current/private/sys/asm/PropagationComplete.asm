; Hc/NtPropagationComplete
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciPropagationComplete:DWORD

.DATA
.CODE

HcPropagationComplete PROC
	mov r10, rcx
	mov eax, sciPropagationComplete
	syscall
	ret
HcPropagationComplete ENDP

ELSE
; 32bit

EXTERNDEF C sciPropagationComplete:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcPropagationComplete PROC
	mov eax, sciPropagationComplete
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
HcPropagationComplete ENDP

ENDIF

END