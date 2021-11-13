function [x1,x2] = SolveQuadratic(a, b, c)
%SoveQuadratic solves any quadratic equation
disc = b*b - 4*a*c
x1 = (-b+ sqrt(disc))/2*a
x2 = (-b- sqrt(disc))/2*a
end

