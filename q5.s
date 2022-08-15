# bool x = false, y = false;
# bool F = (!x && y || x && !y);
# s1 <-> x, s2 <-> y, F <-> s3
        addi s1, zero, 1
        addi s2, zero, 1
        xori t0, s1, 0x1    # !x && y
        beq  t0, zero, L1
        beq  s2, zero, L1
        j    L2
L1:     beq  s1, zero, L3
        xori t0, s2, 0x1
        beq  t0, zero, L3
L2:     addi s3, zero, 1
        j    L4
L3:     xor  s3, s3, s3
L4:     nop