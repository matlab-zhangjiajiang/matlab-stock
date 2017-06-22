clear all;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%【保存所有股票交易信息】%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%[stocklist,stocklistfull] = GetStockList_Web; %%%获取所有的股票编码列表.
%stockcodedouble =cell2mat(stocklist(:,3));  %%%获取相应的股票编码.
%save('stocklist','stocklist');
%[savelog,problist,newlist] = SaveStockTick(stocklist); %%保存所有的股票信息. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%【保存股票分红配股信息】%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%stockcode ='000837' ; %%秦川机床
%[web_xrd_data,web_xrd_data_one,web_xrd_data_two]=GetStockXRD_Web(stockcode);%%获取股票分红配股信息数据

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%【财务数据和三张表获取】%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%stockcode = '000837'; %%秦川机床
%GetStockFinIndicators_Web和 GetStock3Sheet_Web 函数可以获取单只股票的财务数据和三张表数据
%[findcell,yearlists] = GetStockFinIndicators_Web(stockcode,'2016');
%[balancesheet,profitsheet,cashflowsheet,yearlist] = GetStock3Sheet_Web(stockcode,'2016');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%【财务数据和三张表数据批量获取】%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[stocklist,stocklistfull] = GetStockList_Web; %%%获取所有的股票编码列表.
[savelog,prolist,newlist] = SaveStockFD(stocklist,1); %%%批量财务数据存储







