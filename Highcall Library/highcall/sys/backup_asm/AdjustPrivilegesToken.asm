; AdjustPrivilegesToken

IFDEF RAX
; 64bit

EXTERNDEF sciAdjustPrivilegesToken:DWORD

.DATA
.CODE
 
HcAdjustPrivilegesToken PROC 
	mov r10, rcx
	mov eax, sciAdjustPrivilegesToken
	syscall
	ret
HcAdjustPrivilegesToken ENDP 

ELSE
; 32bit

EXTERNDEF C sciAdjustPrivilegesToken:DWORD

.586              
.MODEL FLAT, C   
.STACK         
.DATA
.CODE
 
ASSUME FS:NOTHING	
 
HcAdjustPrivilegesToken PROC 
	mov eax, sciAdjustPrivilegesToken
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
HcAdjustPrivilegesToken ENDP 

ENDIF

END