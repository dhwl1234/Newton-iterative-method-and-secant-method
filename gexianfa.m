function xk = gexianfa(x0,x1 ,times)
%利用割线法求解,要求输入最初的两个数值x0与x1，和迭代次数 

for i=1:times
    xk=x1-(x1-x0)*(x1^3-3*x1-1)/((x1^3-3*x1-1)-(x0^3-3*x0-1));
    x0=x1;
    x1=xk;
end

end