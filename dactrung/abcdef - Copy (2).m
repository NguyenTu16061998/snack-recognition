clc;
close all;
clear;
[image, path] = uigetfile('*.jpg','Select','MultiSelect','on');
list = strcat(path, image);
[ignore, len] = size(list);
Matrix_GLCM = zeros(len,8);

for i=1:len
    img = imread(list{1,i});
    glcms = graycomatrix(img);
    out = GLCMFeatures(glcms);
    feature = [out.contrast, out.correlation out.homogeneity, out.energy, out.entropy, out.sumVariance, out.inverseDifference]
    Matrix_GLCM(i,1:7) = feature;
    SplitText = split(image{1,i});
    category = SplitText{1,1}(1) - '0';
    Matrix_GLCM(i,8) = category;
end
xlswrite('M.xlsx', Matrix_GLCM);