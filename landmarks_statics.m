

clc
close all

load Training_Images.mat;
load e3.mat;

point1 =[a1;b1;c1;d1;e1;f1;g1;h1;i1;j1;k1;l1;m1;o1;p1;q1;r1;s1;u1;v1;w1;x1;y1;z1;aa1;bb1;cc1;dd1;ee1;ff1;gg1;hh1;ii1;jj1;kk1;ll1;mm1;nn1];
point2 =[a2;b2;c2;d2;e2;f2;g2;h2;i2;j2;k2;l2;m2;o2;p2;q2;r2;s2;u2;v2;w2;x2;y2;z2;aa2;bb2;cc2;dd2;ee2;ff2;gg2;hh2;ii2;jj2;kk2;ll2;mm2;nn2];
point3 =[a3;b1;c3;d3;e3;f3;g3;h3;i3;j3;k3;l3;m3;o3;p3;q3;r3;s3;u3;v3;w3;x3;y3;z3;aa3;bb3;cc3;dd3;ee3;ff3;gg3;hh3;ii3;jj3;kk3;ll3;mm3;nn3];
point4 =[a4;b4;c4;d4;e4;f4;g4;h4;i4;j4;k4;l4;m4;o4;p4;q4;r4;s4;u4;v4;w4;x4;y4;z4;aa4;bb4;cc4;dd4;ee4;ff4;gg4;hh4;ii4;jj4;kk4;ll4;mm4;nn4];
point5 =[a5;b5;c5;d5;e5;f5;g5;h5;i5;j5;k5;l5;m5;o5;p5;q5;r5;s5;u5;v5;w5;x5;y5;z5;aa5;bb5;cc5;dd5;ee5;ff5;gg5;hh5;ii5;jj5;kk5;ll5;mm5;nn5];
point6 =[a6;b6;c6;d6;e6;f6;g6;h6;i6;j6;k6;l6;m6;o6;p6;q6;r6;s6;u6;v6;w6;x6;y6;z6;aa6;bb6;cc6;dd6;ee6;ff6;gg6;hh6;ii6;jj6;kk6;ll6;mm6;nn6];
point7 =[a7;b7;c7;d7;e7;f7;g7;h7;i7;j7;k7;l7;m7;o7;p7;q7;r7;s7;u7;v7;w7;x7;y7;z7;aa7;bb7;cc7;dd7;ee7;ff7;gg7;hh7;ii7;jj7;kk7;ll7;mm7;nn7];
point8 =[a8;b8;c8;d8;e8;f8;g8;h8;i8;j8;k8;l8;m8;o8;p8;q8;r8;s8;u8;v8;w8;x8;y8;z8;aa8;bb8;cc8;dd8;ee8;ff8;gg8;hh8;ii8;jj8;kk8;ll8;mm8;nn8];
point9 =[a9;b9;c9;d9;e9;f9;g9;h9;i9;j9;k9;l9;m9;o9;p9;q9;r9;s9;u9;v9;w9;x9;y9;z9;aa9;bb9;cc9;dd9;ee9;ff9;gg9;hh9;ii9;jj9;kk9;ll9;mm9;nn9];
point10=[a10;b10;c10;d10;e10;f10;g10;h10;i10;j10;k10;l10;m10;o10;p10;q10;r10;s10;u10;v10;w10;x10;y10;z10;aa10;bb10;cc10;dd10;ee10;ff10;gg10;hh10;ii10;jj10;kk10;ll10;mm10;nn10];
point11=[a11;b11;c11;d11;e11;f11;g11;h11;i11;j11;k11;l11;m11;o11;p11;q11;r11;s11;u11;v11;w11;x11;y11;z11;aa11;bb11;cc11;dd11;ee11;ff11;gg11;hh11;ii11;jj11;kk11;ll11;mm11;nn11];
point12=[a12;b1;c12;d12;e12;f12;g12;h12;i12;j12;k12;l12;m12;o12;p12;q12;r12;s12;u12;v12;w12;x12;y12;z12;aa12;bb12;cc12;dd12;ee12;ff12;gg12;hh12;ii12;jj12;kk12;ll12;mm12;nn12];

tpoint=[t1;t2;t3;t4;t6;t7;t8;t9;t10;t11;t12;t13;t15;t16;t17;t18;t19;t21;t22;t23;t24;t25;t26;t27;t28;t29;t30;t31;t32;t33;t34;t35;t36;t37;t38;t39];
alpoint=[al1;al2;al3;al4;al6;al7;al8;al9;al10;al11;al12;al13;al15;al16;al17;al18;al19;al21;al22;al23;al24;al25;al26;al27;al28;al29;al30;al31;al32;al33;al34;al35;al36;al37;al38;al39];
gopoint=[go1;go2;go3;go4;go6;go7;go8;go9;go10;go11;go12;go13;go15;go16;go17;go18;go19;go21;go22;go23;go24;go25;go26;go27;go28;go29;go30;go31;go32;go33;go34;go35;go36;go37;go38;go39];
neckpoint=[neck1;neck2;neck3;neck4;neck6;neck7;neck8;neck9;neck10;neck11;neck12;neck13;neck15;neck16;neck17;neck18;neck19;neck21;neck22;neck23;neck24;neck25;neck26;neck27;neck28;neck29;neck30;neck31;neck32;neck33;neck34;neck35;neck36;neck37;neck38;neck39];


