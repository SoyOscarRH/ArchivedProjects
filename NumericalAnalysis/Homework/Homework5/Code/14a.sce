// @Author: Rosas Hernandez Oscar Andres
// @Author: Alarcón Alvarez Aylin Yadira Guadalupe
// @Author: Pahua Castro Jesús Miguel Ángel

getd(pwd() + Directory);
clc;

points = [
    -0.5;
    -0.25;
    0;
]

valuations = [
    -0.024;
    0.334;
    1.101;
]

pointsToEvaluate = linspace(-1, 1)'

pointsEvaluated = NewtonHomogeneousInterpolant(points, valuations, pointsToEvaluate)
pointsEvaluated2 = NewtonInterpolant(points, valuations, pointsToEvaluate)

plot(points, valuations, "*red")
plot(pointsToEvaluate, pointsEvaluated2, "-green")
plot(pointsToEvaluate, pointsEvaluated, "-blue")

xtitle("Newton Homogeneous Interpolant", "x", "f(x)");

