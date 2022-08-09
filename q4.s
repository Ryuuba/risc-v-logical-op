# int x = 0;
# bool F = false;
# if (x >= -10 && x <= -1 || x >= 1 && x <= 10)
#     F = true;
# s1 <-> x, s2 <-> F
        addi s1, zero, 0x1
        addi s2, zero, 0
        addi t0, zero, 0xFFFFFFF6
        blt  s1, t0, L1
        addi t0, zero, 0xFFFFFFFF
        bgt  s1, t0, L1
        j    L3
L1:     addi t0, zero, 0x1
        blt  s1, t0, L2
        addi t0, zero, 0xA
        bgt  s1, t0, L2
L3:     addi s2, zero, 0x1
L2:     nop