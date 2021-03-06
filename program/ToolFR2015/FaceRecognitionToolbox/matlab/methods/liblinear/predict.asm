; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

include listing.inc

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	col_format_flag:DWORD
_DATA	ENDS
PUBLIC	__real@0000000000000000
PUBLIC	read_sparse_instance
EXTRN	mxGetPr:PROC
EXTRN	mxGetJc_730:PROC
EXTRN	mxGetIr_730:PROC
EXTRN	_fltused:DWORD
;	COMDAT pdata
; File c:\users\brian c. becker\downloads\liblinear-1.7\liblinear-1.7\matlab\predict.c
pdata	SEGMENT
$pdata$read_sparse_instance DD imagerel $LN16
	DD	imagerel $LN16+420
	DD	imagerel $unwind$read_sparse_instance
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$read_sparse_instance DD 0c1e01H
	DD	0b741eH
	DD	0a641eH
	DD	09541eH
	DD	08341eH
	DD	0e01a321eH
	DD	0c016d018H
xdata	ENDS
;	COMDAT __real@0000000000000000
CONST	SEGMENT
__real@0000000000000000 DQ 00000000000000000r	; 0
; Function compile flags: /Ogtp
CONST	ENDS
;	COMDAT read_sparse_instance
_TEXT	SEGMENT
prhs$ = 64
index$ = 72
x$ = 80
feature_number$ = 88
bias$ = 96
read_sparse_instance PROC				; COMDAT
; Line 20
$LN16:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rbp
	mov	QWORD PTR [rsp+24], rsi
	mov	QWORD PTR [rsp+32], rdi
	push	r12
	push	r13
	push	r14
	sub	rsp, 32					; 00000020H
	mov	ebp, r9d
	mov	r13, r8
	movsxd	rsi, edx
	mov	rbx, rcx
; Line 25
	call	mxGetIr_730
; Line 26
	mov	rcx, rbx
	mov	r14, rax
	call	mxGetJc_730
; Line 27
	mov	rcx, rbx
	mov	rdi, rax
	call	mxGetPr
; Line 31
	movsxd	r8, DWORD PTR [rdi+rsi*8]
	movsxd	rbx, DWORD PTR [rdi+rsi*8+8]
	xor	edx, edx
	mov	r12, rax
; Line 32
	cmp	r8, rbx
	mov	r9, rdx
	jge	$LN15@read_spars
	mov	rcx, rbx
	sub	rcx, r8
	cmp	rcx, 4
	jl	$LC9@read_spars
	mov	rdi, rax
	lea	r11, QWORD PTR [rax+r8*8+24]
	lea	rcx, QWORD PTR [r13+16]
	sub	rdi, r14
	lea	r10, QWORD PTR [r14+r8*8+8]
$LL14@read_spars:
	mov	eax, DWORD PTR [r10-8]
	cmp	eax, ebp
	jge	$LN15@read_spars
; Line 34
	inc	eax
	mov	DWORD PTR [rcx-16], eax
; Line 35
	mov	rax, QWORD PTR [r11-24]
	mov	QWORD PTR [rcx-8], rax
	mov	eax, DWORD PTR [r10]
	cmp	eax, ebp
	jge	$LN11@read_spars
	inc	eax
	mov	DWORD PTR [rcx], eax
	mov	rax, QWORD PTR [rdi+r10]
	mov	QWORD PTR [rcx+8], rax
	mov	eax, DWORD PTR [r10+8]
	cmp	eax, ebp
	jge	$LN12@read_spars
	inc	eax
	mov	DWORD PTR [rcx+16], eax
	mov	rax, QWORD PTR [r11-8]
	mov	QWORD PTR [rcx+24], rax
	mov	eax, DWORD PTR [r10+16]
	cmp	eax, ebp
	jge	$LN13@read_spars
	inc	eax
	add	r8, 4
	add	r9, 4
	mov	DWORD PTR [rcx+32], eax
	mov	rax, QWORD PTR [r11]
	add	rcx, 64					; 00000040H
	mov	QWORD PTR [rcx-24], rax
	lea	rax, QWORD PTR [rbx-3]
	add	edx, 4
	add	r10, 32					; 00000020H
	add	r11, 32					; 00000020H
	cmp	r8, rax
	jl	$LL14@read_spars
$LC9@read_spars:
; Line 32
	cmp	r8, rbx
	jge	SHORT $LN15@read_spars
	shl	r9, 4
	lea	rcx, QWORD PTR [r14+r8*8]
	add	r9, r13
	sub	r12, r14
$LC4@read_spars:
	mov	eax, DWORD PTR [rcx]
	cmp	eax, ebp
	jge	SHORT $LN15@read_spars
; Line 34
	inc	eax
	inc	r8
; Line 36
	add	r9, 16
	mov	DWORD PTR [r9-16], eax
	mov	rax, QWORD PTR [r12+rcx]
	inc	edx
	mov	QWORD PTR [r9-8], rax
	add	rcx, 8
	cmp	r8, rbx
	jl	SHORT $LC4@read_spars
$LN15@read_spars:
; Line 38
	movsdx	xmm0, QWORD PTR bias$[rsp]
	comisd	xmm0, QWORD PTR __real@0000000000000000
	jb	SHORT $LN1@read_spars
; Line 40
	movsxd	rcx, edx
	lea	eax, DWORD PTR [rbp+1]
	add	rcx, rcx
; Line 42
	inc	edx
	mov	DWORD PTR [r13+rcx*8], eax
	movsdx	QWORD PTR [r13+rcx*8+8], xmm0
$LN1@read_spars:
; Line 45
	mov	rbx, QWORD PTR [rsp+64]
	mov	rbp, QWORD PTR [rsp+72]
	mov	rsi, QWORD PTR [rsp+80]
	mov	rdi, QWORD PTR [rsp+88]
	movsxd	rax, edx
	add	rax, rax
	mov	DWORD PTR [r13+rax*8], -1
	add	rsp, 32					; 00000020H
	pop	r14
	pop	r13
	pop	r12
	ret	0
