; Hc/NtUserSwitchDesktop
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSwitchDesktop:DWORD

.DATA
.CODE

HcUserSwitchDesktop PROC
	mov r10, rcx
	mov eax, sciUserSwitchDesktop
	syscall
	ret
HcUserSwitchDesktop ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSwitchDesktop:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSwitchDesktop PROC
	mov eax, sciUserSwitchDesktop
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
HcUserSwitchDesktop ENDP

ENDIF

END