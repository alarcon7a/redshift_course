copy customer from 's3://awssampledbuswest2/ssbgz/customer' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>'  
gzip compupdate off region 'us-west-2';

copy dwdate from 's3://awssampledbuswest2/ssbgz/dwdate' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>'  
gzip compupdate off region 'us-west-2';

copy lineorder from 's3://awssampledbuswest2/ssbgz/lineorder' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>'  
gzip compupdate off region 'us-west-2';

copy part from 's3://awssampledbuswest2/ssbgz/part' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>'  
gzip compupdate off region 'us-west-2';

copy supplier from 's3://awssampledbuswest2/ssbgz/supplier' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>'  
gzip compupdate off region 'us-west-2';