$LN13@read_spars:
; Line 32
	add	edx, 3
	jmp	SHORT $LN15@read_spars
$LN12@read_spars:
	add	edx, 2
	jmp	SHORT $LN15@read_spars
$LN11@read_spars:
	inc	edx
	jmp	SHORT $LN15@read_spars
read_sparse_instance ENDP
_TEXT	ENDS
EXTRN	mxCreateDoubleMatrix_730:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$fake_answer DD imagerel fake_answer
	DD	imagerel fake_answer+62
	DD	imagerel $unwind$fake_answer
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$fake_answer DD 020601H
	DD	030023206H
; Function compile flags: /Ogtp
xdata	ENDS
;	COMDAT fake_answer
_TEXT	SEGMENT
plhs$ = 48
fake_answer PROC					; COMDAT
; Line 48
	push	rbx
	sub	rsp, 32					; 00000020H
	mov	rbx, rcx
; Line 49
	xor	r8d, r8d
	xor	edx, edx
	xor	ecx, ecx
	call	mxCreateDoubleMatrix_730
; Line 50
	xor	r8d, r8d
	xor	edx, edx
	xor	ecx, ecx
	mov	QWORD PTR [rbx], rax
	call	mxCreateDoubleMatrix_730
; Line 51
	xor	r8d, r8d
	xor	edx, edx
	xor	ecx, ecx
	mov	QWORD PTR [rbx+8], rax
	call	mxCreateDoubleMatrix_730
	mov	QWORD PTR [rbx+16], rax
; Line 52
	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
fake_answer ENDP
_TEXT	ENDS
PUBLIC	__real@4059000000000000
PUBLIC	??_C@_0BJ@LOBNMDK@Accuracy?5?$DN?5?$CFg?$CF?$CF?5?$CI?$CFd?1?$CFd?$CJ?6?$AA@ ; `string'
PUBLIC	??_C@_0CI@CFMLKNGF@Testing_instance_matrix?5must?5be?5@ ; `string'
PUBLIC	??_C@_0DB@PIFNAMLK@Error?3?5cannot?5transpose?5testing?5@ ; `string'
PUBLIC	??_C@_09KDFGPPLL@transpose?$AA@			; `string'
PUBLIC	??_C@_0DN@IJGPGJOE@label?5?$CI1st?5argument?$CJ?5should?5be?5a@ ; `string'
PUBLIC	??_C@_0DH@OBEGDGFM@Length?5of?5label?5vector?5does?5not?5@ ; `string'
PUBLIC	do_predict
EXTRN	__imp_free:PROC
EXTRN	predict_values:PROC
EXTRN	predict:PROC
EXTRN	predict_probability:PROC
EXTRN	__imp_malloc:PROC
EXTRN	mexCallMATLAB:PROC
EXTRN	mxDuplicateArray:PROC
EXTRN	mxIsSparse:PROC
EXTRN	mexPrintf:PROC
EXTRN	mxGetN:PROC
EXTRN	mxGetM:PROC
EXTRN	get_nr_feature:PROC
EXTRN	get_nr_class:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$do_predict DD imagerel $LN47
	DD	imagerel $LN47+409
	DD	imagerel $unwind$do_predict
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$2$do_predict DD imagerel $LN47+409
	DD	imagerel $LN47+644
	DD	imagerel $chain$2$do_predict
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$3$do_predict DD imagerel $LN47+644
	DD	imagerel $LN47+1355
	DD	imagerel $chain$3$do_predict
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$4$do_predict DD imagerel $LN47+1355
	DD	imagerel $LN47+1493
	DD	imagerel $chain$4$do_predict
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$5$do_predict DD imagerel $LN47+1493
	DD	imagerel $LN47+1526
	DD	imagerel $chain$5$do_predict
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$5$do_predict DD 020021H
	DD	019e400H
	DD	imagerel $LN47
	DD	imagerel $LN47+409
	DD	imagerel $unwind$do_predict
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$4$do_predict DD 021H
	DD	imagerel $LN47+409
	DD	imagerel $LN47+644
	DD	imagerel $chain$2$do_predict
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$3$do_predict DD 020821H
	DD	0a7808H
	DD	imagerel $LN47+409
	DD	imagerel $LN47+644
	DD	imagerel $chain$2$do_predict
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$2$do_predict DD 062021H
	DD	0b6820H
	DD	019e418H
	DD	01ad408H
	DD	imagerel $LN47
	DD	imagerel $LN47+409
	DD	imagerel $unwind$do_predict
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$do_predict DD 081e01H
	DD	01b011eH
	DD	0c015f017H
	DD	060127013H
	DD	030105011H
xdata	ENDS
;	COMDAT __real@4059000000000000
CONST	SEGMENT
__real@4059000000000000 DQ 04059000000000000r	; 100
CONST	ENDS
;	COMDAT ??_C@_0BJ@LOBNMDK@Accuracy?5?$DN?5?$CFg?$CF?$CF?5?$CI?$CFd?1?$CFd?$CJ?6?$AA@
CONST	SEGMENT
??_C@_0BJ@LOBNMDK@Accuracy?5?$DN?5?$CFg?$CF?$CF?5?$CI?$CFd?1?$CFd?$CJ?6?$AA@ DB 'A'
	DB	'ccuracy = %g%% (%d/%d)', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0CI@CFMLKNGF@Testing_instance_matrix?5must?5be?5@
CONST	SEGMENT
??_C@_0CI@CFMLKNGF@Testing_instance_matrix?5must?5be?5@ DB 'Testing_insta'
	DB	'nce_matrix must be sparse', 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0DB@PIFNAMLK@Error?3?5cannot?5transpose?5testing?5@
CONST	SEGMENT
??_C@_0DB@PIFNAMLK@Error?3?5cannot?5transpose?5testing?5@ DB 'Error: cann'
	DB	'ot transpose testing instance matrix', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_09KDFGPPLL@transpose?$AA@
