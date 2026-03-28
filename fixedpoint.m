function[root]=fixedpoint(x0,steps,epes)
xr=x0;
n=1;
er=1;

while(n<=steps && er>epes)
    xr_old=xr;%1.5
    xr=g(xr_old);
    if xr ~= 0
        er=abs((xr-xr_old)/xr);
    end
    error(n)=er;
    stp(n)=n;
    n=n+1;
end
plot(stp,error);
 xlabel('stp');
 ylabel('error');
 root=xr;
end


