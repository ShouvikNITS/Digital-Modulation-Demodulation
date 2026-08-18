clc; clear all; close all;

tb=1;
fs=100;
t=0:1/fs:tb-1/fs;
fm1=5;
fm2=10;
msg1=sin(2*pi*fm1*t);
msg2=sin(2*pi*fm2*t);
n=8;
bit_seq=randi([0 1],1,n);

%FSK Modulation
fsk=[];
for i=1:n
    if bit_seq(i)==1
        fsk=[fsk msg2];
    else
        fsk=[fsk msg1];
    end
end

%FSK Demodulation
rec_bits=[];
idx=1;
for i=1:n
    part=fsk(idx:idx+fs-1);
    e1=sum(part.*msg1);
    e2=sum(part.*msg2);
    rec_bits(i)=e2>e1;
    idx=idx+fs;
end

T=0:1/fs:(n*tb)-1/fs;

subplot(3,2,1);
stem(bit_seq,'filled');
subplot(3,2,2);
stairs(bit_seq);
subplot(3,2,3);
plot(t,msg1);
subplot(3,2,4);
plot(t,msg2);
subplot(3,2,5);
plot(T,fsk);
subplot(3,2,6);
stem(rec_bits,'filled');