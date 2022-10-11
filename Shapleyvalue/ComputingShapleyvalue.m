%v=[1 3 0 0 9 8 3 8 4 7 6 2 0 1 2];
%v=[a b c d ab ac ad bc bd cd abc abd acd bcd abcd]
v=[33408,4160,7392,37888,44320,22272,58432]
n=log2(length(v)+1);
A=[matr(n) v'];
Shapleyvalue=zeros(1,n);
for i=1:n
G=sortrows(A,[n+1 -i]);
Shapleyvalue(i)=Shappie(G(:,n+2)');
end
Shapleyvalue
sum(Shapleyvalue);
