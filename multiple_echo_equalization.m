function [z] = multiple_echo_equalization(y,fs,a,delay)

L=length(y);
N=round(delay*fs);
for n=1:1:L 
    if n<=N
        z(n)=y(n);
    elseif n>N
        z(n)= y(n)-a*y(n-N);
    end
end
end
