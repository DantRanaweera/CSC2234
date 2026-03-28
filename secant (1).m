function[root]=secant(x0,x1,step,epes)
n=1;
er=1;


if f(x0)*f(x1)<0
    while (n<=step && er>epes)
        f_x0=f(x0);
        f_x1=f(x1);

        if (f_x1-f_x0==0)
            error("Divisiom by zero encounted in secent method ");
        end

        x2=x1-(f_x1*(x1-x0))/(f_x1-f_x0);

        er=abs((x2-x1)/x2);

        x0=x1;
        x1=x2;
        n=n+1;
        error(n)=er;
        stp(n)=n;

    end

    root=x2;
    plot(stp,error);
    xlabel('stp');
    ylabel('error');

else
    warning(['no root garanteed in the given interval.....']);

end
