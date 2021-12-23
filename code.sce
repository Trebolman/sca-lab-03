function xdot=edsonj(u1,u2)

// Load the parameters
exec('edsonjParameters.sce', -1);

// state variables
x1=u1;
// control variables
u=u2;	

x1dot=-sqrt(2*g*(x1))*(Ao1/A1)+(Kp/A1)*u;

q=Ao1*sqrt(2*g*x1);

// For little apsi angles sin(apsi)~= apsi and cos(apsi)~= 1
xdot=[x1dot,q];

endfunction
