clc; clear all; close all; 
%% Integracao Numerica - Quadratura Numerica
% --------
dx = 0.1; % discretizacao espacial
for j =1:3
Int = 0;
xi = 0; % limite inicial da integral
xf = 5; % limite final   da integral 
yf  = xf; 
yi  = xi;
x = xi;
NumIteracoes = floor((xf - xi)/dx);
for i = 1:NumIteracoes
    x = x + dx; 
    fx = -x^2 + 30*x + 2;    % funcao que se deseja integral
    A = fx*dx;
    Int = Int + A;
end
ValorExato = -(yf^3)/3 + 30*(yf^2)/2 + 2*yf - (-(yi^3)/3 + 30*(yi^2)/2 + 2*yi);
fprintf('A INTEGRAL EH = %f \n', Int)
fprintf('Para dx = %f o erro Relativo %f \n',dx,abs((ValorExato - Int)/ValorExato))
dx = dx/10;
end
