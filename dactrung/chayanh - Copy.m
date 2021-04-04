clc;
close all;
clear;
[image, path] = uigetfile('*.*','Select','MultiSelect','on');
list = strcat(path, image);
[ignore, len] = size(list);
for i=1:len
    img = imread(list{1,i});
    ten=image{1,i}(1:6);
    ten=strcat(path,ten,'2.png');
    %img=rgb2gray(img);
    T=graythresh(img);
    [m,n]=size(img)
    for i=1:m
        for j=1:n
            if img(i,j)==255 img(i,j)=0;
            else img(i,j)=255;
            end
        end
    end
img=imresize(img,[50 50]);
    imwrite(img,ten);
end