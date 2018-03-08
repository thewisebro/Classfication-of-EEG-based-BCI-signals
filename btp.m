subjects = 5;
x_val = [];
y_val = [];
for sub = 1:subjects
    for trial = 1:2:5
        k = cnt{sub,trial}.x;
        E = de_noise(k);
        Y = pcm(E);
        [x,y] = compress(Y, mrk{sub,trial}.y);
        x_val = [x_val; x];
        y_val = [y_val; y];
    end
end