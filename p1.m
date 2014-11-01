clc
clear all
close all

% vec = linspace(10^-15,10^-1);
vec = logspace(-15,-1);

figure(1)
for dx = vec
    [fw_error,ct_error] = p1_b(dx);
    
    loglog(dx,abs(fw_error),'bx',dx,abs(ct_error),'rx')
    hold on
end

xlabel('dx')
ylabel('Error')
legend('Foward','Central')