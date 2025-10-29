N=size(M);
e1=0;
e2=0;
e3=0;
Z=zeros(4,33,174);
n=1;
countbs=zeros(1,4);
countsbs=zeros(1,4);
for i=1:N(1)
    if M(i,18)==44
        for j=1:32
            p=i+j-1;
            Z(1,j,n)=M(p,11);
            Z(2,j,n)=fbm(M(p,17),M(p,7),M(p,19),M(p,20),0.1852,0.9972,1);
            Z(3,j,n)=fbm(M(p,17),M(p,7),M(p,19),M(p,20),0.1907,1,1/2);
            Z(4,j,n)=fbm(M(p,17),M(p,7),M(p,19),M(p,20),0.3068,0,0.5006);
        end
        n=n+1;
    end    
end
for n=1:74
    for j=1:32
        Z(2,33,n)=Z(2,33,n)+norm(Z(2,j,n)-Z(1,j,n))^2;
        Z(3,33,n)=Z(3,33,n)+norm(Z(3,j,n)-Z(1,j,n))^2;
        Z(4,33,n)=Z(4,33,n)+norm(Z(4,j,n)-Z(1,j,n))^2;
    end
    for j=2:4
        Z(j,33,n)=Z(j,33,n)/32;
    end
    if Z(2,33,n)<Z(3,33,n)
        ef=(Z(3,33,n)-Z(2,33,n))/Z(3,33,n);
        if ef<0.05
            countbs(1)=countbs(1)+1;
        elseif ef<0.1
            countbs(2)=countbs(2)+1;
        else
            countbs(3)=countbs(3)+1;
        end
    end
    if Z(2,33,n)<Z(4,33,n)
        ef=(Z(4,33,n)-Z(2,33,n))/Z(4,33,n);
        if ef<0.05
            countsbs(1)=countsbs(1)+1;
        elseif ef<0.1
            countsbs(2)=countsbs(2)+1;
        else
            countsbs(3)=countsbs(3)+1;
        end
    end
    e1=e1+Z(2,33,n);
    e2=e2+Z(3,33,n);
    e3=e3+Z(4,33,n);
end
e1=e1/74;
e2=e2/74;
e3=e3/74;

