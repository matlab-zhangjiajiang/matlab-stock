x=0:0.23*pi:2*pi; %%定义X坐标轴范围及刻度
y1 = sin(x);      %%定义Y1与X函数的关系
y2 = cos(x);      %%定义Y2与X函数的关系
y3 = sin(x-0.1*pi);
y4 = cos(x+0.1*pi);
plot(y1);
plot(x,y1,x,y2,x,y3,x,y4);


%%%定义一个3D的图形展示
t=0:pi/50:8*pi ;  %%设置t的取值范围
x=sin(t);
y=cos(t);
z=t;
plot3(x,y,z);
