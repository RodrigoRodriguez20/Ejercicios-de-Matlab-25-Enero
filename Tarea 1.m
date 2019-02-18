%Rodrigo Gabriel Rodriguez Escareño 1629259
%Limite
n=[1 10 100 500 1000 2000 4000 8000]
n1=[16000 32000 64000 128000 256000 512000 1024000 2048000]
e1=(1+(1./n)).^n
e2=(1+(1./n1)).^n1
e=exp(1)
%Matrix
A=[2 6; 3 9]
B=[1 2 ;3 4]
C=[-5 5;5 3]
D=zeros(2,2)
G=[A D D;D B D;D D C]
%A
X=zeros(1,50);
n=50;
F=[1 1];
for i=3:n
    F(i)=F(i-1)+F(i-2);
    X(1)=1;
    X(2)=1;
    X(i)=F(i);
end
X(i)=F(i)

%B
X2=zeros(1,50);
F2=[1 1];
for i=3:n
    F2(i)=F(i)/F(i-1);
    X2(1)=1;
    X2(2)=1;
    X2(i)=F2(i);
end
X2(i)=F2(i)

RAZONAUREA=((1+sqrt(5))/2)

%2
Z1=(-10:.1:-5);
F3=(2+(sin(Z1)));

Z2=(-5:.1:2);
F4=exp(Z2);

Z3=(2:1:10);
F5=log((Z3.^2)+1);
plot(Z1,F3,Z2,F4,Z3,F5)

r=10;
solucion
