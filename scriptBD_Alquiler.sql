/*Listar base de datows del servidor */
show databases;


/*Eliminar la base de datos*/

drop database ;

/*Crear ek utf8 para aceptar los caracteres*/
create database dbAlquiler default character set utf8;

/*poner en uso la basse de datos*/

use dbAlquiler;

/*verificar si esta en uso */

select database ();

