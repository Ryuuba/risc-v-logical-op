# bool x = false, y = false, z = false;
# bool F = !x && y || z;
# s1 <-> x, s2 <-> y, z <-> s3, F <-> s4
        addi s1, zero, 0        # initializes x
        addi s2, zero, 0        # initializes y
        addi s3, zero, 0        # initializes z
        xori t0, s1, 1          # saves !x in t0
        beq  t0, zero, L1       # branches if !x = false to evaluate z
        beq  s2, zero, L1       # branches if y = false to evaluate z
        j    L2                 # jumps to assings F <- true
L1:     beq  s3, zero, L3       # branches if z = false to assign F <- false
L2:     addi s4, zero, 1        # F <- true
        j    L4                 # escapes from the false case
L3:     xor  s4, s4, s4         # F <- false
L4:     nop

