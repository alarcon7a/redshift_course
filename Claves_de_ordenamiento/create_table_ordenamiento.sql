CREATE TABLE public.cust_sales_date (
	c_custkey int4 NULL,
	c_nation varchar(15) NULL,
	c_region varchar(12) NULL,
	c_mktsegment varchar(10) NULL,
	d_date date NULL,
	lo_revenue int4 NULL
);

copy cust_sales_date from 's3://<Reemplazar_con_bucket>/cust_sales_date_000.bz2' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>' 
BZIP2
region 'us-east-2';


