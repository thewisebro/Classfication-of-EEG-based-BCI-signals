p = ones(957,1);
q = zeros(783,1);
p1 = ones(710,1);%right y_val (75%)
p2 = zeros(247,1);%wrong y_val
p3 = [p1; p2]; %values with x_val as 1
p = [p p3];
q1 = zeros(587,1);%right y_val (75%)
q2 = ones(196,1);%wrong y_val
q3 = [q1; q2]; %values with x_val as 0
q = [q q3];

A = [p;q]; %adding x_val 1 & 0
Z = randperm(1740); %random number array from 1 to 1740
P = zeros(1740,1); %first feature
P1 = zeros(1740,1); %second feature
P2 = zeros(1740,1); %output

%making x_val continuous from 0 to 0.4 and 0.6 to 1
for i=1:1:1740
    if(A(Z(i),1)==0)
        P(i) = 0.4*randi([0 100])/100;
        P1(i) = 0.4*randi([0 100])/100;
    end
    if(A(Z(i),1)==1)
        P(i) = 0.6+0.4*randi([0 100])/100;
        P1(i) = 0.6+0.4*randi([0 100])/100;
    end
    P2(i) = A(Z(i),2);
end

%making 20% values range from 0.4 to 0.6
idx = randperm(1740,348); %idx for first feature
idx1 = randperm(1740, 348); %idx for second feature
for i=1:1:348
    if(P(idx(i))<=0.4) 
        P(idx(i)) = 0.4 + 0.6*randi([0 100])/100;
    end
    if(P(idx(i))>=0.6)
        P(idx(i)) = 0.6*randi([0 100])/100;
    end
    if(P1(idx1(i))<=0.4) 
        P1(idx1(i)) = 0.4 + 0.6*randi([0 100])/100;
    end
    if(P1(idx1(i))>=0.6)
        P1(idx1(i)) = 0.6*randi([0 100])/100;
    end
end

X = [P P1]; %adding features to one
Y = P2; %output value
T = [X Y]; %combining x_val and y_val
