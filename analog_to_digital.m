function [x] = analog_to_digital (s,fs)

te = audiorecorder(fs,16,1,-1);
recordblocking(te,s);
x=getaudiodata(te);
end

