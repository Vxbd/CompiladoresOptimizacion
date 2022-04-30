.LC1:
        .string "%lf"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     DWORD PTR [rbp-52], edi
        mov     QWORD PTR [rbp-64], rsi
        cmp     DWORD PTR [rbp-52], 3
        jne     .L2
        mov     rax, QWORD PTR [rbp-64]
        add     rax, 8
        mov     rax, QWORD PTR [rax]
        mov     rdi, rax
        call    atoi
        mov     DWORD PTR N[rip], eax
        mov     rax, QWORD PTR [rbp-64]
        add     rax, 16
        mov     rax, QWORD PTR [rax]
        mov     rdi, rax
        call    atoi
        mov     DWORD PTR ITER[rip], eax
        jmp     .L3
.L2:
        mov     DWORD PTR N[rip], 1000
        mov     DWORD PTR ITER[rip], 1000000
.L3:
        lea     rax, [rbp-32]
        mov     esi, 0
        mov     rdi, rax
        call    gettimeofday
        mov     eax, 0
        call    coidgo
        lea     rax, [rbp-48]
        mov     esi, 0
        mov     rdi, rax
        call    gettimeofday
        mov     rdx, QWORD PTR [rbp-48]
        mov     rax, QWORD PTR [rbp-32]
        sub     rdx, rax
        mov     rax, rdx
        cvtsi2sd        xmm1, rax
        mov     rdx, QWORD PTR [rbp-40]
        mov     rax, QWORD PTR [rbp-24]
        sub     rdx, rax
        mov     rax, rdx
        cvtsi2sd        xmm0, rax
        movsd   xmm2, QWORD PTR .LC0[rip]
        divsd   xmm0, xmm2
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-8], xmm0
        mov     rax, QWORD PTR [rbp-8]
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 1
        call    printf
        mov     eax, 0
        leave
        ret
coidgo:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     eax, DWORD PTR N[rip]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 2
        mov     rdi, rax
        call    malloc
        mov     QWORD PTR [rbp-16], rax
        mov     eax, DWORD PTR N[rip]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 2
        mov     rdi, rax
        call    malloc
        mov     QWORD PTR [rbp-24], rax
        mov     eax, DWORD PTR N[rip]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 2
        mov     rdi, rax
        call    malloc
        mov     QWORD PTR [rbp-32], rax
        mov     DWORD PTR [rbp-8], 0
        jmp     .L6
.L9:
        mov     DWORD PTR [rbp-4], 0
        jmp     .L7
.L8:
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 2
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-16]
        add     rax, rdx
        movss   xmm1, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 2
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movss   xmm0, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 2
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-32]
        add     rax, rdx
        addss   xmm0, xmm1
        movss   DWORD PTR [rax], xmm0
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 2
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-16]
        add     rax, rdx
        movss   xmm0, DWORD PTR [rax+4]
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 2
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movss   xmm1, DWORD PTR [rax+4]
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 2
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-32]
        add     rax, rdx
        subss   xmm0, xmm1
        movss   DWORD PTR [rax+4], xmm0
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 2
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-16]
        add     rax, rdx
        movss   xmm1, DWORD PTR [rax+8]
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 2
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movss   xmm0, DWORD PTR [rax+8]
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 2
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-32]
        add     rax, rdx
        mulss   xmm0, xmm1
        movss   DWORD PTR [rax+8], xmm0
        add     DWORD PTR [rbp-4], 1
.L7:
        mov     eax, DWORD PTR N[rip]
        cmp     DWORD PTR [rbp-4], eax
        jl      .L8
        add     DWORD PTR [rbp-8], 1
.L6:
        mov     eax, DWORD PTR ITER[rip]
        cmp     DWORD PTR [rbp-8], eax
        jl      .L9
        nop
        nop
        leave
        ret
.LC0:
        .long   0
        .long   1093567616