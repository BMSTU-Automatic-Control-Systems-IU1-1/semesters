clear;
close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Лабораторная работа № 2
%          Устойчивость динамических систем
%
%   Выполнили:
%         Степанян Арман Нельсонович  - ИУ1-52Б
%         Шевченко Алексей Дмитриевич - ИУ1-52Б
%
%   Дата: 28.11.2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%
%   Система 1 (с значением 5)
%%%%%

sys1 = zpk(0, -5, 1);    % Инициализация системы
P1 = pole(sys1);         % Проверка полюсов системы
figure(1)                % Создание графика
subplot(1,2,1);          % Левая часть
plot(step(sys1));        % Переходный процесс
subplot(1,2,2);          % Правая часть
pzmap(sys1);             % Карта нулей и полюсов

%%%%%
%   Система 2 (с значением 5)
%%%%%

sys2 = zpk(0, 5, 1);
P2 = pole(sys2); 
figure(2)
subplot(1,2,1);
plot(step(sys2));
subplot(1,2,2);
pzmap(sys2);

%%%%%
%   Система 3 (с значением 5)
%%%%%

sys3 = zpk(0, [complex(-5, 2), complex(-5, -2)], 1); 
P3 = pole(sys3); 
figure(3)
subplot(1,2,1);
plot(step(sys3));
subplot(1,2,2);
pzmap(sys3);

%%%%%
%   Система 4 (с значением 5)
%%%%%

sys4 = zpk(0, [complex(0, 5), complex(0, -5)], 1);
P4 = pole(sys4); 
figure(4)
subplot(1,2,1);
plot(step(sys4));
subplot(1,2,2);
pzmap(sys4);

%%%%%
%   Система 5 (с значением 5)
%%%%%

sys5 = zpk(0, [complex(5, 2), complex(5, -2)], 1);
P5 = pole(sys5); 
figure(5)
subplot(1,2,1);
plot(step(sys5));
subplot(1,2,2);
pzmap(sys5);

%%%%%%%%%%
%
%       Пункт 2.4 Повторить всё с заменой "5" на "10" в полюсах системы
%
%%%%%%%%%%

%%%%%
%   Система 1 (с значением 10)
%%%%%

sys6 = zpk(0, -10, 1);  % Инициализация системы
P6 = pole(sys1);        % Проверка полюсов системы
figure(6)               % Создание графика
subplot(1,2,1);         % Левая часть
plot(step(sys6));       % Переходный процесс
subplot(1,2,2);         % Правая часть
pzmap(sys6);            % Карта нулей и полюсов

%%%%%
%   Система 2 (с значением 10)
%%%%%

sys7 = zpk(0, 10, 1);
P7 = pole(sys7); 
figure(7)
subplot(1,2,1);
plot(step(sys7));
subplot(1,2,2);
pzmap(sys7);

%%%%%
%   Система 3 (с значением 10)
%%%%%

sys8 = zpk(0, [complex(-10, 2), complex(-10, -2)], 1);
P8 = pole(sys8); 
figure(8)
subplot(1,2,1);
plot(step(sys8));
subplot(1,2,2);
pzmap(sys8);

%%%%%
%   Система 4 (с значением 10)
%%%%%

sys9 = zpk(0, [complex(0, 10), complex(0, -10)], 1);
P9 = pole(sys9); 
figure(9)
subplot(1,2,1);
plot(step(sys9));
subplot(1,2,2);
pzmap(sys9);

%%%%%
%   Система 5 (с значением 10)
%%%%%

sys10 = zpk(0, [complex(10, 2), complex(10, -2)], 1);
P10 = pole(sys10); 
figure(10)
subplot(1,2,1);
plot(step(sys10));
subplot(1,2,2);
pzmap(sys10);


A1 = ss(sys1, 'explicit');    % Поиск матрицы А
d1 = eigs(A1.A);              % Собственные значения матрицы А

A2 = ss(sys2, 'explicit');
d2 = eigs(A2.A);

A3 = ss(sys3, 'explicit');
d3 = eigs(A3.A);

A4 = ss(sys4, 'explicit');
d4 = eigs(A4.A);

A5 = ss(sys5, 'explicit');
d5 = eigs(A5.A);

