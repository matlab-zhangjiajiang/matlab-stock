conn =database('ktproject','belle','belle@belle');
curs = exec(conn,'select *  from datacenter_pmi_resource_table');
cursor=fetch(curs);
init_pmi_data = cursor.data; 
close(curs);
close(conn);
