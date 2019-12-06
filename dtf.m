function [dv]=dtf(a,tftype)
if tftype==0,
    dv=diag(ones(size(a)));
end
if tftype==1,
    dv=diag(a.*(1-a));
end
if tftype==2,
    dv=diag(1-a.*a);
end