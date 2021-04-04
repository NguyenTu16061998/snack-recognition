clc;
close all;
clear;
[image, path] = uigetfile('*.*','Select','MultiSelect','on');
list = strcat(path, image);
[ignore, len] = size(list);
for i=1:len
    img = imread(list{1,i});
    img1=rgb2gray(img);
    n=num2str(i);
   % link=strcat(path,'6-00',n,'-1.jpg');
     link1=strcat(path,'6-09',n,'-2.jpg');
    %imwrite(img,link);
     imwrite(img1,link1);
end