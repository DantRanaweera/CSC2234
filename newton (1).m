function[root]=newton(x0,step,epes)

n=1;
xr=x0;
er=1;

while (n<=step && er>epes)
    if df(xr)~=0                      %%xr=new root
        xr_new=xr-(f(xr)/df(xr));  %%df =derivative of xr
    end

    if xr_new~=0
        er=abs((xr_new-xr)/xr_new);


    end

     xr=xr_new;    %% every itteration we change the root value
     n=n+1;
     error(n)=er;
     stp(n)=n;

end
plot(stp,error);
root=xr;
xlabel("steps");
ylabel("error");
