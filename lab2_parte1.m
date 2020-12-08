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
legend('6y´(t) + 2y(t) = 8u´(t)','Location','northeast')
grid on
saveas(gcf,'H1 Lazo Abierto.png')

%Valores H1 Lazo abierto
H1 = tf([8 0],[6 2]);
[ceros_H1_la, polos_H1_la, ganancia_H1_la] = tf2zp([8 0],[6 2])
H1_tiempo_la = stepinfo(H1).SettlingTime()

% Lazo cerrado
H1_cerrado = feedback(H1,1,-1);
figure
step(H1_cerrado);
title('H1 Lazo Cerrado');
xlabel('Tiempo(segundos)');
ylabel('Amplitud');
legend('6y´(t) + 2y(t) = 8u´(t)','Location','northeast')
grid on
saveas(gcf,'H1 Lazo Cerrado.png')

%Valores H1 Lazo cerrado
[H1_num_cerrado, H1_den_cerrado] = tfdata(H1_cerrado, 'v');
[ceros_H1_lc, polos_H1_lc, ganancia_H1_lc] = tf2zp(H1_num_cerrado,H1_den_cerrado)
H1_tiempo_lc = stepinfo(H1_cerrado).SettlingTime()

%%% Segunda funcion %%%

%Definicion de la funcion
H2 = (5*(s^2) + 7*s + 4)/((s^2) + 6*s + 3);

% Lazo abierto 
figure
step(H2);
title('H2 Lazo Abierto');
xlabel('Tiempo(segundos)');
ylabel('Amplitud');
legend('y´´(t) + 6y´(t) + 3y(t) − 5´´u(t) − 7´(t) − 4u(t) = 0','Location','northeast')
grid on
saveas(gcf,'H2 Lazo Abierto.png')

%Valores H2 Lazo 
H2 = tf([5 7 4],[1 6 3]);
[ceros_H2_la, polos_H2_la, ganancia_H2_la] = tf2zp([5 7 4],[1 6 3])
H2_tiempo_la = stepinfo(H2).SettlingTime()

% Lazo cerrado
H2_cerrado = feedback(H2,1,-1);
figure
plot(step(H2_cerrado));
title('H2 Lazo Cerrado');
xlabel('Tiempo(segundos)');
ylabel('Amplitud');
legend('y´´(t) + 6y´(t) + 3y(t) − 5´´u(t) − 7´(t) − 4u(t) = 0','Location','northeast')
grid on
saveas(gcf,'H2 Lazo Cerrado.png')

%Valores H2 Lazo cerrado
[H2_num_cerrado, H2_den_cerrado] = tfdata(H2_cerrado, 'v');
[ceros_H2_lc, polos_H2_lc, ganancia_H2_lc] = tf2zp(H2_num_cerrado,H2_den_cerrado)
H2_tiempo_lc = stepinfo(H2_cerrado).SettlingTime()




