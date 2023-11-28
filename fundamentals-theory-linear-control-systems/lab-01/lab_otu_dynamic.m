clear;
close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Лабораторная работа № 1
%             Типовые динамические звенья
%
%   Выполнили:
%         Уткин Тимофей Олегович      - ИУ1-52Б
%         Шевченко Алексей Дмитриевич - ИУ1-52Б
%
%   Дата: 28.11.2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%
%     Усилительное (пропорциональное или безинерционное) звено
%%%%%%%%%%%%%%%%%%%

%%%
%  K = 10
%%%

K = 10;
time = 0:0.01:1;
sys = tf(K, 1);

figure('Name', 'Пропорциональная');
subplot(1, 3, 1);
step(sys, time);
title('Переходной процесс');
xlabel('Время (сек)');
ylabel('Амплитуда');
subplot(1, 3, 2);
[H, Freq] = freqresp(sys);
MagdB = 20*log10(abs(squeeze(H)));
semilogx(Freq, MagdB);
title('ЛАФЧХ (диаграмма Боде)');
xlabel('Гц');
ylabel('дБ');
subplot(1, 3, 3);
Pha = angle(squeeze(H)) * (180/pi);
semilogx(Freq, Pha);
title('ЛАФЧХ (диаграмма Боде)');
xlabel('Гц');
ylabel('градусы');


%%%%%%%%%%%%%%%%%%%
%     Идеальное интегрирующее звено
%%%%%%%%%%%%%%%%%%%

%%%
% K = 1
%%%

K_integral_1 = 1;
sys_integral_1 = tf(K_integral_1, [1, 0]);

figure('Name', 'Идеальное интегрирующее с K = 1, 10');
subplot(2, 3, 1); 
step(sys_integral_1, time);
title('Переходной процесс');
xlabel('Время (сек)');
ylabel('Амплитуда');
[H, Freq] = freqresp(sys_integral_1);
subplot(2, 3, 2); 
MagdB = 20*log10(abs(squeeze(H)));
semilogx(Freq, MagdB);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(2, 3, 3);
Pha = angle(squeeze(H)) * (180/pi);
semilogx(Freq, Pha);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');

%%%
% K = 10
%%%

K_integral_10 = 10;
sys_integral_10 = tf(K_integral_10, [1, 0]);

subplot(2, 3, 4); 
step(sys_integral_10, time);
title('Переходной процесс');
xlabel('Время (сек)');
ylabel('Амплитуда');
[H, Freq] = freqresp(sys_integral_10);
subplot(2, 3, 5); 
MagdB = 20*log10(abs(squeeze(H)));
semilogx(Freq, MagdB);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(2, 3, 6);
Pha = angle(squeeze(H)) * (180/pi);
semilogx(Freq, Pha);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');


%%%%%%%%%%%%%%%%%%%
%     Апериодическое звено 1-го порядка (с разным усилением)
%%%%%%%%%%%%%%%%%%%

%%%
% K = 1
%%%

K_ap_1 = 1;
T_ap_1 = 0.1;
sys_ap_1 = tf(K_ap_1, [T_ap_1, 1]);

figure('Name', 'Апериодическое звено 1-го порядка (K=1, 10, T=0.1)');
subplot(2, 3, 1); 
step(sys_ap_1, time);
title('Переходной процесс');
xlabel('Время (сек)');
ylabel('Амплитуда');
[H, Freq] = freqresp(sys_ap_1);
subplot(2, 3, 2); 
MagdB = 20*log10(abs(squeeze(H)));
semilogx(Freq, MagdB);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(2, 3, 3);
Pha = angle(squeeze(H)) * (180/pi);
semilogx(Freq, Pha);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');

%%%
% K = 10
%%%

K_ap_2 = 10;
T_ap_2 = 0.1;
sys_ap_2 = tf(K_ap_2, [T_ap_2, 1]);

subplot(2, 3, 4); 
step(sys_ap_2, time);
title('Переходной процесс');
xlabel('Время (сек)');
ylabel('Амплитуда');
[H, Freq] = freqresp(sys_ap_2);
subplot(2, 3, 5); 
MagdB = 20*log10(abs(squeeze(H)));
semilogx(Freq, MagdB);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(2, 3, 6);
Pha = angle(squeeze(H)) * (180/pi);
semilogx(Freq, Pha);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');


