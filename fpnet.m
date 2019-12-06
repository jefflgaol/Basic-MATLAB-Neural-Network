function [a]=fpnet(p,w,b,tftype)
[~,col]=size(p);
o=ones(1,col);

n=w*p+b*o;
if tftype==0,
    a=n;
end
if tftype==1,
    a=1./(1+exp(-n));
end
if tftype==2,
    a=(exp(n)-exp(-n))./(exp(n)+exp(-n));
end
if tftype==3,
    a=hardlim(n);
end