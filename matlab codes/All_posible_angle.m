clear all
clc
close all
a1 = 5;
a2 = 5;
X = 5;
Y = 5;
k1 = 1;
k2 = 1;
k3 = 1;
k4 = 1;
% x and y are positive 
for X = 0:a1+a2  
    for Y = 0:a1+a2
        if X*X+Y*Y <= (a1+a2)^2
            delta2(k1) = acos((X*X+Y*Y-a1*a1-a2*a2)/(2*a1*a2));
            delta1(k1) = atan(Y/X) - atan((a2*sin(delta2(k1)))/(a1+a2*cos(delta2(k1))));
            if X ==0 && Y == 0
                delta1(k1)=0;
            end
            X1(k1) = a1*cos(delta1(k1))+a2*cos(delta1(k1)+delta2(k1));
            Y1(k1) = a1*sin(delta1(k1))+a2*sin(delta1(k1)+delta2(k1));
            k1 = k1 + 1;
        end
    end
end

% x is negative and y is positive
for X = -(a1+a2):-1  
    for Y = 0:a1+a2
        if X*X+Y*Y <= (a1+a2)^2
            delta22(k2) = acos((X*X+Y*Y-a1*a1-a2*a2)/(2*a1*a2));
            delta11(k2) = atan(Y/X) - atan((a2*sin(delta22(k2)))/(a1+a2*cos(delta22(k2))));
            delta11(k2) = delta11(k2) + pi;
            if X ==0 && Y == 0
                delta11(k2)=0;
            end
            X2(k2) = a1*cos(delta11(k2))+a2*cos(delta11(k2)+delta22(k2));
            Y2(k2) = a1*sin(delta11(k2))+a2*sin(delta11(k2)+delta22(k2));
            k2 = k2 + 1;
        end
    end
end

% x and y are negative 
for X = -(a1+a2):-1  
    for Y = -(a1+a2):-1
        if X*X+Y*Y <= (a1+a2)^2
            delta222(k3) = acos((X*X+Y*Y-a1*a1-a2*a2)/(2*a1*a2));
            delta111(k3) = atan(Y/X) - atan((a2*sin(delta222(k3)))/(a1+a2*cos(delta222(k3))));
            delta111(k3) = delta111(k3) + pi;
            if X ==0 && Y == 0
                delta111(k3)=0;
            end
            X3(k3) = a1*cos(delta111(k3))+a2*cos(delta111(k3)+delta222(k3));
            Y3(k3) = a1*sin(delta111(k3))+a2*sin(delta111(k3)+delta222(k3));
            k3 = k3 + 1;
        end
    end
end

% x is positive y is negative
for X = 1:a1+a2  
    for Y = -(a1+a2):-1
        if X*X+Y*Y <= (a1+a2)^2
            delta2222(k4) = acos((X*X+Y*Y-a1*a1-a2*a2)/(2*a1*a2));
            delta1111(k4) = atan(Y/X) - atan((a2*sin(delta2222(k4)))/(a1+a2*cos(delta2222(k4))));
            if X ==0 && Y == 0
                delta1111(k4)=0;
            end
            X4(k4) = a1*cos(delta1111(k4))+a2*cos(delta1111(k4)+delta2222(k4));
            Y4(k4) = a1*sin(delta1111(k4))+a2*sin(delta1111(k4)+delta2222(k4));
            k4 = k4 + 1;
        end
    end
end

subplot(4,2,1)
n=1:k1-1;
plot(X1(n),Y1(n),'b--o')
title('Quadrant 1')
xlabel('X')
ylabel('Y')

subplot(4,2,2)
n=1:k1-1;
plot(delta1(n),delta2(n),'b--o')
title('Quadrant 1')
xlabel('delta1')
ylabel('delta2')

subplot(4,2,3)
n=1:k2-1;
plot(X2(n),Y2(n),'b--o')
title('Quadrant 2')
xlabel('X')
ylabel('Y')

subplot(4,2,4)
n=1:k2-1;
plot(delta11(n),delta22(n),'b--o')
title('Quadrant 2')
xlabel('delta1')
ylabel('delta2')

subplot(4,2,5)
n=1:k3-1;
plot(X3(n),Y3(n),'b--o')
title('Quadrant3')
xlabel('X')
ylabel('Y')

subplot(4,2,6)
n=1:k3-1;
plot(delta111(n),delta222(n),'b--o')
title('Quadrant 3')
xlabel('delta1')
ylabel('delta2')

subplot(4,2,7)
n=1:k4-1;
plot(X4(n),Y4(n),'b--o')
title('Quadrant4')
xlabel('X')
ylabel('Y')

subplot(4,2,8)
n=1:k4-1;
plot(delta1111(n),delta2222(n),'b--o')
title('Quadrant 4')
xlabel('delta1')
ylabel('delta2')

figure
n=1:k1-1;
plot(X1(n),Y1(n),'b--o')
hold on
n=1:k2-1;
plot(X2(n),Y2(n),'b--o')
hold on
n=1:k3-1;
plot(X3(n),Y3(n),'b--o')
hold on
n=1:k4-1;
plot(X4(n),Y4(n),'b--o')
title('all Quadrant')
xlabel('X')
ylabel('Y')
hold off

figure
n=1:k1-1;
plot(delta1(n),delta2(n),'b--o')
hold on
n=1:k2-1;
plot(delta11(n),delta22(n),'b--o')
hold on
n=1:k3-1;
plot(delta111(n),delta222(n),'b--o')
hold on
n=1:k4-1;
plot(delta1111(n),delta2222(n),'b--o')
title('all Quadrant')
xlabel('delta 1')
ylabel('delta 2')
hold off

%delta2n = -acos((X*X+Y*Y-a1*a1-a2*a2)/(2*a1*a2))
%delta1n = atan(Y/X) + atan((a2*sin(delta2n))/(a1+a2*cos(delta2n)))

%Xn=a1*cos(delta1n)+a2*cos(delta1n+delta2n)
%Yn=a1*sin(delta1n)+a2*sin(delta1n+delta2n)