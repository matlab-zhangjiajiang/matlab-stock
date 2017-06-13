clear all;
stockcode='600079';
begindate='19970606';
enddate ='20170609';
[stockdata,webdata] = GetStockTSDay_Web(stockcode,begindate,enddate);