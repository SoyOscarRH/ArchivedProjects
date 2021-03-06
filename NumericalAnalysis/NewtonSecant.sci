// /**
//  * Function to aproximate a root of f(x) using the secant method
//  *
//  * @param a - a number 
//  * @param b - a number 
//  * @param f - a function :v
//  * @param tolerance - a number to set how exact you want a root
//  * @param MaxIterations - a number of maximum iterations
//  * @return estimation - a number such someFunction(estimation) = 0
//  *
//  * @author: Rosas Hernandez Oscar Andres
//  * @author: Alarcón Alvarez Aylin Yadira Guadalupe
//  * @author: Laurrabaquio Rodríguez Miguel Salvador
//  * @author: Pahua Castro Jesús Miguel Ángel
//  */
function [estimation, iterations] = Secant(a, b, f, tolerance, MaximumIterations)
    iterations = 0;
    estimation = a, oldEstimation = b;

    while (iterations < MaximumIterations)
        newEstimation = SecantStep(estimation, oldEstimation, f);
        oldEstimation = estimation, estimation = newEstimation;

        if (abs(f(estimation)) < tolerance)
            break;
        elseif (RelativeDifference(oldEstimation, estimation) < tolerance) 
            break;
        end

        iterations = iterations + 1;
    end
endfunction

function [newStep] = SecantStep(step, oldStep, f)
    derivative = (f(step) - f(oldStep)) / (step - oldStep);
    newStep = step - f(step) / derivative;
endfunction