%%%%%%%%%%%%%%%%%%%
%     Апериодическое звено 1-го порядка (с разной постоянной времени)
%%%%%%%%%%%%%%%%%%%

%%%
% T = 0.1
%%%

T_ap_3 = 0.1;
sys_ap_3 = tf(1, [T_ap_3, 1]);
    
figure('Name', 'Апериодическое звено 1-го порядка (T=0.1, 0.01)');
subplot(2, 3, 1); 
step(sys_ap_3, time);
title('Переходной процесс');
xlabel('Время (сек)');
ylabel('Амплитуда');
[H, Freq] = freqresp(sys_ap_3);
subplot(2, 3, 2); 
MagdB = 20*log10(abs(squeeze(H)));
semilogx(Freq, MagdB);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(2, 3, 3);
Pha = angle(squeeze(H)) * (180/pi);
semilogx(Freq, Pha);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');

%%%
% T = 0.01
%%%

T_ap_4 = 0.01;
sys_ap_4 = tf(1, [T_ap_4, 1]);
    
subplot(2, 3, 4); 
step(sys_ap_4, time);
title('Переходной процесс');
xlabel('Время (сек)');
ylabel('Амплитуда');
[H, Freq] = freqresp(sys_ap_4);
subplot(2, 3, 5); 
MagdB = 20*log10(abs(squeeze(H)));
semilogx(Freq, MagdB);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(2, 3, 6);
Pha = angle(squeeze(H)) * (180/pi);
semilogx(Freq, Pha);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');    


%%%%%%%%%%%%%%%%%%%
%     Апериодическое звено 2-го порядка
%%%%%%%%%%%%%%%%%%%

%%%
% T1 = 0.1
% T2 = 0.01
%%%

T2_ap_1 = 0.1;
T2_ap_2 = 0.01;

sys_ap_2nd_order_1 = tf(1, [T2_ap_2^2, T2_ap_1, 1]);

figure('Name', 'Апериодическое звено 2-го порядка (T1=0.1, T2=0.01)');
subplot(2, 3, 1);
step(sys_ap_2nd_order_1, time);
title('Переходной процесс');
xlabel('Время (сек)');
ylabel('Амплитуда');
[H1, Freq1] = freqresp(sys_ap_2nd_order_1);
subplot(2, 3, 2); 
MagdB1 = 20*log10(abs(squeeze(H1)));
semilogx(Freq1, MagdB1);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(2, 3, 3);
Pha1 = angle(squeeze(H1)) * (180/pi);
semilogx(Freq1, Pha1);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');

T_cons_1 = 0.1;
T_cons_2 = 0.01;

sys_cons_1 = tf(1, [T_cons_1^2, 1]);
sys_cons_2 = tf(1, [T_cons_2^2, 1]);


%%%%%%%%%%%%%%%%%%%
%     Консервативное звено
%%%%%%%%%%%%%%%%%%%

figure('Name', 'Консервативное звено (T=0.1, 0.01)');
subplot(2, 3, 1);
step(sys_cons_1, time);
title('Переходной процесс');
xlabel('Время (сек)');
ylabel('Амплитуда');
[H1, Freq1] = freqresp(sys_cons_1);
subplot(2, 3, 2); 
MagdB1 = 20*log10(abs(squeeze(H1)));
semilogx(Freq1, MagdB1);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(2, 3, 3);
Pha1 = angle(squeeze(H1)) * (180/pi);
semilogx(Freq1, Pha1);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');

subplot(2, 3, 4);
step(sys_cons_2, time);
title('Переходной процесс');
xlabel('Время (сек)');
ylabel('Амплитуда');
[H2, Freq2] = freqresp(sys_cons_2);
subplot(2, 3, 5); 
MagdB2 = 20*log10(abs(squeeze(H2)));
semilogx(Freq2, MagdB2);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(2, 3, 6);
Pha2 = angle(squeeze(H2)) * (180/pi);
semilogx(Freq2, Pha2);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');


