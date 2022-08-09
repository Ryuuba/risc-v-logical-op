// Compilación de un bloque condicional que verifica que la variable x se 
// encuentra dentro de los rangos [-10, 1] o [1, 10], matemáticamente, 
// x ∈ [-10, 1] ∪ [1, 10], donde x ∈ ℤ. Escribe el código C++ 
// correspondiente y tradúcelo a RISC-V. Modifica el valor de la variable x 
// para que observes el flujo de ejecución del programa.

int main()
{
    int x = 0;
    bool F = false;
    if (x >= -10 && x <= -1 || x >= 1 && x <= 10)
        F = true;
    return 0;
}