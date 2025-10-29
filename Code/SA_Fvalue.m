function [x_best,max_value]=SA_Fvalue(M)
tic
lower_bound = 1/2;
higher_bound = 1;
x_new = 1;
x_new = x_new*0.1;    % 从x较小开始搜索，直至找到最值
x_current = x_new;    % 初始化局部最优x
x_best = x_new;       % 初始化全局最优x
y_current = inf;      % 初始化局部最优y
y_best = inf;         % 初始化全局最优y
t = 1000;
tf = 3;
ratio = 0.95;

while t>tf
    r=rand(1);
    x_new=(2*r-1)*min(min(0.1,x_new-lower_bound),higher_bound-x_new)+x_new;
    y_new=target(x_new,M);         % 寻找最大值，故取目标函数的相反数
        
    % Metroplis准则寻找最大值
    if y_new <  y_current
        x_current = x_new;
        y_current = y_new;
        if y_new < y_best
            x_best = x_new;
            y_best = y_new;
        end
    else
        if rand(1)<exp(-(y_new-y_current)/t)
            x_current = x_new;
            y_current = y_new;
        else
            x_new=x_current;
        end
    end 
    t=t*ratio;
end
max_value=y_best;
toc