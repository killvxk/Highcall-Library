; Hc/NtGdiSetPixelFormat
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiSetPixelFormat:DWORD

.DATA
.CODE

HcGdiSetPixelFormat PROC
	mov r10, rcx
	mov eax, sciGdiSetPixelFormat
	syscall
	ret
HcGdiSetPixelFormat ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiSetPixelFormat:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiSetPixelFormat PROC
	mov eax, sciGdiSetPixelFormat
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
HcGdiSetPixelFormat ENDP

ENDIF

END