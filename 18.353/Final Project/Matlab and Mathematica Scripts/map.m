% a = 1.134;
% b = -0.3909;
% c = -1.147;
% d = -1.055;

a = -1.118;
b = -1072;
c = 1.118;
d = -385.4;

transient = 350;
iterations = 500;
start = 0.005;
n = 100;

f = @(x,a,b,c,d) vpa(a*exp(b*x) + c*exp(d*x), 500);
vec = [start];


for i = 2:iterations
    for k = 1:n
        start = f(start,a,b,c,d);
    end
    vec(i) = start;
end
plot(vec(transient:iterations))
hold on
