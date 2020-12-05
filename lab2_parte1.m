%%%% PRIMERA PARTE %%%%


%%% Primera funcion %%%

%Definicion de la funcion
s = tf ('s');
H1 = (8*s)/(6*s + 2);

% Lazo abierto 
figure
plot(step(H1));
title('H1 Lazo Abierto');
xlabel('Tiempo(segundos)');
ylabel('Amplitud');
legend('6y´(t) + 2y(t) = 8u´(t)','Location','southwest')
grid on


% Lazo cerrado
H1_cerrado = feedback(H1,-1);
figure
plot(step(H1_cerrado));
title('H1 Lazo Cerrado');
xlabel('Tiempo(segundos)');
ylabel('Amplitud');
legend('6y´(t) + 2y(t) = 8u´(t)','Location','southwest')
grid on


%%% Segunda funcion %%%

%Definicion de la funcion
H2 = (8*(s^2) + 7*s + 4)/((s^2) + 6*s + 3);

% Lazo abierto 
figure
plot(step(H2));
title('H2 Lazo Abierto');
xlabel('Tiempo(segundos)');
ylabel('Amplitud');
legend('y´´(t) + 6y´(t) + 3y(t) − 5´´u(t) − 7´(t) − 4u(t) = 0','Location','southwest')
grid on

% Lazo cerrado
H2_cerrado = feedback(H2,-1);
figure
plot(step(H2_cerrado));
title('H2 Lazo Cerrado');
xlabel('Tiempo(segundos)');
ylabel('Amplitud');
legend('y´´(t) + 6y´(t) + 3y(t) − 5´´u(t) − 7´(t) − 4u(t) = 0','Location','southwest')
grid on




