/*
Puedes ejecutar la siguiente sentencia solo si 
creaste las tablas venue y listing anteriormente
*/
insert into cartesian_venue
select venueid, venuename, venuecity, venuestate, venueseats
from venue, listing;

/*
Para llenar la tabla encodingvenue con los distintos encoders o algoritmos de compresion 
ejecuta la siguiente consulta:
*/
insert into encodingvenue
select venuename as venueraw, venuename as venuebytedict, venuename as venuelzo,
venuename as venuerunlength, venuename as venuetext32k, venuename as venuetext255,
venuename as venuezstd
from cartesian_venue;