function dx = MovRotacional(t, x)
    %---Definición de los parámetros---%
    m = 10;       % Masa (kg)
    r = 0.05;       % Radio (m)
    k = 100;       % Resorte (Nm)

    %---Estados del sistema---%
    dx = zeros(2, 1);

    %---Definición de la dinámica del sistema---%
    dx(1) = x(2);
    dx(2) = -((2*k*x(1))/(3*m));

end