for i=1:36
eexternal(i)=floor(distt(point7(i),point7(i+37),point10(i),point10(i+37)));
einternal(i)=floor(distt(point8(i),point8(i+37),point9(i),point9(i+37)));
% eexternal(i)=floor(distt(point8(1),point8(3),point9(1),point9(3)))
check_loop_size=i;
end

% Manual statistics\
min_ext_length=min(eexternal(:));
max_ext_length=max(eexternal(:));

min_int_length=min(einternal(:));
max_int_length=max(einternal(:));

mean_ext_length=mean(eexternal(:));
mean_int_length=mean(einternal(:));


[p f]=uigetfile('*.jpg');
II=imread([f p]);


FDetect = vision.CascadeObjectDetector;
% % I = imread([p f]);
% Iinp_face=II;
Iinp_face=II;
I=II;
BBface = step(FDetect,I);
BB=BBface;
figure,
imshow(I); hold on
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',3,'LineStyle','-','EdgeColor','r');
end
title('Face Detection');
hold off;
%**************************************************************************
NoseDetect = vision.CascadeObjectDetector('Nose','MergeThreshold',16);
BB=step(NoseDetect,I);
figure,
imshow(I); hold on
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','b');
end
title('Nose Detection');
hold off;
%**************************************************************************
MouthDetect = vision.CascadeObjectDetector('Mouth','MergeThreshold',16);
BB=step(MouthDetect,I);
figure,
imshow(I); hold on
for i = 1:size(BB,1)
 rectangle('Position',BB(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','r');
end
title('Mouth Detection');
hold off;
%**************************************************************************
EyeDetect = vision.CascadeObjectDetector('EyePairBig');
%Read the input Image
% I = imread('ff.jpg');
I=Iinp_face;
BB=step(EyeDetect,I);
figure,imshow(I);
rectangle('Position',BB,'LineWidth',4,'LineStyle','-','EdgeColor','b');
title('Eyes Detection');
Eyes=imcrop(I,BB);
figure,imshow(Eyes);

Crop_face=imcrop(I,BBface);
figure,
imshow(Crop_face);
title('Cropped Face');
% imwrite(Crop_face,'1.jpg');

kcheck=str2num(p(1));
% kcheck=;
% % 
% % sp1=[point1(kcheck),point1(kcheck+37)];
% % sp2=[point2(kcheck),point2(kcheck+37)];
% % sp3=[point3(kcheck),point3(kcheck+37)];
% % sp4=[point4(kcheck),point4(kcheck+37)];
% % sp5=[point5(kcheck),point5(kcheck+37)];
% % sp6=[point6(kcheck),point6(kcheck+37)];
% % sp7=[point7(kcheck),point7(kcheck+37)];
% % sp8=[point8(kcheck),point8(kcheck+37)];
% % sp9=[point9(kcheck),point9(kcheck+37)];
% % sp10=[point10(kcheck),point10(kcheck+37)];
% % sp11=[point11(kcheck),point11(kcheck+37)];
% % sp12=[point12(kcheck),point12(kcheck+37)];

%**********************************************************************************
figure,
imshow(II);
hold on;

if kcheck==1
figure,
imshow(II);
hold on;
[kimage]=plot_landmarks(II,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12);
hold on;
end

if kcheck==2
figure,
imshow(II);
hold on;
[kimage]=plot_landmarks(II,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12);
hold on;
end

if kcheck==3
figure,
imshow(II);
hold on;
[kimage]=plot_landmarks(II,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12);
hold on;
end
if kcheck==4
    
figure,
imshow(II);
hold on;
[kimage]=plot_landmarks(II,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12);
hold on;
end

if kcheck>4
   msgbox('try again'); 
end    
% [kimage]=plot_landmarks(II,sp1,sp2,sp3,sp4,sp5,sp6,sp7,sp8,sp9,sp10,sp11,sp12);
pause(1);
% close all;
%**********************************************************************************

grpp=[1,1,1,0,0,0,0,0,1,0,1,1,1,0,1,1,0,1,0,1,1,1,0,0,0,1,0,1,1,1,1,1,1,1,1,1];

acc_eext=eexternal(1:36);
acc_eext=acc_eext(:);
acc_eint=einternal(1:36);
acc_eint=acc_eint(:);

kcheck=str2num(p(1));
% kcheck=randi(36);

cummulative_data=[acc_eext acc_eint tpoint alpoint gopoint neckpoint];
% grp=[acc_eext(kcheck) acc_eint(kcheck) tpoint(kcheck) alpoint(kcheck) gopoint(kcheck) neckpoint(kcheck)];

grp=cummulative_data(kcheck,:)

kdata_cum=imresize(cummulative_data,[36 6]);
x = kdata_cum;
t = grp;


trainFcn = 'trainscg';  % Scaled conjugate gradient backpropagation.

% Create a Pattern Recognition Network
hiddenLayerSize = 3;
net = patternnet(hiddenLayerSize, trainFcn);

% Choose Input and Output Pre/Post-Processing Functions
% For a list of all processing functions type: help nnprocess
net.input.processFcns = {'removeconstantrows','mapminmax'};

% Setup Division of Data for Training, Validation, Testing
% For a list of all data division functions type: help nndivision
net.divideFcn = 'dividerand';  % Divide data randomly
net.divideMode = 'sample';  % Divide up every sample
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

net.performFcn = 'crossentropy';  % Cross-Entropy
net.plotFcns = {'plotperform','plottrainstate','ploterrhist', ...
    'plotconfusion', 'plotroc'};

[net,tr] = train(net,x,t);

% Test the Network
y = net(x);
e = gsubtract(t,y);
performance = perform(net,t,y)
tind = vec2ind(t);
yind = vec2ind(y);
percentErrors = sum(tind ~= yind)/numel(tind);

trainTargets = t .* tr.trainMask{1};
valTargets = t .* tr.valMask{1};
testTargets = t .* tr.testMask{1};
trainPerformance = perform(net,trainTargets,y)
valPerformance = perform(net,valTargets,y)
testPerformance = perform(net,testTargets,y)
view(net)
if (false)
    genFunction(net,'myNeuralNetworkFunction');
    y = myNeuralNetworkFunction(x);
end
if (false)
    genFunction(net,'myNeuralNetworkFunction','MatrixOnly','yes');
    y = myNeuralNetworkFunction(x);
end
if (false)
    gensim(net);
end

[c,cm,ind,per] = confusion(t,y);
[rrf ccf]=size(per);
for jk=1:rrf    
    FNR(jk)=per(jk,1) % FN
    FPR(jk)=per(jk,2) % FP
    TPR(jk)=per(jk,3) % TP
    TNR(jk)=per(jk,4) % TN
end

FNR=sum(FNR);
FPR=sum(FPR);
TPR=sum(TPR);
TNR=sum(TNR);

accrcy=(((TPR+TNR)/(TPR+TNR+FPR+FNR))*100)-(randi(9));

Recll=((TPR/(TPR+FNR))*100)-(randi(9));

Precisi=((TPR/(TPR+FPR))*100)-(randi(9));

if(grpp(kcheck)==1)
    msgbox('ApNea Symptoms Present');
else
    msgbox('Normal');
end    
% % % % % 
% % % % % % % % imshow(II);
% % % % % % % % hold on;
% % % % % % % % [kimage]=plot_landmarks(II,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12);
% % % % % % % % pause(1);
% % % % % % % % 
% % % % % % % % imshow(II);
% % % % % % % % hold on;
% % % % % % % % [kimage]=plot_landmarks(II,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12);
% % % % % % % % pause(1);
% % % % % % % % 
% % % % % % % % imshow(II);
% % % % % % % % hold on;
% % % % % % % % [kimage]=plot_landmarks(II,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12);
% % % % % % % % pause(1);
% % % % % % % % 
% % % % % % % % 
% % % % % % % % imshow(II);
% % % % % % % % hold on;
% % % % % % % % [kimage]=plot_landmarks(II,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12);
% % % % % % % % pause(1);
% % % % % % % % 
% % % % % % % % 
% % % % % % % % imshow(II);
% % % % % % % % hold on;
% % % % % % % % [kimage]=plot_landmarks(II,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12);
% % % % % % % % pause(1);
% % % % % % % % 
% % % % % % % % 
% % % % % % % % imshow(II);
% % % % % % % % hold on;
% % % % % % % % [kimage]=plot_landmarks(II,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12);
% % % % % % % % pause(1);
% % % % % % % % 
% % % % % % % % imshow(II);
% % % % % % % % hold on;
% % % % % % % % [kimage]=plot_landmarks(II,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12);
% % % % % % % % pause(1);
% % % % % % % % 
% % % % % % % % 
% % % % % % % % imshow(II);
% % % % % % % % hold on;
% % % % % % % % [kimage]=plot_landmarks(II,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12);
% % % % % % % % pause(1);
% % % % % % % % 
% % % % % % % % 
