function [nx]=normf(x,xmin,xmax)
nx=2*(x-xmin)./(xmax-xmin)-1;