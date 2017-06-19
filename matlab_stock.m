clear all;
stockcode='000837';
[StockInfo] = GetStockInfo_Web(stockcode); %%%获得指点股票代码的股票情况.
[StockList,StockListFull] = GetStockList_Web;%%%获取A股市场全部股票名称和对应的代码
stocklist = cell2mat(StockList(:,3));
begindate='19970606';
enddate ='20170609';
[stockdata,webdata] = GetStockTSDay_Web(stockcode,begindate,enddate);  %%根据股票编码获取一段时间的日开盘情况


