function root = falseposition(xl,xu,step,epes)
n = 1;
er = 1;
xm = 0;

iter = [];
xm_values = [];
errors = [];

if h(xl)*h(xu) < 0
    
    while (n <= step && er > epes)
        
        xm_old = xm;
		xm = xu-(h(xu)*(xu-xl)/(h(xu)-h(xl)));
        %xm = (xl*h(xu) - xu*h(xl)) / (h(xu) - h(xl));

        if h(xl)*h(xm) < 0
            xu = xm;
        else
            xl = xm;
        end

        if n > 1
            er = abs((xm - xm_old)/xm);
        end

        iter(n) = n;
        xm_values(n) = xm;
        errors(n) = er; 

        n = n + 1;
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