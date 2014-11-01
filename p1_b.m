function [error_fw,error_ct] = p1_b(dx)

% n = 100;
% x = 0:dx:2;
% 
% dfx_exact = zeros(n,1); %Exact Solution
% dfx_fw = zeros(n,1); %Forward Differencing
% dfx_ct = zeros(n,1); %Central Differencing
% fw_error = zeros(n,1);
% ct_error = zeros(n,1);
%   
% for i = 1:n
%     dfx_exact(i) = dfx(x(i));
%     dfx_fw(i) = (fx(x(i)+dx)-fx(x(i)))/dx;
%     dfx_ct(i) = (fx(x(i)+dx)-fx(x(i)-dx))/2/dx;
%     
%     fw_error = dfx_exact(i) - dfx_fw(i);
%     ct_error = dfx_exact(i) - dfx_ct(i);
% end
% 
% error_fw = mean(fw_error);
% error_ct = mean(ct_error);
[dfx_fw, error_fw] = forward_diff(dx);
[dfx_ct, error_ct] = central_diff(dx);