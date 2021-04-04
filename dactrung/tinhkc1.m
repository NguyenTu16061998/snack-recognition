A=xlsread('D:\KTND_ CT\xamtu128\dactrung\M.xlsx');
[image, path] = uigetfile('*.*','Select');
list = strcat(path, image);
img=imread(list);
glcms = graycomatrix(img);
out = GLCMFeatures(glcms);
feature = [out.contrast, out.correlation out.homogeneity, out.energy]
M = feature
d=zeros(1,300);
for i=1:300
    d(i)=sqrt((A(i,1)-M(1))^2+(A(i,2)-M(2))^2+(A(i,3)-M(3))^2+(A(i,4)-M(4))^2);
    if d(i)==0 d(i)=1000000;
    end
end
dmin=min(d)
for i=1:300;
    if dmin==d(i) ketqua=A(i,8);
    end
end
if ketqua==6 disp('mut dua');
else if ketqua==4 disp('mut gung');
    else disp('mut hat sen');
    end
end