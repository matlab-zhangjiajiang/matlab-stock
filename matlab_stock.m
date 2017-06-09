clear all;
StockCode='600079';
[StockInfo] = GetStockInfo_Web(StockCode); %%%获得指点股票代码的股票情况.
[StockList,StockListFull] = GetStockList_Web;%%%获取A股市场全部股票名称和对应的代码
stocklist = cell2mat(StockList(:,3));
begindate='19970606';
enddate ='20170609';
[stockdata,webdata] = GetStockTSDay_Web(StockCode,begindate,enddate);
