%Nombre: Erik Martín Sánchez Amezcua
%Código: 222834371
%-Función ode45 que resuelve muméricamente el sistema Péndulo
%-ODE recibe una función, tiempo de simulación y condiciones iniciales
[t,x]=ode45(@Practica2_a, [0 20], [0 35 0 0]);
%-Creación de la figura donde se va a graficar x con respecto de t
%-x yt son parámetros que retorna la función ode 45
figure(1)
plot(t,x(:,1));
grid on
hold on
plot(t,x(:,3));
grid on
title("Representación sistema doble péndulo")