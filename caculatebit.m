clear;
clc;
x0=1.6;%输入初始值
% x1=1.9;
times=100;%尝试迭代次数
result=zeros(1,times);%产生一个结果矩阵存数据
sample_times=5;%判断收敛到一定数据时的区间,判断该区间内的数据是否相等
save_bite = 3;%判断收敛时小数点后位数，若不特定设置则默认为64位
echo=0;%求解迭代次数
for i=1:times
    result(i)=diedai(x0,i);
end

result=roundn(result,-save_bite);
for i=1:times-sample_times  
    if max(result(i:i+sample_times))==min(result(i:i+sample_times))
        echo=i;
        break
    end
end
figure(1);
plot(result);

title(['迭代次数为:',num2str(echo),'  收敛值为：' num2str(result(echo))]);