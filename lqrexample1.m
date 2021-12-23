% ---------- Diseño del sistema regulador óptimo cuadrático ---------
A=[0 1 0;0 0 1;-35 -27 -9]; 
B=[0;0;1]; 
Q=[1 0 0;0 1 0;0 0 1]; 
R=[1]; 
[K,P,E]=lqr(A,B,Q,R)
% closed loop systems
sys=ss(A-B*K, eye(3),eye(3),eye(3)); 
% impulse response at initial condiction
t=0:0.01:8; 
x=initial(sys,[1;0;0],t);
plot(t,x)
xlabel('Time (s)')
ylabel('Amplitude of x_1, x_2 and x_3')
title('Impulse response with initial conditions [1 0 0]^T')
