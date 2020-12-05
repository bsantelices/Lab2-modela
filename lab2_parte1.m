%%%% PRIMERA PARTE %%%%

s = tf ('s');
H1 = (8*s)/(6*s + 2);

%%% Primera funcion %%%

% Lazo abierto 
figure
plot(step(H1));
title('H1 Lazo Abierto');
xlabel('Tiempo(segundos)');
ylabel('Amplitud');
grid on


% Lazo cerrado
H1_cerrado = feedback(H1,-1);
figure
plot(step(H1_cerrado));
title('H1 Lazo Cerrado');
xlabel('Tiempo(segundos)');
ylabel('Amplitud');
grid on


%%% Segunda funcion %%%
H2 = (8*(s^2) + 7*s + 4)/((s^2) + 6*s + 3);

% Lazo abierto 
figure
plot(step(H2));
title('H2 Lazo Abierto');
xlabel('Tiempo(segundos)');
ylabel('Amplitud');
grid on

% Lazo cerrado
H2_cerrado = feedback(H2,-1);
figure
plot(step(H2_cerrado));
title('H2 Lazo Cerrado');
xlabel('Tiempo(segundos)');
ylabel('Amplitud');
grid on



