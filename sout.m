function [so]=sout(a,t,tftype)
so=-2*dtf(a,tftype)*(t-a);