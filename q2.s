# Compilación de un bloque condicional que usa el operador AND. Modifica el 
# valor de las variables a y b para que observes el flujo de ejecución del 
# programa.
# s1 <-> a, s2 <-> b, s3 <-> c
        addi s1, zero, 1
        addi s2, zero, 1
        beq  s1, zero, L1
        beq  s2, zero, L1
        xori t0, s1, 1
        beq  t0, zero, L3
        j    L4
L3:     xori t0, s2, 1
        beq  t0, zero, L5
L4:     addi s3, zero, 1
        j    L2
L5:     xor  s3, s3, s3
        j    L2
L1:     beq  s1, zero, L6
        beq  s2, zero, L6
        addi s3, s3, 1
        j    L2
L6:     xor  s3, s3, s3
L2:     nop