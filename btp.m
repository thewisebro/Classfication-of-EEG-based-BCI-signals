clear all
subjects = 29;
x_val = [];
y_val = [];
for sub = 1:subjects
    if(sub==1)
        load('F:\BTP\New\EEG_subjects\subject 01\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 01\with occular artifact\mrk.mat');
    elseif(sub==2)
        load('F:\BTP\New\EEG_subjects\subject 02\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 02\with occular artifact\mrk.mat');
    elseif(sub==3)
        load('F:\BTP\New\EEG_subjects\subject 03\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 03\with occular artifact\mrk.mat');
    elseif(sub==4)
        load('F:\BTP\New\EEG_subjects\subject 04\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 04\with occular artifact\mrk.mat');
    elseif(sub==5)
        load('F:\BTP\New\EEG_subjects\subject 05\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 05\with occular artifact\mrk.mat');
    elseif(sub==6)
        load('F:\BTP\New\EEG_subjects\subject 06\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 06\with occular artifact\mrk.mat');
    elseif(sub==7)
        load('F:\BTP\New\EEG_subjects\subject 07\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 07\with occular artifact\mrk.mat');
    elseif(sub==8)
        load('F:\BTP\New\EEG_subjects\subject 08\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 08\with occular artifact\mrk.mat');
    elseif(sub==9)
        load('F:\BTP\New\EEG_subjects\subject 09\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 09\with occular artifact\mrk.mat');
    elseif(sub==10)
        load('F:\BTP\New\EEG_subjects\subject 10\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 10\with occular artifact\mrk.mat');
    elseif(sub==11)
        load('F:\BTP\New\EEG_subjects\subject 11\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 11\with occular artifact\mrk.mat');
    elseif(sub==12)
        load('F:\BTP\New\EEG_subjects\subject 12\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 12\with occular artifact\mrk.mat');
    elseif(sub==13)
        load('F:\BTP\New\EEG_subjects\subject 13\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 13\with occular artifact\mrk.mat');
    elseif(sub==14)
        load('F:\BTP\New\EEG_subjects\subject 14\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 14\with occular artifact\mrk.mat');
    elseif(sub==15)
        load('F:\BTP\New\EEG_subjects\subject 15\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 15\with occular artifact\mrk.mat');
    elseif(sub==16)
        load('F:\BTP\New\EEG_subjects\subject 16\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 16\with occular artifact\mrk.mat');
    elseif(sub==17)
        load('F:\BTP\New\EEG_subjects\subject 17\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 17\with occular artifact\mrk.mat');
    elseif(sub==18)
        load('F:\BTP\New\EEG_subjects\subject 18\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 18\with occular artifact\mrk.mat');
    elseif(sub==19)
        load('F:\BTP\New\EEG_subjects\subject 19\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 19\with occular artifact\mrk.mat');
    elseif(sub==20)
        load('F:\BTP\New\EEG_subjects\subject 20\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 20\with occular artifact\mrk.mat');
    elseif(sub==21)
        load('F:\BTP\New\EEG_subjects\subject 21\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 21\with occular artifact\mrk.mat');
    elseif(sub==22)
        load('F:\BTP\New\EEG_subjects\subject 22\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 22\with occular artifact\mrk.mat');
    elseif(sub==23)
        load('F:\BTP\New\EEG_subjects\subject 23\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 23\with occular artifact\mrk.mat');
    elseif(sub==24)
        load('F:\BTP\New\EEG_subjects\subject 24\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 24\with occular artifact\mrk.mat');
    elseif(sub==25)
        load('F:\BTP\New\EEG_subjects\subject 25\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 25\with occular artifact\mrk.mat');
    elseif(sub==26)
        load('F:\BTP\New\EEG_subjects\subject 26\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 26\with occular artifact\mrk.mat');
    elseif(sub==27)
        load('F:\BTP\New\EEG_subjects\subject 27\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 27\with occular artifact\mrk.mat');
    elseif(sub==28)
        load('F:\BTP\New\EEG_subjects\subject 28\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 28\with occular artifact\mrk.mat');
    else
        load('F:\BTP\New\EEG_subjects\subject 29\with occular artifact\cnt.mat');
        load('F:\BTP\New\EEG_subjects\subject 29\with occular artifact\mrk.mat');
    end
    for trial = 1:2:5
        [sub trial]
        k = cnt{1,trial}.x;
        k = k(:,1:30);
        E = de_noise(k);
        Y = pcm(E);
        [x,y] = compress(Y, mrk{1,trial}.y);
        x_val = [x_val; x];
        y_val = [y_val; y];
    end
end
