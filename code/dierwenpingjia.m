A=dierwenpingjia
r1=A(:,1);
r2=A(:,2);
r3=A(:,3);
r4=A(:,4);
r5=A(:,5);
r6=A(:,6);
r1=min(r1)./r1;
r2=min(r2)./r2;
r3=min(r3)./r3;
r6=min(r6)./r6;
r6=min(r6)./r6;
r4=r4/max(r4);
R=[r1 r2 r3 r4 r5 r6];
R(isnan(R)==1)=0
w=[0.2 0.3 0.4 -0.3 0.1 -0.3];
lwf=R*w'
wsf=zeros(11,1);
for k=1:11
    wsf(k)=prod(R(k,:).^w);
end
wsf
c=zeros(11,6);
for i=1:11
    for j=1:6
        c(i,j)=w(j)*R(i,j);
    end
end
cmax=max(c);
cmin=min(c);
for i=1:11
    S(i)=sqrt(sum((c(i,:)-cmax).^2));
    s(i)=sqrt(sum((c(i,:)-cmax).^2));
end
format long