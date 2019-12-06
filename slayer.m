function [sl]=slayer(a,w,s,tftype)
sl=dtf(a,tftype)*(w')*s;