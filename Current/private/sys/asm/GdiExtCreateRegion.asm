; Hc/NtGdiExtCreateRegion
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiExtCreateRegion:DWORD

.DATA
.CODE

HcGdiExtCreateRegion PROC
	mov r10, rcx
	mov eax, sciGdiExtCreateRegion
	syscall
	ret
HcGdiExtCreateRegion ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiExtCreateRegion:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiExtCreateRegion PROC
	mov eax, sciGdiExtCreateRegion
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
HcGdiExtCreateRegion ENDP

ENDIF

END