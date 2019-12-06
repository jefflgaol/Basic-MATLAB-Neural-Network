%Input and Target of Learning Set
p1 = [0;0;0]; p2 = [0;0;5]; p3 = [0;5;0]; p4 = [0;5;5];
p5 = [5;0;0]; p6 = [5;0;5]; p7 = [5;5;0]; p8 = [5;5;5];
t1 = [0];   t2 = [5];   t3 = [5];   t4 = [0];
t5 = [5];   t6 = [0];   t7 = [0];   t8 = [1];
po = [p1 p2 p3 p4 p5 p6 p7 p8];
to = [t1 t2 t3 t4 t5 t6 t7 t8];

%Normalisasi of Input and Target
pmin = min(min(po)); pmax = max(max(po));
tmin = min(min(to)); tmax = max(max(to));
p = normf(po,pmin,pmax);
t = normf(to,tmin,tmax);

nnhl = 12; %Number of hidden layer
[rowp,colp] = size(p);
[rowt,~] = size(t);
ni = rowp;
nt = rowt;
nls = colp; %Number of learning set
w1 = randgen(nnhl,ni);
w2 = randgen(nt,nnhl);
b1 = randgen(nnhl,1);
b2 = randgen(nt,1);

%Learning Process
lr=0.1;
errtol=1;errtolmax=1e-6;epoch=0;epochmax=2000;
while errtol>errtolmax&&epoch<epochmax
    epoch=epoch+1;
    disp(epoch);
    errtol=0;
    for i=1:nls 
        %Forward Propagation
        a0=p(:,1);
        a1=fpnet(a0,w1,b1,1); %Logsig TF
        a2=fpnet(a1,w2,b2,0);
        a=a2;
        %Backward Propagation
        e=t(:,i)-a;
        J=sse(e);
        if J>errtolmax/nls,
            %Kalkulasi sensitifitas
            s2=sout(a2,t(:,i),0);
            s1=slayer(a1,w2,s2,1);
            %Weight and bias update
            w2=w2-lr*s2*a1';
            b2=b2-lr*s2;
            w1=w1-lr*s1*a0';
            b1=b1-lr*s1;
        end
        errtol=errtol+J;
    end 
end