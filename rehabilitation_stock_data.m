%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%【除权数据生成前后复权数据】%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%stockcode = '000837';  %%秦川机床
%str = ['股票编码为',stockcode];
%disp(str);
%begindate = '19980710';
%enddate ='20170619';
%[stockdatadouble,tsfactor] = GetStockTSDay_Web(stockcode,begindate,enddate);
%stockdata = stockdatadouble(:,1:end);
%scrsize = get(0,'ScreenSize');