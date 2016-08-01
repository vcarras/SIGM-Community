--
-- Secuencias para Entidades
--
CREATE SEQUENCE SGL_SQ_ID_OBRAS_MENORES 	START WITH 1 INCREMENT BY 1 MINVALUE 1 NOCACHE  NOCYCLE  ORDER ;
CREATE SEQUENCE SGQ_SQ_ID_QUEJAS 			START WITH 1 INCREMENT BY 1 MINVALUE 1 NOCACHE  NOCYCLE  ORDER ;
CREATE SEQUENCE SGS_SQ_ID_SUBVENCIONES 		START WITH 1 INCREMENT BY 1 MINVALUE 1 NOCACHE  NOCYCLE  ORDER ;


--
-- Secuencias para las Tablas de Validacion
--

-------------------
-- OBRAS MENORES --
-------------------

-- Tabla de validacion para Tipos de Suelo
CREATE SEQUENCE SPAC_SQ_SPAC_TBL_010 		START WITH 1 INCREMENT BY 1 MINVALUE 1 NOCACHE  NOCYCLE  ORDER ;
-- Tabla de validacion para Tipos de Finca
CREATE SEQUENCE SPAC_SQ_SPAC_TBL_011 		START WITH 1 INCREMENT BY 1 MINVALUE 1 NOCACHE  NOCYCLE  ORDER ;
-- Tabla de validacion para Localizacion de Obras
CREATE SEQUENCE SPAC_SQ_SPAC_TBL_012 		START WITH 1 INCREMENT BY 1 MINVALUE 1 NOCACHE  NOCYCLE  ORDER ;


------------------
-- SUBVENCIONES --
------------------

-- Tabla de validacion para Tipos de Subvencion
CREATE SEQUENCE SPAC_SQ_SPAC_TBL_013 		START WITH 1 INCREMENT BY 1 MINVALUE 1 NOCACHE  NOCYCLE  ORDER ;