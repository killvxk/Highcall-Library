; Hc/NtGdiFontIsLinked
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiFontIsLinked:DWORD

.DATA
.CODE

HcGdiFontIsLinked PROC
	mov r10, rcx
	mov eax, sciGdiFontIsLinked
	syscall
	ret
HcGdiFontIsLinked ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiFontIsLinked:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiFontIsLinked PROC
	mov eax, sciGdiFontIsLinked
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
HcGdiFontIsLinked ENDP

ENDIF

END