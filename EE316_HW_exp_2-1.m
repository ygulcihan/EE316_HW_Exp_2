f_m = 100; % 0.1 kHz = 100 Hz
f_c = 5 * f_m;
A_c = 1; % Amplitude of Carrier Signal
A_m = 1; % Ampltiude of Message Signal

B = 3; % Modulation Index

t = linspace(0,50,1000);

%% Sinusoidal

m_t = A_m * cos(2*pi*f_m.*t);
c_t = cos(2*pi*f_c.*t);
s_t = A_c * cos(2*pi*f_c.*t + B*sin(2*pi*f_m.*t));

figure("Name", "Haydar Yiğit Gülcihan", "NumberTitle", "off");
sgtitle("Frequency Modulation (Sinusoidal)");

subplot(3,1,1);
plot(t, m_t);
subtitle("Message Signal m(t)");
xlabel("Time (ms)");
ylabel("Amplitude (V)");

subplot(3,1,2);
plot(t, c_t);
subtitle("Carrier Signal c(t)");
xlabel("Time (ms)");
ylabel("Amplitude (V)");

subplot(3,1,3);
plot(t, s_t);
subtitle("Modulated Signal s(t)");
xlabel("Time (ms)");
ylabel("Amplitude (V)");

%% Triangular

m_t = A_m * sawtooth(2*pi*f_m.*t, 1/2);
c_t = A_c * sawtooth(2*pi*f_c.*t, 1/2);
s_t = A_c * sawtooth(2*pi*f_c.*t + B.*m_t, 1/2);

figure("Name", "Haydar Yiğit Gülcihan", "NumberTitle", "off");
sgtitle("Frequency Modulation (Triangular)");

subplot(3,1,1);
plot(t, m_t);
subtitle("Message Signal m(t)");
xlabel("Time (ms)");
ylabel("Amplitude (V)");

subplot(3,1,2);
plot(t, c_t);
subtitle("Carrier Signal c(t)");
xlabel("Time (ms)");
ylabel("Amplitude (V)");

subplot(3,1,3);
plot(t, s_t);
subtitle("Modulated Signal s(t)");
xlabel("Time (ms)");
ylabel("Amplitude (V)");

%% Square

m_t = A_m * square(2*pi*f_m.*t);
c_t = A_c * square(2*pi*f_c.*t);
s_t = A_c * square(2*pi*(f_c + m_t).*t);

figure("Name", "Haydar Yiğit Gülcihan", "NumberTitle", "off");
sgtitle("Frequency Modulation (Rectangular)");

subplot(3,1,1);
plot(t, m_t);
subtitle("Message Signal m(t)");
xlabel("Time (ms)");
ylabel("Amplitude (V)");
ylim([-1.1 1.1]);

subplot(3,1,2);
plot(t, c_t);
subtitle("Carrier Signal c(t)");
xlabel("Time (ms)");
ylabel("Amplitude (V)");
ylim([-1.1 1.1]);

subplot(3,1,3);
plot(t, s_t);
subtitle("Modulated Signal s(t)");
xlabel("Time (ms)");
ylabel("Amplitude (V)");
ylim([-1.1 1.1]);