CONST	SEGMENT
??_C@_09KDFGPPLL@transpose?$AA@ DB 'transpose', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0DN@IJGPGJOE@label?5?$CI1st?5argument?$CJ?5should?5be?5a@
CONST	SEGMENT
??_C@_0DN@IJGPGJOE@label?5?$CI1st?5argument?$CJ?5should?5be?5a@ DB 'label'
	DB	' (1st argument) should be a vector (# of column is 1).', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0DH@OBEGDGFM@Length?5of?5label?5vector?5does?5not?5@
CONST	SEGMENT
??_C@_0DH@OBEGDGFM@Length?5of?5label?5vector?5does?5not?5@ DB 'Length of '
	DB	'label vector does not match # of instances.', 0aH, 00H ; `string'
; Function compile flags: /Ogtp
CONST	ENDS
;	COMDAT do_predict
_TEXT	SEGMENT
x$1$ = 48
instance_index$1$ = 56
total$1$ = 60
ptr_prob_estimates$1$ = 64
pprhs$5429 = 64
tv2182 = 72
ptr_predict_label$1$ = 80
ptr_dec_values$1$ = 88
tv75 = 96
ptr_label$1$ = 104
pplhs$ = 112
tv2181 = 120
$T5657 = 128
tv2176 = 136
tv2178 = 144
plhs$ = 272
correct$1$ = 280
prhs$ = 280
model_$ = 288
predict_probability_flag$ = 296
do_predict PROC						; COMDAT
; Line 55
$LN47:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+8], rcx
	push	rbx
	push	rbp
	push	rsi
	push	rdi
	push	r12
	push	r15
	sub	rsp, 216				; 000000d8H
; Line 64
	xor	eax, eax
	mov	r15, rcx
; Line 67
	mov	rcx, r8
	mov	rbx, r8
	mov	rdi, rdx
	mov	DWORD PTR correct$1$[rsp], eax
	mov	DWORD PTR total$1$[rsp], eax
	call	get_nr_class
	movsxd	rsi, eax
; Line 71
	cmp	esi, 2
	jne	SHORT $LN25@do_predict
	cmp	DWORD PTR [rbx], 4
	je	SHORT $LN25@do_predict
; Line 72
	lea	r12d, QWORD PTR [rsi-1]
; Line 73
	jmp	SHORT $LN24@do_predict
$LN25@do_predict:
; Line 74
	mov	r12d, esi
$LN24@do_predict:
; Line 77
	mov	rcx, rbx
	call	get_nr_feature
; Line 78
	mov	rcx, QWORD PTR [rdi+8]
	mov	DWORD PTR tv75[rsp], eax
	call	mxGetM
; Line 79
	cmp	DWORD PTR col_format_flag, 0
	mov	rbp, rax
	je	SHORT $LN23@do_predict
; Line 81
	mov	rcx, QWORD PTR [rdi+8]
	call	mxGetM
; Line 82
	mov	rcx, QWORD PTR [rdi+8]
	mov	QWORD PTR tv75[rsp], rax
	call	mxGetN
	mov	ebp, eax
$LN23@do_predict:
; Line 85
	mov	rcx, QWORD PTR [rdi]
	call	mxGetM
; Line 86
	mov	rcx, QWORD PTR [rdi]
	mov	rbx, rax
	call	mxGetN
; Line 88
	cmp	ebx, ebp
	je	SHORT $LN22@do_predict
; Line 90
	lea	rcx, OFFSET FLAT:??_C@_0DH@OBEGDGFM@Length?5of?5label?5vector?5does?5not?5@
$LN46@do_predict:
	call	mexPrintf
; Line 91
	xor	r8d, r8d
	xor	edx, edx
	xor	ecx, ecx
	call	mxCreateDoubleMatrix_730
	xor	r8d, r8d
	xor	edx, edx
	xor	ecx, ecx
	mov	QWORD PTR [r15], rax
	call	mxCreateDoubleMatrix_730
	xor	r8d, r8d
	xor	edx, edx
	xor	ecx, ecx
	mov	QWORD PTR [r15+8], rax
	call	mxCreateDoubleMatrix_730
	mov	QWORD PTR [r15+16], rax
; Line 182
	add	rsp, 216				; 000000d8H
	pop	r15
	pop	r12
	pop	rdi
	pop	rsi
	pop	rbp
	pop	rbx
	ret	0
$LN22@do_predict:
; Line 94
	cmp	eax, 1
	je	SHORT $LN21@do_predict
; Line 96
	lea	rcx, OFFSET FLAT:??_C@_0DN@IJGPGJOE@label?5?$CI1st?5argument?$CJ?5should?5be?5a@
; Line 98
	jmp	SHORT $LN46@do_predict
$LN21@do_predict:
; Line 101
	mov	rcx, QWORD PTR [rdi+8]
	call	mxGetPr
; Line 102
	mov	rcx, QWORD PTR [rdi]
	call	mxGetPr
; Line 105
	mov	rcx, QWORD PTR [rdi+8]
	mov	QWORD PTR ptr_label$1$[rsp], rax
	call	mxIsSparse
	test	al, al
	je	SHORT $LN20@do_predict
; Line 107
	cmp	DWORD PTR col_format_flag, 0
	je	SHORT $LN19@do_predict
; Line 109
	mov	rcx, QWORD PTR [rdi+8]
	mov	QWORD PTR pplhs$[rsp], rcx
; Line 111
	jmp	SHORT $LN16@do_predict
$LN19@do_predict:
; Line 114
	mov	rcx, QWORD PTR [rdi+8]
	call	mxDuplicateArray
; Line 115
	mov	r8d, 1
	lea	r9, QWORD PTR pprhs$5429[rsp]
	mov	QWORD PTR pprhs$5429[rsp], rax
	lea	rax, OFFSET FLAT:??_C@_09KDFGPPLL@transpose?$AA@
	lea	rdx, QWORD PTR pplhs$[rsp]
	mov	ecx, r8d
	mov	QWORD PTR [rsp+32], rax
	call	mexCallMATLAB
	test	eax, eax
	je	SHORT $LN16@do_predict
; Line 117
	lea	rcx, OFFSET FLAT:??_C@_0DB@PIFNAMLK@Error?3?5cannot?5transpose?5testing?5@
	call	mexPrintf
; Line 118
	mov	rcx, r15
	call	fake_answer
; Line 182
	add	rsp, 216				; 000000d8H
	pop	r15
	pop	r12
	pop	rdi
	pop	rsi
	pop	rbp
	pop	rbx
	ret	0
$LN20@do_predict:
; Line 124
	lea	rcx, OFFSET FLAT:??_C@_0CI@CFMLKNGF@Testing_instance_matrix?5must?5be?5@
	call	mexPrintf
$LN16@do_predict:
	mov	QWORD PTR [rsp+208], r13
; Line 127
	lea	rcx, QWORD PTR [rsi*8]
	mov	QWORD PTR [rsp+200], r14
	movaps	XMMWORD PTR [rsp+176], xmm6
	mov	r13, rsi
	call	QWORD PTR __imp_malloc
; Line 129
	xor	r8d, r8d
	movsxd	rsi, ebp
	lea	edx, QWORD PTR [r8+1]
	mov	r14, rax
	mov	rcx, rsi
	mov	QWORD PTR $T5657[rsp], rsi
	call	mxCreateDoubleMatrix_730
; Line 130
	cmp	DWORD PTR predict_probability_flag$[rsp], 0
	mov	QWORD PTR [r15], rax
	je	SHORT $LN15@do_predict
; Line 131
	xor	r8d, r8d
	mov	rdx, r13
	mov	rcx, rsi
	call	mxCreateDoubleMatrix_730
	mov	QWORD PTR [r15+16], rax
; Line 132
	jmp	SHORT $LN14@do_predict
$LN15@do_predict:
; Line 133
	movsxd	rdx, r12d
	xor	r8d, r8d
	mov	rcx, rsi
	call	mxCreateDoubleMatrix_730
	mov	QWORD PTR [r15+16], rax
$LN14@do_predict:
; Line 135
	mov	rcx, QWORD PTR [r15]
	call	mxGetPr
; Line 136
	mov	rcx, QWORD PTR [r15+16]
	mov	rdi, rax
	mov	QWORD PTR ptr_predict_label$1$[rsp], rax
	call	mxGetPr
; Line 137
	mov	rcx, QWORD PTR [r15+16]
	mov	rbx, rax
	mov	QWORD PTR ptr_prob_estimates$1$[rsp], rax
	call	mxGetPr
; Line 138
	mov	rcx, QWORD PTR tv75[rsp]
	add	ecx, 2
	mov	QWORD PTR ptr_dec_values$1$[rsp], rax
	movsxd	rcx, ecx
	shl	rcx, 4
	call	QWORD PTR __imp_malloc
; Line 139
	xor	ecx, ecx
	xor	r15d, r15d
; Line 163
	movsxd	r12, r12d
	mov	rdx, rax
	mov	QWORD PTR x$1$[rsp], rax
	mov	DWORD PTR instance_index$1$[rsp], ecx
	test	ebp, ebp
	jle	$LN11@do_predict
	mov	r8, QWORD PTR ptr_dec_values$1$[rsp]
	mov	r9, QWORD PTR ptr_label$1$[rsp]
	lea	rbp, QWORD PTR [rsi*8]
	movaps	XMMWORD PTR [rsp+160], xmm7
	lea	rax, QWORD PTR [r8+rbp]
	sub	r9, rbx
	mov	DWORD PTR total$1$[rsp], esi
	mov	QWORD PTR tv2182[rsp], rax
	mov	rax, rbx
	mov	QWORD PTR ptr_label$1$[rsp], r9
	sub	rax, r8
	mov	QWORD PTR tv2181[rsp], rax
	mov	rax, rbx
	sub	rax, rdi
	sub	r8, rdi
	mov	QWORD PTR tv2176[rsp], r8
	mov	QWORD PTR tv2178[rsp], rax
	jmp	SHORT $LN13@do_predict
$LL44@do_predict:
; Line 138
	mov	rdx, QWORD PTR x$1$[rsp]
$LN13@do_predict:
; Line 144
	lea	rbx, QWORD PTR [rax+rdi]
; Line 147
	mov	rax, QWORD PTR model_$[rsp]
	mov	r8, rdx
	mov	edx, ecx
	mov	rcx, QWORD PTR pplhs$[rsp]
	movsdx	xmm7, QWORD PTR [rbx+r9]
	movsdx	xmm0, QWORD PTR [rax+72]
	mov	r9d, DWORD PTR tv75[rsp]
	movsdx	QWORD PTR [rsp+32], xmm0
	call	read_sparse_instance
; Line 149
	cmp	DWORD PTR predict_probability_flag$[rsp], 0
	je	$LN10@do_predict
; Line 151
	mov	rdx, QWORD PTR x$1$[rsp]
	mov	rcx, QWORD PTR model_$[rsp]
	mov	r8, r14
	call	predict_probability
; Line 153
	xor	ecx, ecx
	cmp	r13, 4
	movd	xmm6, eax
	cvtdq2pd xmm6, xmm6
	movsdx	QWORD PTR [rdi], xmm6
	jl	SHORT $LC39@do_predict
	mov	r10, QWORD PTR ptr_prob_estimates$1$[rsp]
	mov	r11, QWORD PTR tv2181[rsp]
	lea	rax, QWORD PTR [r15+rsi*2]
	lea	rcx, QWORD PTR [r15+rsi*2]
	lea	rdi, QWORD PTR [r13-4]
	mov	r8, rsi
	add	rcx, rsi
	shr	rdi, 2
	shl	r8, 5
	lea	r9, QWORD PTR [r10+rcx*8]
	lea	r10, QWORD PTR [r10+rax*8]
	mov	rax, QWORD PTR tv2182[rsp]
	add	r11, rax
	inc	rdi
	lea	rdx, QWORD PTR [r14+16]
	lea	rcx, QWORD PTR [rdi*4]
	npad	9
$LL40@do_predict:
; Line 154
	mov	rax, QWORD PTR [rdx-16]
	add	rdx, 32					; 00000020H
	mov	QWORD PTR [rbx], rax
	mov	rax, QWORD PTR [rdx-40]
	add	rbx, r8
	mov	QWORD PTR [r11], rax
	mov	rax, QWORD PTR [rdx-32]
	add	r11, r8
	mov	QWORD PTR [r10], rax
	mov	rax, QWORD PTR [rdx-24]
	add	r10, r8
	mov	QWORD PTR [r9], rax
	add	r9, r8
	sub	rdi, 1
	jne	SHORT $LL40@do_predict
$LC39@do_predict:
; Line 153
	cmp	rcx, r13
	jge	$LN6@do_predict
	mov	rdx, QWORD PTR ptr_prob_estimates$1$[rsp]
	mov	rax, rcx
	imul	rax, rsi
	add	rax, r15
	lea	rdx, QWORD PTR [rdx+rax*8]
$LC9@do_predict:
; Line 154
	mov	rax, QWORD PTR [r14+rcx*8]
	inc	rcx
	mov	QWORD PTR [rdx], rax
	add	rdx, rbp
	cmp	rcx, r13
	jl	SHORT $LC9@do_predict
; Line 156
	jmp	$LN6@do_predict
$LN10@do_predict:
; Line 158
	lea	rcx, QWORD PTR [r13*8]
	call	QWORD PTR __imp_malloc
; Line 159
	mov	rdx, QWORD PTR x$1$[rsp]
	mov	rcx, QWORD PTR model_$[rsp]
	mov	rdi, rax
	call	predict
; Line 160
	mov	rbx, QWORD PTR ptr_predict_label$1$[rsp]
; Line 162
	mov	rdx, QWORD PTR x$1$[rsp]
	mov	rcx, QWORD PTR model_$[rsp]
	mov	r8, rdi
	movd	xmm6, eax
	cvtdq2pd xmm6, xmm6
	movsdx	QWORD PTR [rbx], xmm6
	call	predict_values
; Line 163
	xor	r11d, r11d
	cmp	r12, 4
	jl	$LC42@do_predict
	mov	r11, QWORD PTR ptr_dec_values$1$[rsp]
	mov	r9, QWORD PTR tv2176[rsp]
	lea	rcx, QWORD PTR [r15+rsi*2]
	add	rcx, rsi
	mov	r8, rsi
	lea	rax, QWORD PTR [r15+rsi*2]
	add	r9, rbx
	mov	rbx, QWORD PTR tv2182[rsp]
	lea	r10, QWORD PTR [r11+rcx*8]
	lea	rsi, QWORD PTR [r12-4]
	shl	r8, 5
	lea	rcx, QWORD PTR [r11+rax*8]
	shr	rsi, 2
	lea	rdx, QWORD PTR [rdi+16]
	inc	rsi
	lea	r11, QWORD PTR [rsi*4]
	npad	14
$LL43@do_predict:
; Line 164
	mov	rax, QWORD PTR [rdx-16]
	add	rdx, 32					; 00000020H
	mov	QWORD PTR [r9], rax
	mov	rax, QWORD PTR [rdx-40]
	add	r9, r8
	mov	QWORD PTR [rbx], rax
	mov	rax, QWORD PTR [rdx-32]
	add	rbx, r8
	mov	QWORD PTR [rcx], rax
	mov	rax, QWORD PTR [rdx-24]
	add	rcx, r8
	mov	QWORD PTR [r10], rax
	add	r10, r8
	sub	rsi, 1
	jne	SHORT $LL43@do_predict
	mov	rsi, QWORD PTR $T5657[rsp]
$LC42@do_predict:
; Line 163
	cmp	r11, r12
	jge	SHORT $LN41@do_predict
	mov	rcx, QWORD PTR ptr_dec_values$1$[rsp]
	mov	rax, r11
	imul	rax, rsi
	add	rax, r15
	lea	rcx, QWORD PTR [rcx+rax*8]
$LC5@do_predict:
; Line 164
	mov	rax, QWORD PTR [rdi+r11*8]
	inc	r11
	mov	QWORD PTR [rcx], rax
	add	rcx, rbp
	cmp	r11, r12
	jl	SHORT $LC5@do_predict
$LN41@do_predict:
; Line 165
	mov	rcx, rdi
	call	QWORD PTR __imp_free
$LN6@do_predict:
; Line 168
	ucomisd	xmm6, xmm7
	jp	SHORT $LN2@do_predict
	jne	SHORT $LN2@do_predict
; Line 169
	inc	DWORD PTR correct$1$[rsp]
$LN2@do_predict:
; Line 139
	mov	ecx, DWORD PTR instance_index$1$[rsp]
	mov	rdi, QWORD PTR ptr_predict_label$1$[rsp]
	add	QWORD PTR tv2182[rsp], 8
	mov	rax, QWORD PTR tv2178[rsp]
	mov	r9, QWORD PTR ptr_label$1$[rsp]
	inc	ecx
	add	rdi, 8
	inc	r15
	mov	DWORD PTR instance_index$1$[rsp], ecx
	cmp	r15, rsi
	mov	QWORD PTR ptr_predict_label$1$[rsp], rdi
	jl	$LL44@do_predict
	movaps	xmm7, XMMWORD PTR [rsp+160]
$LN11@do_predict:
; Line 172
	mov	eax, DWORD PTR correct$1$[rsp]
	mov	ecx, DWORD PTR total$1$[rsp]
	mov	r9d, ecx
	mov	r8d, eax
	movd	xmm0, ecx
	movd	xmm6, eax
	lea	rcx, OFFSET FLAT:??_C@_0BJ@LOBNMDK@Accuracy?5?$DN?5?$CFg?$CF?$CF?5?$CI?$CFd?1?$CFd?$CJ?6?$AA@
	cvtdq2pd xmm6, xmm6
	cvtdq2pd xmm0, xmm0
	divsd	xmm6, xmm0
	mulsd	xmm6, QWORD PTR __real@4059000000000000
	movapd	xmm1, xmm6
	movd	rdx, xmm1
	call	mexPrintf
; Line 175
	mov	edx, 1
	xor	r8d, r8d
	mov	rcx, rdx
	call	mxCreateDoubleMatrix_730
	mov	rcx, QWORD PTR plhs$[rsp]
	mov	QWORD PTR [rcx+8], rax
; Line 176
	mov	rcx, rax
	call	mxGetPr
; Line 179
	mov	rcx, QWORD PTR x$1$[rsp]
	movsdx	QWORD PTR [rax], xmm6
	call	QWORD PTR __imp_free
	mov	r13, QWORD PTR [rsp+208]
	movaps	xmm6, XMMWORD PTR [rsp+176]
; Line 180
	test	r14, r14
	je	SHORT $LN45@do_predict
; Line 181
	mov	rcx, r14
	call	QWORD PTR __imp_free
$LN45@do_predict:
	mov	r14, QWORD PTR [rsp+200]
; Line 182
	add	rsp, 216				; 000000d8H
	pop	r15
	pop	r12
	pop	rdi
	pop	rsi
	pop	rbp
	pop	rbx
	ret	0
do_predict ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BHA@ENALOOEJ@Usage?3?5?$FLpredicted_label?0?5accurac@ ; `string'
PUBLIC	exit_with_help
;	COMDAT ??_C@_0BHA@ENALOOEJ@Usage?3?5?$FLpredicted_label?0?5accurac@
CONST	SEGMENT
??_C@_0BHA@ENALOOEJ@Usage?3?5?$FLpredicted_label?0?5accurac@ DB 'Usage: ['
	DB	'predicted_label, accuracy, decision_values/prob_estimates] = '
	DB	'predict(testing_label_vector, testing_instance_matrix, model,'
	DB	' ''liblinear_options'',''col'')', 0aH, 'liblinear_options:', 0aH
	DB	'-b probability_estimates: whether to predict probability esti'
	DB	'mates, 0 or 1 (default 0)', 0aH, 'col:', 0aH, 09H, 'if ''col'''
	DB	' is setted testing_instance_matrix is parsed in column format'
	DB	', otherwise is in row format', 00H		; `string'
; Function compile flags: /Ogtp
CONST	ENDS
;	COMDAT exit_with_help
_TEXT	SEGMENT
exit_with_help PROC					; COMDAT
; Line 192
	lea	rcx, OFFSET FLAT:??_C@_0BHA@ENALOOEJ@Usage?3?5?$FLpredicted_label?0?5accurac@
; Line 193
	jmp	mexPrintf
exit_with_help ENDP
_TEXT	ENDS
PUBLIC	??_C@_0DI@DIKPDILO@Error?3?5label?5vector?5and?5instance@ ; `string'
PUBLIC	??_C@_0CF@MCDNEPMD@model?5file?5should?5be?5a?5struct?5ar@ ; `string'
PUBLIC	??_C@_0DO@GAFFAHC@probability?5output?5is?5only?5suppo@ ; `string'
PUBLIC	??_C@_0BA@NEBHDGFC@unknown?5option?6?$AA@	; `string'
PUBLIC	??_C@_0BN@LFLCGJC@Error?3?5can?8t?5read?5model?3?5?$CFs?6?$AA@ ; `string'
PUBLIC	??_C@_01CLKCMJKC@?5?$AA@			; `string'
PUBLIC	??_C@_03HNOLNALI@col?$AA@			; `string'
PUBLIC	__$ArrayPad$
PUBLIC	mexFunction
EXTRN	__GSHandlerCheck:PROC
EXTRN	check_probability_model:PROC
EXTRN	free_and_destroy_model:PROC
EXTRN	matlab_matrix_to_model:PROC
EXTRN	__imp_atoi:PROC
EXTRN	__imp_strtok:PROC
EXTRN	mxIsStruct:PROC
EXTRN	mxIsDouble:PROC
EXTRN	mxGetString_730:PROC
EXTRN	__security_cookie:QWORD
EXTRN	__security_check_cookie:PROC
EXTRN	__chkstk:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$mexFunction DD imagerel $LN48
	DD	imagerel $LN48+71
	DD	imagerel $unwind$mexFunction
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$2$mexFunction DD imagerel $LN48+71
	DD	imagerel $LN48+504
	DD	imagerel $chain$2$mexFunction
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$3$mexFunction DD imagerel $LN48+504
	DD	imagerel $LN48+535
	DD	imagerel $chain$3$mexFunction
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$4$mexFunction DD imagerel $LN48+535
	DD	imagerel $LN48+775
	DD	imagerel $chain$4$mexFunction
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$5$mexFunction DD imagerel $LN48+775
	DD	imagerel $LN48+840
	DD	imagerel $chain$5$mexFunction
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$5$mexFunction DD 021H
	DD	imagerel $LN48
	DD	imagerel $LN48+71
	DD	imagerel $unwind$mexFunction
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$4$mexFunction DD 060021H
	DD	05087400H
	DD	05106400H
	DD	050e3400H
	DD	imagerel $LN48
	DD	imagerel $LN48+71
	DD	imagerel $unwind$mexFunction
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$3$mexFunction DD 021H
	DD	imagerel $LN48
	DD	imagerel $LN48+71
	DD	imagerel $unwind$mexFunction
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$2$mexFunction DD 061821H
	DD	05087418H
	DD	05106410H
	DD	050e3408H
	DD	imagerel $LN48
	DD	imagerel $LN48+71
	DD	imagerel $unwind$mexFunction
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$mexFunction DD 062719H
	DD	05090115H
	DD	0d006e008H
	DD	05002c004H
	DD	imagerel __GSHandlerCheck
	DD	02830H
