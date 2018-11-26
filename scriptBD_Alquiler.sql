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

 /*crear tabla persona*/

 create table PERSONA (
    CODPER INT ,
    NOMPER VARCHAR(150),
    APEPATPER VARCHAR (150),
    APEMATPER VARCHAR (150),
    DNIPER CHAR (8),
    DIRPER VARCHAR (150),
    UBIGEI_CODUBI CHAR (6),
    TELEFIPER CHAR(9),
    TELE2PER CHAR (9),
    SEXOPER CHAR (1),
    TIPPER CHAR (1),
    USUPER VARCHAR (50),
    PASSPER VARCHAR (50),
    CONSTRAINT CODPER_PK PRIMARY KEY (CODPER)  
 );
/*VERIFICAR SI SE A CREADO LA TABLA PERSONA*/

SHOW TABLES;
/*verificar la estrutura de la tabla persona*/

show columns in persona;
/*crear tabla ubigeo*/

create table UBIGEO (
    CODUBI CHAR (6),
    DISTUBI VARCHAR (150),
    PROVUBI VARCHAR (150),
    DPTUBI VARCHAR (150),
    CONSTRAINT CODUBI_PK PRIMARY KEY (CODUBI)
);

SHOW TABLES;
/*verificar estrutura de la tabl ubigeo*/

show columns in ubigeo;



