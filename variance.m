function output =variance(x); %%标准方差函数;
         x = input('输入X的值');
         m = mean(x);
         n = length(x);
         disp('输入的X的长度为:'+n);
         output = sum((x-m).^2)/n-1;
end

