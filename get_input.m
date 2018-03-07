function [k, motion] = get_input(sub)

mydir1_0='D:\Matlab\EEG_subjects\subject 0';
mydir1='D:\Matlab\EEG_subjects\subject ';
mydir2='\with occular artifact\';

path = '';
if sub < 10 
    path = [mydir1_0,int2str(sub),mydir2];
else
    path = [mydir1,int2str(sub),mydir2];
end

data = load([path,'cnt.mat']);
output = load([path,'mrk.mat']);
x = data.cnt{1,1}.x;
y = output.mrk{1,1}.y;
event = output.mrk{1,1}.event.desc;
time = output.mrk{1,1}.time;

s1 = size(x);
samples = s1(1);
channels = s1(2);
s2 = size(time);
trials = s2(2);

span = Inf;
temp = 0;
for i = 1:trials
    if (time(i) - temp) < span
        span = time(i) - temp;
    end
    temp = time(i);
end
span = round(span/5)    
k = [];
motion = [];
t = 1;
j = 1;

for i = 1:trials
    next = round(time(i)/5);
    if event(i) == 16        
        k(:,:,j) = x(t:t+span,:);
        motion(j) = y(j);
        j = j+1;
    end
    t = next+1;
end