function root = bisection(xl,xu,step,epes)
%1 2 5 0.001
n = 1;
er = 1;
xm = 0;

iter = [];
xm_values = [];
errors = [];

if f(xl)*f(xu) < 0
    
    while (n <= step && er > epes)
        %1<=5 && 1>0.001
        
        xm_old = xm;
        xm = (xl + xu)/2;% 1st root ;1+2/2=1.5

        if f(xl)*f(xm) < 0
            xu = xm;
        else
            xl = xm;
        end

        if n > 1
            er = abs((xm - xm_old)/xm);
        end

        iter(n) = n;% 1 2 3 4 5
        xm_values(n) = xm;%1.5 1.75 1 1 1
        errors(n) = er;% 1 

        n = n + 1;%2
    end

    root = xm;

    figure
    plot(iter, xm_values)
    xlabel('Iteration')
    ylabel('Root Approximation')
    grid on

else
    disp('There is no root in this interval');
end

end