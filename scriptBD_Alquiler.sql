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

create table VIVIENDA (
    CODVIV INT,
    DESCVIV VARCHAR(150),
    DIRVIV VARCHAR(150),
    UBIGEO_CODUBI CHAR (6),
    ESTADOVIVIENDA_CODESTVIV INT ,
    TIPOVIVIENDA_CODTIPVIV INT,
    CONSTRAINT CODVIV_PK PRIMARY KEY (CODVIV)
);

/*crear tabla estado vivienda*/

create table ESTADO_VIVIENDA (
    CODESTVIV INT ,
    DESCESTVIV VARCHAR (50),
    CONSTRAINT CODESTVIV_PK PRIMARY KEY (CODESTVIV)
);

/*TABLA TIPO VIVIENDA*/

CREATE TABLE TIPO_VIVIENDA (
    CODTIPVIV INT ,
    DESCTIPVIV VARCHAR (50),
    CONSTRAINT CODTIPVIV_PK PRIMARY KEY (CODTIPVIV)
);

CREATE TABLE ALQUILER (
    CODALQ INT ,
    FECINCALQ DATE ,
    PERSONA_PROP INT ,
    PERSONA_INQ INT ,
    CONSTRAINT CODALQ_PK PRIMARY KEY (CODALQ)
);

CREATE TABLE DETALLE_ALQUILER (
    CODDETALQ INT,
    VIVIENDA_CODVIV INT ,
    FECINICDETALQ DATE ,
    COSTDETALQ DECIMAL (8,2),
    ALQUILER_CODALQ INT ,
    CONSTRAINT CODDETALQ_PK PRIMARY KEY (CODDETALQ)
);
SHOW TABLES;

/*crear relacion de la tabla persona a la tabla ubigeo*/

alter table persona
    add CONSTRAINT ubigeo_fk foreign key (UBIGEO_CODUBI)
    references ubigeo(CODUBI);