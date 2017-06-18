[stocklist,stocklistfull] = GetStockList_Web; %%%获取所有的股票编码列表.
stockcodedouble =cell2mat(stocklist(:,3));  %%%获取相应的股票编码.
save('stocklist','stocklist');
[savelog,problist,newlist] = SaveStockTick(stocklist); %%保存所有的股票信息.