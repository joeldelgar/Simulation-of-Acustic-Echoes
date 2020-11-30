function [y] = simple_echo_generation(x,fs,a,delay)

L=length(x);
N=round(delay*fs);
y=zeros(L,1);
for n=1:1:L 
    if n<=N
        y(n)=x(n);
    elseif n>N
        y(n)= x(n)+a*x(n-N);
    end
end
end

