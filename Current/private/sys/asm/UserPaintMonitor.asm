; Hc/NtUserPaintMonitor
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserPaintMonitor:DWORD

.DATA
.CODE

HcUserPaintMonitor PROC
	mov r10, rcx
	mov eax, sciUserPaintMonitor
	syscall
	ret
HcUserPaintMonitor ENDP

ELSE
; 32bit

EXTERNDEF C sciUserPaintMonitor:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserPaintMonitor PROC
	mov eax, sciUserPaintMonitor
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
HcUserPaintMonitor ENDP

ENDIF

END