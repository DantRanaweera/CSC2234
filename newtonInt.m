function [yint2]=newtonInt(x,y,xi)
%x=[1 2 4]
%y=[2 3 10]
%xi=3

n=length(x); %n=3
fdd=zeros(n);
% 0 0 0
% 0 0 0
% 0 0 0

yint=zeros(n,1);
% 0
% 0
% 0
Ea=zeros(n,1);
fdd(:,1)=y(:); % selecting all values from 1st column

% x  y     1st                 2nd
% 1  2     (3-2)/(2-1)=1       (3.5-1)/(4-1)
% 2  3     (10-3)/(4-2)=3.5    0
% 4  10    0                   0

%FDD table (f(x) differencial table)

for j=2:n % selecting data from 1st column to nth column (2:3)
    for i=1:n+1-j % (1:2)
        % 2   0   0
        % 3   0   0 
        % 10  0   0

        fdd(i,j)=(fdd(i+1,j-1)-fdd(i,j-1))/(x(i+j-1)-x(i));
    end
end

xterm=1;
yint(1)=fdd(1,1) % b1 value

for order=2:n
    xterm = xterm*(xi-x(order-1)); % (xi-x1)
    yint2 = yint(order-1)+fdd(1,order)*xterm %use to find the values of b2 and b3
    Ea(order) = yint2 %use to change the order

end
%f2(xi)= b1 + b2(xi-x1) + b3(xi-x1)(xi-x2)
end