%%%%%%%%%%%%%%%%%%%
%     Колебательное звено (с разным коэффициентом демпфирования)
%%%%%%%%%%%%%%%%%%%

%%%%
%  𝜉1 = 0.3
%  𝜉2 = 0.7
%  𝜉3 = 1.5
%
%  При 𝜔 = 10 · 2𝜋
%%%%

zeta_values = [0.3, 0.7, 1.5];
omega = 10 * 2 * pi;

figure('Name', 'Колебательное звено (разные коэффициенты демпфирования)');
for i = 1:length(zeta_values)
    zeta = zeta_values(i);
    sys_oscillator = tf(omega^2, [1, 2*zeta*omega, omega^2]);
    subplot(3, 3, i * 3 - 2);
    step(sys_oscillator, time);
    title(['Переходной процесс (\zeta = ', num2str(zeta), ')']);
    xlabel('Время (сек)');
    ylabel('Амплитуда');
    [H, Freq] = freqresp(sys_oscillator);
    subplot(3, 3, i * 3 - 1); 
    MagdB = 20*log10(abs(squeeze(H)));
    semilogx(Freq, MagdB);
    title(['ЛАЧХ (\zeta = ', num2str(zeta), ')']);
    xlabel('Гц');
    ylabel('дБ');
    subplot(3, 3, i * 3);
    Pha = angle(squeeze(H)) * (180/pi);
    semilogx(Freq, Pha);
    title(['ЛФЧХ (\zeta = ', num2str(zeta), ')']);
    xlabel('Гц');
    ylabel('градусы');
end


%%%%%%%%%%%%%%%%%%%
%     Колебательное звено (с разной собственной частотой)
%%%%%%%%%%%%%%%%%%%

%%%%
%  𝜔1 = 1
%  𝜔2 = 10
%
%  При 𝜉 = 0.7
%%%%

zeta = 0.7;
omega_values = [1, 10] * 2 * pi;

figure('Name', 'Колебательное звено (разная собственная частота)');
for i = 1:length(omega_values)
    omega = omega_values(i);
    sys_oscillator = tf(omega^2, [1, 2*zeta*omega, omega^2]);
    subplot(2, 3, i * 3 - 2);
    step(sys_oscillator, time);
    title(['Переходной процесс (\omega = ', num2str(omega), ')']);
    xlabel('Время (сек)');
    ylabel('Амплитуда');
    [H, Freq] = freqresp(sys_oscillator);    
    subplot(2, 3, i * 3 - 1); 
    MagdB = 20*log10(abs(squeeze(H)));
    semilogx(Freq, MagdB);
    title(['ЛАЧХ (\omega = ', num2str(omega), ')']);
    xlabel('Гц');
    ylabel('дБ');
    subplot(2, 3, i * 3);
    Pha = angle(squeeze(H)) * (180/pi);
    semilogx(Freq, Pha);
    title(['ЛФЧХ (\omega = ', num2str(omega), ')']);
    xlabel('Гц');
    ylabel('градусы');
end

sys_differentiator = tf([1, 0], 1);


%%%%%%%%%%%%%%%%%%%
%     Идеальное дифференцирующее звено
%%%%%%%%%%%%%%%%%%%


figure('Name', 'Идеальное дифференцирующее звено');
if(isproper(sys_differentiator))
    subplot(2, 3, 1); 
    step(sys_differentiator, time);
    title('Переходной процесс');
    xlabel('Время (сек)');
    ylabel('Амплитуда');
end
[H, Freq] = freqresp(sys_differentiator);
subplot(1, 3, 2); 
MagdB = 20*log10(abs(squeeze(H)));
semilogx(Freq, MagdB);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(1, 3, 3);
Pha = angle(squeeze(H)) * (180/pi);
semilogx(Freq, Pha);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');

T_force_1 = 0.1;
T_force_2 = 0.01;

sys_force_1 = tf([T_force_1, 1], 1);
sys_force_2 = tf([T_force_2, 1], 1);


%%%%%%%%%%%%%%%%%%%
%     Форсирующее звено 1-го порядка
%%%%%%%%%%%%%%%%%%%

