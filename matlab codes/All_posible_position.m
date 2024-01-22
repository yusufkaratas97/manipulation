%X = input('Enter the x_axis of the arm : ');
%Y = input('Enter the y_axis of the arm  : ');
clc
clear all
close all
a1 = 5;
a2 = 5;
k =1;
k4 =1;
k2 = 1;
k3 = 1;
for q1=0:0.1:pi/2
    for q2=0:0.1:2*pi
        X(k)=a1*cos(q1)+a2*cos(q1+q2);
        Y(k)=a1*sin(q1)+a2*sin(q1+q2);
        k=k+1;
    end
end
for q1=pi/2+0.1:0.1:pi
    for q2=0:0.1:2*pi
        X2(k2)=a1*cos(q1)+a2*cos(q1+q2);
        Y2(k2)=a1*sin(q1)+a2*sin(q1+q2);
        k2=k2+1;
    end
end
for q1=pi+0.1:0.1:3*pi/2
    for q2=0:0.1:2*pi
        X3(k3)=a1*cos(q1)+a2*cos(q1+q2);
        Y3(k3)=a1*sin(q1)+a2*sin(q1+q2);
        k3=k3+1;
    end
end
for q1=3*pi/2+0.1:0.1:2*pi
    for q2=0:0.1:2*pi
        X4(k4)=a1*cos(q1)+a2*cos(q1+q2);
        Y4(k4)=a1*sin(q1)+a2*sin(q1+q2);
        k4=k4+1;
    end
end


subplot(2,2,1)
n=1:k-1;
plot(X(n),Y(n),'b--o')
title('Quadrant 1')
xlabel('X')
ylabel('Y')
subplot(2,2,2)
n=1:k2-1;
plot(X2(n),Y2(n),'b--o')
title('Quadrant 2')
xlabel('X')
ylabel('Y')
subplot(2,2,3)
n=1:k3-1;
plot(X3(n),Y3(n),'b--o')
title('Quadrant 3')
xlabel('X')
ylabel('Y')
subplot(2,2,4)
n=1:k4-1;
plot(X4(n),Y4(n),'b--o')
title('Quadrant 4')
xlabel('X')
ylabel('Y')
