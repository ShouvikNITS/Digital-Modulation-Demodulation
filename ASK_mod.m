clc; clear all; close all;

tb=1;
fs=100;
t=0:1/fs:tb-1/fs;
fm=5;
msg=sin(2*pi*fm*t);
n=8;
bit_seq=randi([0 1],1,n);

%ASK Modulation
ask=[];
for i=1:n
    if bit_seq(i)==1
        ask=[ask msg];
    else
        ask=[ask zeros(1,length(msg))];
    end
end

%ASK Demodulation
rec_bits=[];
idx=1;
for i=1:n
    part=ask(idx:idx+fs-1);
    bits=sum(part.*msg);
    rec_bits(i)=bits>0;
    idx=idx+fs;
end

T=0:1/fs:(n*tb)-1/fs;

subplot(3,2,1);
stem(bit_seq,'filled');
subplot(3,2,2);
stairs(bit_seq);
subplot(3,2,3);
plot(t,msg);
subplot(3,2,4);
plot(T,ask);
subplot(3,2,5);
stem(rec_bits,'filled');
subplot(3,2,6);
stairs(rec_bits);