xdata	ENDS
;	COMDAT ??_C@_0DI@DIKPDILO@Error?3?5label?5vector?5and?5instance@
CONST	SEGMENT
??_C@_0DI@DIKPDILO@Error?3?5label?5vector?5and?5instance@ DB 'Error: labe'
	DB	'l vector and instance matrix must be double', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CF@MCDNEPMD@model?5file?5should?5be?5a?5struct?5ar@
CONST	SEGMENT
??_C@_0CF@MCDNEPMD@model?5file?5should?5be?5a?5struct?5ar@ DB 'model file'
	DB	' should be a struct array', 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0DO@GAFFAHC@probability?5output?5is?5only?5suppo@
CONST	SEGMENT
??_C@_0DO@GAFFAHC@probability?5output?5is?5only?5suppo@ DB 'probability o'
	DB	'utput is only supported for logistic regression', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BA@NEBHDGFC@unknown?5option?6?$AA@
CONST	SEGMENT
??_C@_0BA@NEBHDGFC@unknown?5option?6?$AA@ DB 'unknown option', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BN@LFLCGJC@Error?3?5can?8t?5read?5model?3?5?$CFs?6?$AA@
CONST	SEGMENT
??_C@_0BN@LFLCGJC@Error?3?5can?8t?5read?5model?3?5?$CFs?6?$AA@ DB 'Error:'
	DB	' can''t read model: %s', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_01CLKCMJKC@?5?$AA@
