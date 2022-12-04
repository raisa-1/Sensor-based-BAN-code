sig=load('ecg.txt');
plot(sig)
hold on
plot(sig,'ro');
xlabel('Samples');
ylabel('Electrical Activity');
title('ECG signal sampled at 100Hz');
hold on
plot(sig,'ro');