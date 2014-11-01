function dfdx = dfx(x)
%Calculate the exact solution of df/dx w/ input x

dfdx = (3*exp(3*x)-2*sin(2*x))./(exp(3*x)+cos(2*x));