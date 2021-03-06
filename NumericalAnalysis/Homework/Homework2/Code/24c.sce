// @Author: Rosas Hernandez Oscar Andres
// @Author: Alarcón Alvarez Aylin Yadira Guadalupe
// @Author: Laurrabaquio Rodríguez Miguel Salvador
// @Author: Pahua Castro Jesús Miguel Ángel

getd('/Users/mac/Documents/Projects/Learning/UNAM/NumericalAnalysis/Homework2/Code/Algorithms')
clc;

A24 = [
    1 0 0 0 1;
    -1 1 0 0 1;
    -1 -1 1 0 1;
    -1 -1 -1 1 1;
    -1 -1 -1 -1 1;
];

[L, U, P, Q] = CompleteLUDecomposition(A24);

disp("L")
disp(L)

disp("U")
disp(U)

disp("P")
disp(P)

disp("Q")
disp(Q)

disp("L * U")
disp(L * U)

disp("P * A * Q")
disp(P * A24 * Q)

disp("Error: L * U - (P * A * Q)")
disp( (L * U) - (P * A24 * Q) )
