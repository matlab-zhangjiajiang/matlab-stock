clear all;
stockcode='600079';
begindate='19970606';
enddate ='20170613';
[stockdata,webdata] = GetStockTSDay_Web(stockcode,begindate,enddate);
opendate = stockdata(:,1);
closeprice = stockdata(:,5);

xlabel('交易时间点');
ylabel('收盘价');
plot(opendate,closeprice,'r'); %%线形为点画线、颜色为红色、数据点标记为加号
