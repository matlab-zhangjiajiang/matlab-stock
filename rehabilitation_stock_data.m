%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%【除权数据生成前后复权数据】%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
stockcode = '000837';  %%秦川机床
str = ['股票编码为',stockcode];
disp(str);
begindate = '19980710';
enddate ='20170619';
[stockdatadouble,tsfactor] = GetStockTSDay_Web(stockcode,begindate,enddate);
stockdata = stockdatadouble(:,1:end);
scrsize = get(0,'ScreenSize');   %%获取屏幕大小属性.
figure('Position',[scrsize(3)*1/4 scrsize(4)*1/6 scrsize(3)*4/5 scrsize(4)*3/4]); %%初始化窗口对象，定义窗口的位置,左右宽度和长度

%%%%%同一个窗口初始化一个线性数据展示%%%%%%
axl = subplot(211);
OHLC = stockdatadouble(:,2:5);  %%%初始化K线图数据
KplotNew(OHLC);