%%%
% T1 = 0.1
% T2 = 0.01
%%%

figure('Name', 'Форсирующее звено 1-го порядка (T=0.1, 0.01)');
if(isproper(sys_force_1))
    subplot(2, 3, 1);
    step(sys_force_1, time);
    title('Переходной процесс');
    xlabel('Время (сек)');
    ylabel('Амплитуда');
end
[H1, Freq1] = freqresp(sys_force_1);
subplot(2, 3, 2);
MagdB1 = 20*log10(abs(squeeze(H1)));
semilogx(Freq1, MagdB1);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(2, 3, 3);
Pha1 = angle(squeeze(H1)) * (180/pi);
semilogx(Freq1, Pha1);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');

if(isproper(sys_force_2))
    subplot(2, 3, 4);
    step(sys_force_2, time);
    title('Переходной процесс');
    xlabel('Время (сек)');
    ylabel('Амплитуда');
end
[H2, Freq2] = freqresp(sys_force_2);
subplot(2, 3, 5);
MagdB2 = 20*log10(abs(squeeze(H2)));
semilogx(Freq2, MagdB2);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(2, 3, 6);
Pha2 = angle(squeeze(H2)) * (180/pi);
semilogx(Freq2, Pha2);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');

T1_force_2 = 0.1;
T2_force_2 = 0.01;

sys_force_2nd_order = tf([T2_force_2^2, T1_force_2, 1], 1);


%%%%%%%%%%%%%%%%%%%
%     Форсирующее звено 2-го порядка
%%%%%%%%%%%%%%%%%%%

%%%
% T1 = 0.1
% T2 = 0.01
%%%

figure('Name', 'Форсирующее звено 2-го порядка (T1=0.1, T2=0.01)');
if(isproper(sys_force_2nd_order))
    subplot(1, 3, 1);
    step(sys_force_2nd_order, time);
    title('Переходной процесс');
    xlabel('Время (сек)');
    ylabel('Амплитуда');
end
[H, Freq] = freqresp(sys_force_2nd_order);
subplot(1, 3, 2);
MagdB = 20*log10(abs(squeeze(H)));
semilogx(Freq, MagdB);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(1, 3, 3);
Pha = angle(squeeze(H)) * (180/pi);
semilogx(Freq, Pha);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');


%%%%%%%%%%%%%%%%%%%
%     Звено чистого запаздывания
%%%%%%%%%%%%%%%%%%%

%%%
% T1 = 0.2
% T2 = 0.6
%%%

T_delay_1 = 0.2;
T_delay_2 = 0.6;

sys_delay_1 = tf(1, [1, 0, exp(-T_delay_1)]);
sys_delay_2 = tf(1, [1, 0, exp(-T_delay_2)]);

figure('Name', 'Звено чистого запаздывания (T=0.2, 0.6)');
if(isproper(sys_delay_1))
    subplot(2, 3, 1);
    step(sys_delay_1, time);
    title('Переходной процесс');
    xlabel('Время (сек)');
    ylabel('Амплитуда');
end
[H1, Freq1] = freqresp(sys_delay_1);
subplot(2, 3, 2);
MagdB1 = 20*log10(abs(squeeze(H1)));
semilogx(Freq1, MagdB1);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(2, 3, 3);
Pha1 = angle(squeeze(H1)) * (180/pi);
semilogx(Freq1, Pha1);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');

if(isproper(sys_delay_2))
    subplot(2, 3, 4);
    step(sys_delay_2, time);
    title('Переходной процесс');
    xlabel('Время (сек)');
    ylabel('Амплитуда');
end
[H2, Freq2] = freqresp(sys_delay_2);
subplot(2, 3, 5);
MagdB2 = 20*log10(abs(squeeze(H2)));
semilogx(Freq2, MagdB2);
title('ЛАЧХ');
xlabel('Гц');
ylabel('дБ');
subplot(2, 3, 6);
Pha2 = angle(squeeze(H2)) * (180/pi);
semilogx(Freq2, Pha2);
title('ЛФЧХ');
xlabel('Гц');
ylabel('градусы');

