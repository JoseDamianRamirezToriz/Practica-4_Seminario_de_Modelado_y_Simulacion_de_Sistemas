%---Condiciones iniciales---%
x0 = [0, 2]; % [x(0), dx(0)]

%---Tiempo de simulación---%
tspan = [0, 10]; % De 0 a 10 segundos

%---Resolver el sistema con ODE45---%
[t, x] = ode45(@MovRotacional, tspan, x0);

%---Graficar los resultados---%
figure(1);
plot(t, x(:, 1), 'b', 'LineWidth', 1.5); % Posición en azul
hold on;
plot(t, x(:, 2), 'y', 'LineWidth', 1.5); % Velocidad en amarillo
hold off;

% Configurar fondo negro y colores
set(gca, 'Color', 'k', 'XColor', 'w', 'YColor', 'w', 'GridColor', 'w');

title('Movimiento Rotacional', 'Color', 'w');
xlabel('Tiempo', 'Color', 'w');
ylabel('Distancia', 'Color', 'w');
legend({'x', 'dx'}, 'TextColor', 'w', 'EdgeColor', 'w');

grid on;
