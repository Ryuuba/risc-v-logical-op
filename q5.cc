// Compilación de la ecuación booleana F(x, y) = x ⊕ y. Escribe el 
// código C++; después tradúcelo a RISC-V. Comprueba que tu código ensamblador 
// funciona para cualquier combinación de las variables x, y y z.

int main()
{
    bool x = false, y = false;
    bool F = (!x && y || x && !y);
    return 0;
}