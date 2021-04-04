clc;
A=xlsread('D:\KTND_ CT\xamtu128\dactrung\M.xlsx');
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
xlswrite('D:\KTND_ CT\xamtu128\dactrung\N.xlsx', A);
B=zeros(3,3);
for i=1:100
        if A(i,9)==1 B(4,4)=B(4,4)+1;
        end
        if A(i,9)==2 B(4,5)=B(4,5)+1;
        end
        if A(i,9)==3 B(4,6)=B(4,6)+1;
        end
end
for i=101:200
        if A(i,9)==1 B(5,4)=B(5,4)+1;
        end
        if A(i,9)==2 B(5,5)=B(5,5)+1;
        end
        if A(i,9)==3 B(5,6)=B(5,6)+1;
        end
end
for i=201:300
        if A(i,9)==1 B(6,4)=B(6,4)+1;
        end
        if A(i,9)==2 B(6,5)=B(6,5)+1;
        end
        if A(i,9)==3 B(6,6)=B(6,6)+1;
        end
end