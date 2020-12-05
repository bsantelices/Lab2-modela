%Dedinicion de las funciones
s = tf ('s');
Funcion1 = (8*s)/(4*s + 2);
Funcion2 = (6)/(s + 5);
Funcion3 = (4*s + 3)/(3*(s^3) + 7*(s^2) + 1);
Funcion4 = (6)/(7*s + 1);
Funcion5 = (5*s + 3)/(5*(s^3) + (s^2) + 4);
Funcion6 = (5*s + 1)/((s^3) + 6*(s^2) + 5);

%Retroalimentacion de funcion3
F3Cerrado = feedback(Funcion3,+1);

%Respuesta del diagrama
Salida = Funcion1 + Funcion2 + (Funcion6 * ((Funcion4 * F3Cerrado) + (Funcion5 * F3Cerrado)))

%Grafico
figure
plot(step(Salida));
title('Grafico de respuesta al escalon');
xlabel('Tiempo(segundos)');
ylabel('Amplitud');
grid on

