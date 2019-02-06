%% Question 1 Plots
clear all, close all

A = tf([1],[0.25 0.5 1])

figure(1)
subplot(2,2,1)
impulse(A)
subplot(2,2,3)
step(A)
subplot(2,2,[2,4])
bode(A)

suptitle('Plots')

% figure(2)
% freqz([1],[0.25 0.5 1],20000)

figure(2)
bode(A)

%% Question 4 i) impulse,step
clear all, close all

A = tf([1],[0.001 0.05 1])

figure(1)

subplot(2,2,1)
impulse(A)
subplot(2,2,[2,4])
bode(A)
subplot(2,2,3)
step(A)

suptitle('Open Loop System plots')


%% question 4 i) root locus 
clear all, close all
A = tf([1],[0.001 0.05 1])

figure(1)
subplot(1,2,1)
rlocus(A)
title('Root locus for k > 0')

subplot(1,2,2)
rlocus(-A)
title('Root locus for k < 0')

suptitle('Root Locus Plot')
%% question 4 ii) pzmap and step and impulse, bode for k =1
clear all, close all
A = tf([1],[0.001 0.05 2])

figure(1)
subplot(2,2,1)
pzmap(A)

subplot(2,2,2)
impulse(A)

subplot(2,2,3)
step(A)

subplot(2,2,4)
bode(A)

suptitle('Closed Loop System with k = 1')




%% Question 4 descritize c2d with  iii)zero order hold
clear all, close all
H = tf([1],[0.005 0.05 2])

figure(1)
title('The Tittle')
subplot(2,2,1)
Hd = c2d(H,0.05,'zoh')
step(Hd,'--',H,'-')
legend({'Discrete','Continuous'},'Location','best')

subplot(2,2,2)
impulse(Hd,'--',H,'-')
legend({'Discrete','Continuous'},'Location','best')

subplot(2,2,3)
pzmap(Hd)

subplot(2,2,4)
bode(Hd,'--',H,'-')
legend({'Discrete','Continuous'},'Location','best')

suptitle('Discretized System using Zero Order Hold')
%% Question 4 descritize impulse invariance iii)impulse invariance

clear all 
H = tf([1],[0.005 0.5 2])



figure(1)
subplot(2,2,1)
Hd = c2d(H,0.05,'zoh')
step(Hd,'--',H,'-')
legend({'Discrete','Continuous'},'Location','best')

subplot(2,2,2)
impulse(Hd,'--',H,'-')
legend({'Discrete','Continuous'},'Location','best')

subplot(2,2,3)
pzmap(Hd)

subplot(2,2,4)
bode(Hd,'--',H,'-')
legend({'Discrete','Continuous'},'Location','best')

suptitle('Discretized System using Impulse Invariance Method')