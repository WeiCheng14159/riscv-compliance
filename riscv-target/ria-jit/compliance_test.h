// RISC-V Compliance Test Header File
// Copyright (c) 2017, Codasip Ltd. All Rights Reserved.
// See LICENSE for license details.
//
// Description: Common header file for RV32I tests

#ifndef _COMPLIANCE_TEST_H
#define _COMPLIANCE_TEST_H

#include "riscv_test.h"

//-----------------------------------------------------------------------
// RV Compliance Macros
//-----------------------------------------------------------------------

#undef RVTEST_PASS
#define RVTEST_PASS                                                           \
        li a7, 93;                                                            \
        li a0, 0;                                                             \
        j end_testcode;                                                       \

#undef RVTEST_FAIL
#define RVTEST_FAIL                                                           \
        li a7, 93;                                                            \
        li a0, 1;                                                             \
        j end_testcode;                                                       \

#define RV_COMPLIANCE_HALT                                                    \
        RVTEST_PASS                                                           \

#define RV_COMPLIANCE_RV32M                                                   \
        RVTEST_RV64M                                                          \

#define RV_COMPLIANCE_CODE_BEGIN                                              \
        .section .text.init;                                                  \
        .align  6;                                                            \
        .weak stvec_handler;                                                  \
        .weak mtvec_handler;                                                  \
        .globl _start;                                                        \
_start:                                                                       \

#define RV_COMPLIANCE_CODE_END                                                \
end_testcode:                                                                 \
        bne a0, x0, 1234f;                                                    \
        ecall;                                                                \
1234:                                                                         \
        sw x0, 0(x0);                                                         \

#define RV_COMPLIANCE_DATA_BEGIN                                              \
        RVTEST_DATA_BEGIN                                                     \

#define RV_COMPLIANCE_DATA_END                                                \
        RVTEST_DATA_END                                                       \

#endif
