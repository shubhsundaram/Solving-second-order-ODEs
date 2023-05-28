clear all
close all
clc

%inputs
b = 0.05;
g = 9.81;
l = 1;
m = 1;

%initial conditions
theta_0 = [0;3];

%time points
t_span = linspace(0,20,500);

%solve ODE
[t, results] = ode45(@(t, theta) ode_func(t, theta, b,g,l,m),t_span, theta_0);

%plotting
plot(t,results(:,1))
hold on 
plot(t,results(:,2))
xlabel('time')
ylabel('plot')
