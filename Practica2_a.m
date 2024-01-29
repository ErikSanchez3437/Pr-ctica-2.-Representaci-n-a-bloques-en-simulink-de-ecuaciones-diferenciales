%Nombre: Erik Martín Sánchez Amezcua
%Código: 222834371
function dx=Practica2_a(t,x) %-dy es el nombre del retorno
%-Declaración de parámetros
m1=0.2;
m2=0.1;
l1=0.3;
l2=0.25;
g=9.81;
c1=0.2;
%-Establecer las matrices
M= [(m1+m2)*l1 m2*l2*cos(x(2)-x(1)); l1*cos(x(2)-x(1)) l2];
C= [c1 -m2*l2*x(4)*sin(x(2)-x(1)); l1*(sin(x(2)-x(1))*x(3)) 0];
G= [(m1+m2)*g*sin(x(1)); g*sin(x(2))];
%-Generar un vector
dx=zeros (4,1);
%-Definición del espacio de estados
dx(1)=x(3);
dx(2)=x(4);
MI=inv(M);
dx(3:4)=MI*(-C*[x(3);x(4)]-G);