clc;clear;
format long g
Data=load('ping_1.txt');%��ȡ��������
x=Data(:,1);
y=Data(:,2);
z=Data(:,3);
Point_number_size= size(x);
Point_number=Point_number_size(1);

len=0.04;
xn=ceil((max(x)-min(x))/len)+1;
yn=ceil((max(y)-min(y))/len)+1;
zn=ceil((max(z)-min(z))/len)+1;
%���ְ�Χ��
%Box_suoyin=zeros(Point_number,3);
%for i=1:Point_number
    %Box_suoyin(i,1)=ceil((Coordx(i)-min(Coordx))/dx)+1;
    %Box_suoyin(i,2)=ceil((Coordy(i)-min(Coordy))/dy)+1;
    %Box_suoyin(i,3)=ceil((Coordz(i)-min(Coordz))/dz)+1;
%end
%���ÿ�����������
%cifang=floor(log10(xn))+1;
%Sum_box=Box_suoyin(:,1)*10^(cifang*2)+Box_suoyin(:,2)*10^(cifang*1)+Box_suoyin(:,3);
%A=[Sum_box,(1:Point_number)'];
%B=sortrows(A);%Ĭ�����ݵ�һ�е���ֵ�������ƶ�ÿһ�У������һ�е���ֵ����ͬ�ģ��������ұȽϡ�
%g=0;
%for i=1:Point_number
    %if B(i+1)-B(i)==0;
A={};
for i=1:xn
    for j=1:yn
        for k=1:zn
            A{i,j,k}=[];
        end
    end
end
%����Ԫ������
for i=1:Point_number
    hang=ceil((x(i)-min(x))/len)+1;
    lie=ceil((y(i)-min(y))/len)+1;
    gao=ceil((z(i)-min(z))/len)+1;
    A{hang,lie,gao}=[A{hang,lie,gao};x(i),y(i),z(i)];
end
%������ͬһ����Χ���ڵĵ����һ������
Box_xuliehao=[];
for i=1:xn
    for j=1:yn
        for k=1:zn
            if(isempty(A{i,j,k})==0)      %ʵ�ķ���
                Box_xuliehao=[Box_xuliehao;i,j,k];
            end
        end
    end    
end
%����ʵ�ķ�������к�
K=input('����Ϊ��')
Box_xuliehao_number=size(Box_xuliehao);









