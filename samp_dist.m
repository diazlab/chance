function y=samp_dist(x,n)

[xs,sidx]=sort(x);
t=xs(1);for i=2:length(xs),t(i)=t(i-1)+xs(i);end
r=random('unif',0,1,n,1);
n=histc(r,[0,t]);
y=[];
for i=1:length(n)-1
    y=[y,sidx(i)*ones(1,n(i))];
end