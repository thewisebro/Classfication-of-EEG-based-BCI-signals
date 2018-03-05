function k = get_input(sub)

mydir1_0='D:\Matlab\EEG_subjects\subject 0';
mydir1='D:\Matlab\EEG_subjects\subject ';
mydir2='\with occular artifact\cnt.mat';

path=''
if sub<10
    path = strcat(mydir1_0,sub,mydir2);
else
    path = strcat(mydir1,sub,mydir2);
end

cnt = load(path);
k = cnt{1,1}.x;