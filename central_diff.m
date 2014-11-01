function [ct, error_ct] = central_diff(dx);

n = 100;
x = 0:0.01:2;

dfx_exact = zeros(n,1);
dfx_ct = zeros(n,1);
ct_error = zeros(n,1);


for i = 1:n
    dfx_exact(i) = dfx(x(i));
    dfx_ct(i) = (fx(x(i)+dx)-fx(x(i)-dx))/2/dx;
    
    ct_error = dfx_exact(i) - dfx_ct(i);
end

ct = dfx_ct;
error_ct = mean(ct_error);