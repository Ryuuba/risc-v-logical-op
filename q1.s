# Compilación de un bloque condicional que usa el operador NOT. Modifica el 
# valor de la variable a para que observes el flujo de ejecución del programa.
# s1 <-> a, s2 <-> b
        addi s1, zero, 0
        xor  s2, s2, s2
        xori t0, s1, 1
        beq  t0, zero, L1
        addi s2, zero, 1
L1:     nop