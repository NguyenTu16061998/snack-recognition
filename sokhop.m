clc;
A=xlsread('E:\hoconl\ktnd\Humoment\mydata1.xlsx');
d=zeros(1,300);
for i=1:300
    for j=1:300
        if i~=j d(j)=sqrt((A(i,1)-A(j,1))^2+(A(i,2)-A(j,2))^2+(A(i,3)-A(j,3))^2+(A(i,4)-A(j,4))^2+(A(i,5)-A(j,5))^2+(A(i,6)-A(j,6))^2+(A(i,7)-A(j,7))^2);
        else d(j)=10000;
        end
    end
    dmin=min(d);
    for j=1:300;
        if dmin==d(j) A(i,9)=A(j,8);
        end
    end
end
xlswrite('E:\hoconl\ktnd\Humoment\mydata1.xlsx', A);