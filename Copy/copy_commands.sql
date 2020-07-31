--Create table
create table estudiante 
( id int2, 
nombre varchar(20),
apellido varchar(20),
edad int2, 
fecha_ingreso date );

--Cargue con banner y delimitado por; 
copy estudiante from '<Ruta del archivo>' 
credentials 'aws_iam_role=<I am ARN>' 
region '<Region>'
delimiter ';'
ignoreheader 1 
IGNOREBLANKLINES
BLANKSASNULL 
;

--Cargue con banner y delimitado por ; con otro formato
copy estudiante from '<Ruta del archivo>' 
credentials 'aws_iam_role=<I am ARN>' 
region '<Region>'
delimiter ';'
ignoreheader 1 
IGNOREBLANKLINES 
BLANKSASNULL 
dateformat 'mm-dd-yyyy';

--tercer cargue sin delimitador, solo cargue por tamaños fijos.
copy estudiante from '<Ruta del archivo>' 
credentials 'aws_iam_role=<I am ARN>' 
region '<Region>'
fixedwidth '0:1,1:9,2:9,3:2,4:10'
dateformat 'mm-dd-yyyy'
;

-- Tablas 
select * from stl_load_errors order by 4 desc;
select * from STL_LOAD_COMMITS order by 10 desc ;


