; Hc/NtUserPaintMenuBar
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserPaintMenuBar:DWORD

.DATA
.CODE

HcUserPaintMenuBar PROC
	mov r10, rcx
	mov eax, sciUserPaintMenuBar
	syscall
	ret
HcUserPaintMenuBar ENDP

ELSE
; 32bit

EXTERNDEF C sciUserPaintMenuBar:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserPaintMenuBar PROC
	mov eax, sciUserPaintMenuBar
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
HcUserPaintMenuBar ENDP

ENDIF

END