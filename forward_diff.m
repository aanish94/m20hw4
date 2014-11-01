function [fw, error_fw] = forward_diff(dx);

n = 100;
x = 0:0.01:2;

dfx_exact = zeros(n,1);
dfx_fw = zeros(n,1);
fw_error = zeros(n,1);

for i = 1:n
    dfx_exact(i) = dfx(x(i));
    dfx_fw(i) = (fx(x(i)+dx)-fx(x(i)))/dx;
    
    fw_error(i) = dfx_exact(i) - dfx_fw(i);
end

fw = dfx_fw;
error_fw = mean(fw_error);