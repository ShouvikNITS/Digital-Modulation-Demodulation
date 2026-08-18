clc; clear all; close all;

tb=1;
fs=100;
t=0:1/fs:tb-1/fs;
fm=3;
msg=sin(2*pi*fm*t);
n=8;
bit_seq=randi([0 1],1,n);

%PSK Modulation
psk=[];
for i=1:n
    if bit_seq(i)==1
        psk=[psk msg];
    else
        psk=[psk -msg];
    end
end

%PSK Demodulation
rec_bits=[];
idx=1;
for i=1:n
    part=psk(idx:idx+fs-1);
    c=sum(part.*msg);
    rec_bits(i)=c>0;
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
plot(t,-msg);
subplot(3,2,5);
plot(T,psk);
subplot(3,2,6);
stem(rec_bits,'filled');