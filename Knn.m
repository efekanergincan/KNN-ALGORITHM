filename = 'veri.xlsx'; %to read class or datasets

C1_1=xlsread(filename,'A2:A5'); %x axeses of class1
C1_2=xlsread(filename,'B2:B5'); %y axeses of class1
scatter(C1_1,C1_2,'O')          %to below on the figure
grid on
axis([-1 4 -1 4]); %axeses of graph, it can be adjust according to variables
hold on;
C2_1=xlsread(filename,'C2:C5'); %x axeses of class 2
C2_2=xlsread(filename,'D2:D5'); %y axeses of class 2
scatter(C2_1,C2_2,'+')

x=input('x noktasýný giriniz:'); %x axis of variable to be determined of it's class
y=input('y noktasýný giriniz:'); %%x axis of variable to be determined of it's class
scatter(x,y,'*')
K=size(C1_1);
N=size(C2_1);

%KNN Formulation
for i=1:K(1,1)
    A(:,i)=(x-C1_1(i,1))^2+(y-C1_2(i,1))^2;
end
for j=1:N(1,1)
    B(:,j)=(x-C2_1(j,1))^2+(y-C2_2(j,1))^2;
end
%distances
C=sqrt(A); 
D=sqrt(B);
%Sorting variables to compare
E=sort(C);
F=sort(D);
%Looking to nearest class of the variable 
if E(1,1)<F(1,1)
   G=min(E(1,1),F(1,1));
    fprintf('class c1')
else
    G=min(E(1,1),F(1,1));
    fprintf('class c2')
end
    