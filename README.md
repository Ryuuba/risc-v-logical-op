# Compilación de condiciones lógicas

Los siguiente problemas tratan de la compilación de condiciones de bifurcación con operadores lógicos. Para realizar la compilación, las instrucciones de bifurcación se deben ordenar de tal manera que se respete el flujo de ejecución del programa.

Cuando la condición de salto en alto nivel tiene la forma `a && b`, basta con que `a` sea falso para que el salto se produzca. Si `a` es verdadero, entonces se debe evaluar la veracidad de `b` para producir o no el salto.

Si la condición de salto tiene la forma `a || b`, entonces basta con la `a` sea verdadera para que el bloque de instrucciones de la estructura *if* se ejecute, si no, se debe evaluar `b` para decidir si el salto condicional debe o no ocurrir.

## Operadores lógicos en C++

| Operador         | Descripción       | Ejemplo       |
| ---------------- | ----------------- | ------------- |
| `!`              | Negación lógica   | `!x`          |
| `&&`             | Conjunción lógica | `x && y`      |
| `\|\|`           | Disyunción lógica | `x \|\| y`    |

## Problemas

1. Compilación de un bloque condicional que usa el operador *not*. Modifica el valor de la variable a para que observes el flujo de ejecución del programa.

```C++
bool a = true, b = false;
if (!a)
    b = true;
```

2. Compilación de un bloque condicional que usa el operador *and*. Modifica el valor de las variables a y b para que observes el flujo de ejecución del programa.

```C++
bool a = true, b = true, c;
if (a && b)
    c = !(a && b);
else
    c = a && b;
```

3. Compilación de un bloque condicional que usa el operador *or*. Modifica el valor de las variables a y b para que observes el flujo de ejecución del programa.

```C++
bool a = true, b = false, c;
if (a || b)
    c = !a || b;
else
    c = a || !b;
```

4. Compilación de un bloque condicional que asigna a la variable booleana *F* el valor `true` si es que la variable *x* se encuentra dentro de los rangos [-10, -1] o [1, 10], matemáticamente, *x* ∈ [-10, -1] ∪ [1, 10], donde *x* ∈ ℤ. Escribe el código C++ correspondiente y tradúcelo a RISC-V. Modifica el valor de la variable *x* para que observes el flujo de ejecución del programa.

5. Compilación de la ecuación booleana *F*(*x*, *y*) = *x* ⊕ *y*. Escribe el código C++ que permite evaluar la función *F* utilizando operadores lógicos; después traduce el código a RISC-V. Comprueba que tu código ensamblador funciona para cualquier combinación de las variables *x* y *y*.
