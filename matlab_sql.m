
databasename = 'ktproject';
username='belle';
password='belle@belle';
driver = 'com.mysql.jdbc.Driver';
databaseurl='jdbc:mysql://10.0.30.201:3306/ktproject';

conn = database(databasename,username,password,driver,databaseurl);

curs = exec(conn, ['select datacenter_pmi_resource_table.CHINA_MULTIPLEP_MI'...
    ' ,	datacenter_pmi_resource_table.HSBC_MANUFACTURING_PMI'...
    ' ,	datacenter_pmi_resource_table.HSBC_SERVICE_PMI'...
    ' from 	`ktproject`.datacenter_pmi_resource_table ']);

curs = fetch(curs);
%%setdbprefs('datareturnformat','numric');%设置提取的数据类型，默认的为数据元胞，这里设置为数值类型%
%Assign data to output variable

init_sql_table_data = cell2mat(curs.Data); %将查询的结果集转换为数值矩阵

%Close database connection.
close(conn);
close(curs);

%Clear variables
clear curs conn