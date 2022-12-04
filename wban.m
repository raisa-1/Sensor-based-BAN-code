% program to determine the BPM of an ECG signal
 
 
% count the dominant peaks in the signal (these correspond to heart beats)
% - peaks are defined to be sampels greater than their two nearest neighbours and greater than 1
inputBPM = input('input the bpm :');
beat_count = 0;
 
for k = 2 : length(sig)-1
    if(sig(k)> sig(k-1) &  sig(k) > sig(k+1) & sig(k)> 1)
        %k
        %disp('Prominant peak found');
        beat_count = beat_count + 1;
    end
end
 
% Divide the beats counted by the signal duration (in minutes)
fs = 100;
N = length(sig);
duration_in_seconds = N/fs;
duration_in_minutes = duration_in_seconds/60;
BPM_avg = beat_count/duration_in_minutes;

if(BPM_avg < inputBPM)
        
        disp('too high');
elseif(BPM_avg > inputBPM)
        disp('too low');
else disp('normal');
       
    end