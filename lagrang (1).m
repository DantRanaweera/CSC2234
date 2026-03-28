function [sum]=lagrang(x,y,x0)
 n=length(x);  %%
 v=zeros(n,1);


 sum=0;
 for i=1:n
     product=y(i);
     for j=1:n
         if i~=j     %% i not equal to j or not
             product=product*(x0-x(j))/(x(i)-x(j));
         end
     end
     sum=sum+product;
 end
end