CONST	SEGMENT
??_C@_01CLKCMJKC@?5?$AA@ DB ' ', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_03HNOLNALI@col?$AA@
CONST	SEGMENT
??_C@_03HNOLNALI@col?$AA@ DB 'col', 00H			; `string'
; Function compile flags: /Ogtp
CONST	ENDS
;	COMDAT mexFunction
_TEXT	SEGMENT
model_$ = 32
argv$5492 = 48
cmd$ = 8240
__$ArrayPad$ = 10288
nlhs$ = 10352
plhs$ = 10360
nrhs$ = 10368
prhs$ = 10376
mexFunction PROC					; COMDAT
; Line 197
$LN48:
	push	rbp
	push	r12
	push	r13
	push	r14
	mov	eax, 10312				; 00002848H
	call	__chkstk
	sub	rsp, rax
	mov	rax, QWORD PTR __security_cookie
	xor	rax, rsp
	mov	QWORD PTR __$ArrayPad$[rsp], rax
; Line 198
	xor	r12d, r12d
; Line 203
	lea	eax, DWORD PTR [r8-3]
	mov	r13, r9
	mov	r14d, r8d
	mov	rbp, rdx
	mov	DWORD PTR col_format_flag, r12d
	cmp	eax, 2
	ja	$LN25@mexFunctio
	mov	QWORD PTR [rsp+10352], rbx
	mov	QWORD PTR [rsp+10368], rsi
	mov	QWORD PTR [rsp+10304], rdi
; Line 209
	lea	ebx, QWORD PTR [r12+1]
	cmp	r8d, 5
	jne	SHORT $LN23@mexFunctio
; Line 211
	mov	rcx, QWORD PTR [r9+32]
	call	mxGetN
	mov	rcx, QWORD PTR [r13+32]
	lea	rdx, QWORD PTR cmd$[rsp]
	lea	r8, QWORD PTR [rax+1]
	call	mxGetString_730
; Line 212
	mov	eax, DWORD PTR col_format_flag
	lea	rsi, QWORD PTR cmd$[rsp]
	lea	rdi, OFFSET FLAT:??_C@_03HNOLNALI@col?$AA@
	mov	ecx, 4
	repe cmpsb
	cmove	eax, ebx
	mov	DWORD PTR col_format_flag, eax
$LN23@mexFunctio:
; Line 218
	mov	rcx, QWORD PTR [r13]
	call	mxIsDouble
	test	al, al
	je	$LN21@mexFunctio
	mov	rcx, QWORD PTR [r13+8]
	call	mxIsDouble
	test	al, al
	je	$LN21@mexFunctio
; Line 224
	mov	rcx, QWORD PTR [r13+16]
	call	mxIsStruct
	test	al, al
	je	$LN20@mexFunctio
; Line 229
	cmp	r14d, 4
	jl	$LN13@mexFunctio
; Line 235
	mov	rcx, QWORD PTR [r13+24]
	mov	esi, ebx
	call	mxGetN
	mov	rcx, QWORD PTR [r13+24]
	lea	rdx, QWORD PTR cmd$[rsp]
	lea	r8, QWORD PTR [rax+1]
	call	mxGetString_730
; Line 236
	lea	rdx, OFFSET FLAT:??_C@_01CLKCMJKC@?5?$AA@
	lea	rcx, QWORD PTR cmd$[rsp]
	call	QWORD PTR __imp_strtok
	mov	QWORD PTR argv$5492[rsp+8], rax
	test	rax, rax
	je	SHORT $LN16@mexFunctio
; Line 231
	lea	rdi, QWORD PTR argv$5492[rsp+8]
	npad	2
$LL17@mexFunctio:
; Line 237
	lea	rdx, OFFSET FLAT:??_C@_01CLKCMJKC@?5?$AA@
	xor	ecx, ecx
	inc	esi
	add	rdi, 8
	call	QWORD PTR __imp_strtok
	mov	QWORD PTR [rdi], rax
	test	rax, rax
	jne	SHORT $LL17@mexFunctio
$LN16@mexFunctio:
; Line 243
	movsxd	rsi, esi
	cmp	rbx, rsi
	jge	SHORT $LN13@mexFunctio
; Line 240
	lea	rdi, QWORD PTR argv$5492[rsp]
	npad	6
$LL15@mexFunctio:
; Line 242
	mov	rax, QWORD PTR argv$5492[rsp+rbx*8]
	cmp	BYTE PTR [rax], 45			; 0000002dH
	jne	SHORT $LN13@mexFunctio
; Line 243
	inc	rbx
	cmp	rbx, rsi
	jge	$LN42@mexFunctio
; Line 249
	mov	rax, QWORD PTR [rdi+8]
	cmp	BYTE PTR [rax+1], 98			; 00000062H
	jne	$LN43@mexFunctio
; Line 252
	mov	rcx, QWORD PTR argv$5492[rsp+rbx*8]
	call	QWORD PTR __imp_atoi
	inc	rbx
	add	rdi, 16
	cmp	rbx, rsi
	mov	r12d, eax
	jl	SHORT $LL15@mexFunctio
$LN13@mexFunctio:
; Line 263
	mov	ecx, 80					; 00000050H
	call	QWORD PTR __imp_malloc
; Line 264
	mov	rdx, QWORD PTR [r13+16]
	mov	rcx, rax
	mov	QWORD PTR model_$[rsp], rax
	call	matlab_matrix_to_model
; Line 265
	test	rax, rax
	je	SHORT $LN6@mexFunctio
; Line 267
	lea	rcx, OFFSET FLAT:??_C@_0BN@LFLCGJC@Error?3?5can?8t?5read?5model?3?5?$CFs?6?$AA@
	mov	rdx, rax
	call	mexPrintf
; Line 268
	lea	rcx, QWORD PTR model_$[rsp]
	call	free_and_destroy_model
; Line 269
	mov	rcx, rbp
	call	fake_answer
$LN47@mexFunctio:
	mov	rsi, QWORD PTR [rsp+10368]
	mov	rbx, QWORD PTR [rsp+10352]
	mov	rdi, QWORD PTR [rsp+10304]
$LN1@mexFunctio:
; Line 300
	mov	rcx, QWORD PTR __$ArrayPad$[rsp]
	xor	rcx, rsp
	call	__security_check_cookie
	add	rsp, 10312				; 00002848H
	pop	r14
	pop	r13
	pop	r12
	pop	rbp
	ret	0
$LN43@mexFunctio:
; Line 255
	lea	rcx, OFFSET FLAT:??_C@_0BA@NEBHDGFC@unknown?5option?6?$AA@
	call	mexPrintf
$LN42@mexFunctio:
; Line 256
	lea	rcx, OFFSET FLAT:??_C@_0BHA@ENALOOEJ@Usage?3?5?$FLpredicted_label?0?5accurac@
	call	mexPrintf
; Line 257
	mov	rcx, rbp
	call	fake_answer
; Line 258
	jmp	SHORT $LN47@mexFunctio
$LN6@mexFunctio:
; Line 273
	test	r12d, r12d
	je	SHORT $LN4@mexFunctio
; Line 275
	mov	rcx, QWORD PTR model_$[rsp]
	call	check_probability_model
	test	eax, eax
	jne	SHORT $LN4@mexFunctio
; Line 277
	lea	rcx, OFFSET FLAT:??_C@_0DO@GAFFAHC@probability?5output?5is?5only?5suppo@
	call	mexPrintf
; Line 278
	xor	r12d, r12d
$LN4@mexFunctio:
; Line 282
	mov	rcx, QWORD PTR [r13+8]
	call	mxIsSparse
	test	al, al
	je	SHORT $LN3@mexFunctio
; Line 283
	mov	r8, QWORD PTR model_$[rsp]
	mov	r9d, r12d
	mov	rdx, r13
	mov	rcx, rbp
	call	do_predict
; Line 291
	lea	rcx, QWORD PTR model_$[rsp]
	call	free_and_destroy_model
; Line 293
	jmp	$LN47@mexFunctio
$LN3@mexFunctio:
; Line 286
	lea	rcx, OFFSET FLAT:??_C@_0CI@CFMLKNGF@Testing_instance_matrix?5must?5be?5@
	call	mexPrintf
; Line 287
	mov	rcx, rbp
	call	fake_answer
; Line 291
	lea	rcx, QWORD PTR model_$[rsp]
	call	free_and_destroy_model
; Line 293
	jmp	$LN47@mexFunctio
$LN20@mexFunctio:
; Line 295
	lea	rcx, OFFSET FLAT:??_C@_0CF@MCDNEPMD@model?5file?5should?5be?5a?5struct?5ar@
	call	mexPrintf
; Line 296
	mov	rcx, rbp
	call	fake_answer
	jmp	$LN47@mexFunctio
$LN21@mexFunctio:
; Line 219
	lea	rcx, OFFSET FLAT:??_C@_0DI@DIKPDILO@Error?3?5label?5vector?5and?5instance@
	call	mexPrintf
; Line 220
	xor	r8d, r8d
	xor	edx, edx
	xor	ecx, ecx
	call	mxCreateDoubleMatrix_730
	xor	r8d, r8d
	xor	edx, edx
	xor	ecx, ecx
	mov	QWORD PTR [rbp], rax
	call	mxCreateDoubleMatrix_730
	xor	r8d, r8d
	xor	edx, edx
	xor	ecx, ecx
	mov	QWORD PTR [rbp+8], rax
	call	mxCreateDoubleMatrix_730
	mov	QWORD PTR [rbp+16], rax
; Line 221
	jmp	$LN47@mexFunctio
$LN25@mexFunctio:
; Line 205
	lea	rcx, OFFSET FLAT:??_C@_0BHA@ENALOOEJ@Usage?3?5?$FLpredicted_label?0?5accurac@
	call	mexPrintf
; Line 206
	xor	r8d, r8d
	xor	edx, edx
	xor	ecx, ecx
	call	mxCreateDoubleMatrix_730
	xor	r8d, r8d
	xor	edx, edx
	xor	ecx, ecx
	mov	QWORD PTR [rbp], rax
	call	mxCreateDoubleMatrix_730
	xor	r8d, r8d
	xor	edx, edx
	xor	ecx, ecx
	mov	QWORD PTR [rbp+8], rax
	call	mxCreateDoubleMatrix_730
	mov	QWORD PTR [rbp+16], rax
	jmp	$LN1@mexFunctio
mexFunction ENDP
_TEXT	ENDS
END
