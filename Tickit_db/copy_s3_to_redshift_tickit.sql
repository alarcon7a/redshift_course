copy users from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/allusers_pipe.txt' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>' 
delimiter '|' region '<Reemplazar_con_tu_aws_region>';

copy venue from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/venue_pipe.txt' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>' 
delimiter '|' region '<Reemplazar_con_tu_aws_region>';

copy category from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/category_pipe.txt' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>' 
delimiter '|' region '<Reemplazar_con_tu_aws_region>';

copy date from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/date2008_pipe.txt' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>' 
delimiter '|' region '<Reemplazar_con_tu_aws_region>';

copy event from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/allevents_pipe.txt' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>' 
delimiter '|' timeformat 'YYYY-MM-DD HH:MI:SS' region '<Reemplazar_con_tu_aws_region>';

copy listing from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/listings_pipe.txt' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>' 
delimiter '|' region '<Reemplazar_con_tu_aws_region>';

copy sales from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/sales_tab.txt'
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>'
delimiter '\t' timeformat 'MM/DD/YYYY HH:MI:SS' region '<Reemplazar_con_tu_aws_region>';