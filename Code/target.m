function y=target(x,M)
    y=0;
    N=size(M);
    for i=1:N(1)
        M(i,17)=M(i,17)*10000;
        M(i,7)=M(i,7)*10000;
        M(i,11)=M(i,11)*10000;
    end
    Z=zeros(2,33,174);
    n=1;
    for i=1:N(1)
        if M(i,18)==44
            for j=1:32
                p=i+j-1;
                Z(1,j,n)=M(p,11);
                Z(2,j,n)=fbm(M(p,17),M(p,7),M(p,19),M(p,20),x,0,0.5006);
            end
            n=n+1;
        end    
    end
    for n=1:75
        for j=1:32
            Z(2,33,n)=Z(2,33,n)+norm(Z(2,j,n)-Z(1,j,n))^2;
        end
        Z(2,33,n)=Z(2,33,n)/32;
    end
    for n=1:75
        y=y+Z(2,33,n);
    end
    y=y/75;
end