; Hc/NtAccessCheckByTypeResultList
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciAccessCheckByTypeResultList:DWORD

.DATA
.CODE

HcAccessCheckByTypeResultList PROC
	mov r10, rcx
	mov eax, sciAccessCheckByTypeResultList
	syscall
	ret
HcAccessCheckByTypeResultList ENDP

ELSE
; 32bit

EXTERNDEF C sciAccessCheckByTypeResultList:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcAccessCheckByTypeResultList PROC
	mov eax, sciAccessCheckByTypeResultList
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
HcAccessCheckByTypeResultList ENDP

ENDIF

END