clc
clear
close all

Color = [0, 0.447, 0.741];
for x = 2:2:6
    for y = 2:2:6
        plot(x,y,'ro','MarkerSize',25,...
            'MarkerFaceColor',Color)
        hold on
        grid on
    end
end
set(gcf,'Name','Pattern Password')
title('Insert Pattern')
axis([0,8,0,8])
m1 = [2;2;4;6];
m2 = [4;2;4;6];
[xp,yp] = ginput(4);
plot(xp,yp);
for i = 1:4
    if abs(xp(i,1)-m1(i,1))<=0.5 && abs(yp(i,1)-m2(i,1))<=0.5
        plot(m1,m2,'g','LineWidt',2);
        text(m1(i),m2(i),['step : ',num2str(i)])
    else
        disp('*** Password is not correct ***')
        plot(xp,yp,'r','LineWidt',2);
        break
    end
end