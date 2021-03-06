// @Author: Rosas Hernandez Oscar Andres
// @Author: Alarcón Alvarez Aylin Yadira Guadalupe
// @Author: Laurrabaquio Rodríguez Miguel Salvador
// @Author: Pahua Castro Jesús Miguel Ángel

getd(pwd() + Directory);
clc;

tolerance = 10^-5
MaxIterations = 100

function [x] = fa(x)
    x = exp(x) + 2^(-x) + 2*cos(x) - 6 
endfunction

function [x] = fb(x)
    x = log(x - 1) + cos(x - 1) 
endfunction

function [x] = fc(x)
    x = 2*x*cos(2*x) - (x - 2)^2 
endfunction

function [x] = fd(x)
    x = (x - 2)^2 - log(x)
endfunction

function [x] = fe(x)
    x = exp(x) - 3 * x^2
endfunction

function [x] = ff(x)
    x = sin(x) - exp(-x)
endfunction


estimation_fa = Secant( 1, 2, fa, tolerance, MaxIterations)
disp("a) f(x) = exp(x) + 2^(-x) + 2*cos(x) - 6")
disp("estimation_fa = " + string(estimation_fa))
disp("fa(estimation_fa) = " + string(fa(estimation_fa)))

estimation_fb = Secant( 1.3, 2, fb, tolerance, MaxIterations)
disp("b) f(x) = log(x - 1) + cos(x - 1)")
disp("estimation_fb = " + string(estimation_fb))
disp("fb(estimation_fb) = " + string(fb(estimation_fb)))

estimation_fc = Secant( 2, 3, fc, tolerance, MaxIterations)
disp("c) f(x) = 2*x*cos(2x) - (x - 2)^2 ")
disp("estimation_fc = " + string(estimation_fc))
disp("fc(estimation_fc) = " + string(fc(estimation_fc)))

estimation_fc = Secant( 3, 4, fc, tolerance, MaxIterations)
disp("estimation_fc = " + string(estimation_fc))
disp("fc(estimation_fc) = " + string(fc(estimation_fc)))

estimation_fd = Secant( 1, 2, fd, tolerance, MaxIterations)
disp("d) f(x) = (x - 2)^2 - log(x)")
disp("estimation_fd = " + string(estimation_fd))
disp("fd(estimation_fd) = " + string(fd(estimation_fd)))

estimation_fd = Secant( %e, 4, fd, tolerance, MaxIterations)
disp("estimation_fd = " + string(estimation_fd))
disp("fd(estimation_fd) = " + string(fd(estimation_fd)))

estimation_fe = Secant( 0, 1, fe, tolerance, MaxIterations)
disp("e) f(x) = exp(x) - 3 * x^2")
disp("estimation_fe = " + string(estimation_fe))
disp("fe(estimation_fe) = " + string(fe(estimation_fe)))

estimation_fe = Secant( 3, 5, fe, tolerance, MaxIterations)
disp("estimation_fe = " + string(estimation_fe))
disp("fe(estimation_fe) = " + string(fe(estimation_fe)))

estimation_ff = Secant( 0, 1, ff, tolerance, MaxIterations)
disp("f) f(x) = sin(x) - exp(-x)")
disp("estimation_ff = " + string(estimation_ff))
disp("ff(estimation_ff) = " + string(ff(estimation_ff)))

estimation_ff = Secant( 3, 4, ff, tolerance, MaxIterations)
disp("estimation_ff = " + string(estimation_ff))
disp("ff(estimation_ff) = " + string(ff(estimation_ff)))

estimation_ff = Secant( 6, 7, ff, tolerance, MaxIterations)
disp("estimation_ff = " + string(estimation_ff))
disp("ff(estimation_ff) = " + string(ff(estimation_ff)))