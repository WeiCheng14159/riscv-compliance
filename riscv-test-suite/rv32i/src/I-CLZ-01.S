#include "compliance_test.h"
#include "compliance_io.h"
#include "test_macros.h"

# Test Virtual Machine (TVM) used by program.
RV_COMPLIANCE_RV32M

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    RVTEST_IO_INIT
    RVTEST_IO_ASSERT_GPR_EQ(x31, x0, 0x00000000)
    RVTEST_IO_WRITE_STR(x31, "# Test Begin\n")

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x31, "# Test part 1\n");

    # Addresses for test data and results
    la      x1, test_1_data
    la      x2, test_1_res

    # Load testdata
    lw      x10, 0(x1)

    # Register initialization

    # Test
    sw      x10, 0(x2)
    jal     clz

    # Store results
    sw      x10, 4(x2)

    //
    // Assert
    //
    RVTEST_IO_CHECK()
    RVTEST_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000)
    RVTEST_IO_WRITE_STR(x31, "# Test part 1 - Complete\n");
    
    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x31, "# Test part 2\n");
    
    # Addresses for test data and results
    la      x1, test_2_data
    la      x2, test_2_res

    # Load testdata
    lw      x10, 0(x1)

    # Register initialization

    # Test
    sw      x10, 0(x2)
    jal     clz

    # Store results
    sw      x10, 4(x2)

    //
    // Assert
    //
    RVTEST_IO_CHECK()
    RVTEST_IO_ASSERT_GPR_EQ(x2, x10, 0x0000001F)
    RVTEST_IO_WRITE_STR(x31, "# Test part 2 - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x31, "# Test part 3\n");

    # Addresses for test data and results
    la      x1, test_3_data
    la      x2, test_3_res

    # Load testdata
    lw      x10, 0(x1)

    # Register initialization

    # Test
    sw      x10, 0(x2)
    jal     clz

    # Store results
    sw      x10, 4(x2)

    //
    // Assert
    //
    RVTEST_IO_CHECK()
    RVTEST_IO_ASSERT_GPR_EQ(x2, x10, 0x00000008)
    RVTEST_IO_WRITE_STR(x31, "# Test part 3 - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x31, "# Test part 4\n");
    
    # Addresses for test data and results
    la      x1, test_4_data
    la      x2, test_4_res

    # Load testdata
    lw      x10, 0(x1)

    # Register initialization

    # Test
    sw      x10, 0(x2)
    jal     clz

    # Store results
    sw      x10, 4(x2)

    //
    // Assert
    //
    RVTEST_IO_CHECK()
    RVTEST_IO_ASSERT_GPR_EQ(x2, x10, 0x00000001)
    RVTEST_IO_WRITE_STR(x31, "# Test part 4 - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x31, "# Test part 5\n");
    
    # Addresses for test data and results
    la      x1, test_5_data
    la      x2, test_5_res

    # Load testdata
    lw      x10, 0(x1)

    # Register initialization

    # Test
    sw      x10, 0(x2)
    jal     clz

    # Store results
    sw      x10, 4(x2)

    //
    // Assert
    //
    RVTEST_IO_CHECK()
    RVTEST_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000)
    RVTEST_IO_WRITE_STR(x31, "# Test part 5 - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x31, "# Test part 6\n");
    
    # Addresses for test data and results
    la      x1, test_6_data
    la      x2, test_6_res

    # Load testdata
    lw      x10, 0(x1)

    # Register initialization

    # Test
    sw      x10, 0(x2)
    jal     clz

    # Store results
    sw      x10, 4(x2)

    //
    // Assert
    //
    RVTEST_IO_CHECK()
    RVTEST_IO_ASSERT_GPR_EQ(x2, x10, 0x00000010)
    RVTEST_IO_WRITE_STR(x31, "# Test part 6 - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x31, "# Test part 7\n");
    
    # Addresses for test data and results
    la      x1, test_7_data
    la      x2, test_7_res

    # Load testdata
    lw      x10, 0(x1)

    # Register initialization

    # Test
    sw      x10, 0(x2)
    jal     clz

    # Store results
    sw      x10, 4(x2)

    //
    // Assert
    //
    RVTEST_IO_CHECK()
    RVTEST_IO_ASSERT_GPR_EQ(x2, x10, 0x00000003)
    RVTEST_IO_WRITE_STR(x31, "# Test part 7 - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x31, "# Test part 8\n");
    
    # Addresses for test data and results
    la      x1, test_8_data
    la      x2, test_8_res

    # Load testdata
    lw      x10, 0(x1)

    # Register initialization

    # Test
    sw      x10, 0(x2)
    jal     clz

    # Store results
    sw      x10, 4(x2)

    //
    // Assert
    //
    RVTEST_IO_CHECK()
    RVTEST_IO_ASSERT_GPR_EQ(x2, x10, 0x00000006)
    RVTEST_IO_WRITE_STR(x31, "# Test part 8 - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x31, "# Test part 9\n");

    # Addresses for test data and results
    la      x1, test_9_data
    la      x2, test_9_res

    # Load testdata
    lw      x10, 0(x1)

    # Register initialization

    # Test
    sw      x10, 0(x2)
    jal     clz

    # Store results
    sw      x10, 4(x2)

    //
    // Assert
    //
    RVTEST_IO_CHECK()
    RVTEST_IO_ASSERT_GPR_EQ(x2, x10, 0x00000002)
    RVTEST_IO_WRITE_STR(x31, "# Test End\n")
    
    RV_COMPLIANCE_HALT
    # ---------------------------------------------------------------------------------------------
    # HALT

    # ---------------------------------------------------------------------------------------------
    # Count Leading Zero program 
    # x5 -> t0
    # x6 -> t1
    # x7 -> t2
    # x28 -> t3
    # x10 -> a0
    
    clz:
        lw    x5, mask
        li    x6, 32
        li    x7, 0
    _for:
        bne   x6, zero, _count
    _return:
        mv    x10, x7
        jr    ra
    _count:
        addi  x6, x6, -1
        and   x28, x10, x5
        bne   x28, zero, _return
        addi  x7, x7, 1
        srli  x5, x5, 1
        j     _for
    
RV_COMPLIANCE_CODE_END

# Input data section.
    .data
mask:
    .word 0x80000000
test_1_data:
    .word 0xFFFFFFFF
test_2_data:
    .word 0x00000001
test_3_data:
    .word 0x00A0000F
test_4_data:
    .word 0x7FFFFFFF
test_5_data:
    .word 0x80000000
test_6_data:
    .word 0x0000ABCD
test_7_data:
    .word 0x12345678
test_8_data:
    .word 0x03DCBA98
test_9_data:
    .word 0x36925814

# Output data section.
RV_COMPLIANCE_DATA_BEGIN

test_1_res:
    .fill 2, 4, -1
test_2_res:
    .fill 2, 4, -1
test_3_res:
    .fill 2, 4, -1
test_4_res:
    .fill 2, 4, -1
test_5_res:
    .fill 2, 4, -1
test_6_res:
    .fill 2, 4, -1
test_7_res:
    .fill 2, 4, -1
test_8_res:
    .fill 2, 4, -1
test_9_res:
    .fill 2, 4, -1

RV_COMPLIANCE_DATA_END
