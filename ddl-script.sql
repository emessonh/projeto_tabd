-- Generated by Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   at:        2024-10-26 21:16:50 BRT
--   site:      Oracle Database 12cR2
--   type:      Oracle Database 12cR2



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE olap.dim_esfera_publica (
    sk_esfera_publica  NUMBER(1) NOT NULL,
    nom_esfera_publica VARCHAR2(10 CHAR)
        CONSTRAINT nn_nom_esfera_publica_dim_esfera_publica NOT NULL
);

ALTER TABLE olap.dim_esfera_publica ADD CONSTRAINT pk_dim_esfera_publica PRIMARY KEY ( sk_esfera_publica );

ALTER TABLE olap.dim_esfera_publica ADD CONSTRAINT un_nom_esfera_pubilica_dim_esfera_publica UNIQUE ( nom_esfera_publica );

CREATE TABLE olap.dim_municipio (
    sk_municipio  NUMBER(7) NOT NULL,
    nom_municipio VARCHAR2(50 CHAR)
        CONSTRAINT nn_nom_municipio_dim_municipio NOT NULL
);

ALTER TABLE olap.dim_municipio ADD CONSTRAINT pk_dim_municipio PRIMARY KEY ( sk_municipio );

ALTER TABLE olap.dim_municipio ADD CONSTRAINT un_nom_municipio_dim_municipio UNIQUE ( nom_municipio );

CREATE TABLE olap.dim_setor_economia (
    sk_setor_economia  NUMBER(1) NOT NULL,
    nom_setor_economia VARCHAR2(70 CHAR)
        CONSTRAINT nn_nom_setor_economia_dim_setor_economia NOT NULL
);

ALTER TABLE olap.dim_setor_economia ADD CONSTRAINT pk_dim_setor_economia PRIMARY KEY ( sk_setor_economia );

ALTER TABLE olap.dim_setor_economia ADD CONSTRAINT un_nom_setor_economia_dim_setor_economia UNIQUE ( nom_setor_economia );

CREATE TABLE olap.dim_tempo (
    sk_tempo NUMBER(4) NOT NULL,
    ano      NUMBER(4)
        CONSTRAINT nn_ano_dim_tempo NOT NULL
);

ALTER TABLE olap.dim_tempo ADD CONSTRAINT pk_dim_tempo PRIMARY KEY ( sk_tempo );

ALTER TABLE olap.dim_tempo ADD CONSTRAINT un_ano_dim_tempo UNIQUE ( ano );

CREATE TABLE olap.dim_tipo_ensino (
    sk_tipo_ensino  NUMBER(2) NOT NULL,
    nom_tipo_ensino VARCHAR2(100)
        CONSTRAINT nn_nom_tipo_ensino_dim_tipo_ensino NOT NULL
);

ALTER TABLE olap.dim_tipo_ensino ADD CONSTRAINT pk_dim_tipo_ensino PRIMARY KEY ( sk_tipo_ensino );

ALTER TABLE olap.dim_tipo_ensino ADD CONSTRAINT un_nom_tipo_ensino_dim_tipo_ensino UNIQUE ( nom_tipo_ensino );

CREATE TABLE olap.tab_fato_ideb (
    sk_municipio      NUMBER(7) NOT NULL,
    sk_esfera_publica NUMBER(1) NOT NULL,
    sk_tipo_ensino    NUMBER(2) NOT NULL,
    sk_tempo          NUMBER(4) NOT NULL,
    val_ideb          NUMBER(2, 1)
        CONSTRAINT nn_val_ideb_tab_fato_ideb NOT NULL
);

CREATE INDEX olap.idx_fk_sk_municipio_tab_fato_ideb ON
    olap.tab_fato_ideb (
        sk_municipio
    ASC );

CREATE INDEX olap.idx_fk_sk_esfera_publica_tab_fato_ideb ON
    olap.tab_fato_ideb (
        sk_esfera_publica
    ASC );

CREATE INDEX olap.idx_fk_sk_tipo_ensino_tab_fato_ideb ON
    olap.tab_fato_ideb (
        sk_tipo_ensino
    ASC );

CREATE INDEX olap.idx_fk_sk_tempo_tab_fato_ideb ON
    olap.tab_fato_ideb (
        sk_tempo
    ASC );

ALTER TABLE olap.tab_fato_ideb
    ADD CONSTRAINT pk_tab_fato_ideb PRIMARY KEY ( sk_municipio,
                                                  sk_esfera_publica,
                                                  sk_tipo_ensino,
                                                  sk_tempo );

CREATE TABLE olap.tab_fato_pib (
    sk_municipio      NUMBER(7) NOT NULL,
    sk_setor_economia NUMBER(1) NOT NULL,
    sk_tempo          NUMBER(4) NOT NULL,
    val_pib           NUMBER(10, 1)
        CONSTRAINT nn_val_pib_tab_fato_pib NOT NULL
);

CREATE INDEX olap.idx_fk_sk_municipio_tab_fato_pib ON
    olap.tab_fato_pib (
        sk_municipio
    ASC );

CREATE INDEX olap.idx_fk_sk_setor_economia_tab_fato_pib ON
    olap.tab_fato_pib (
        sk_setor_economia
    ASC );

CREATE INDEX olap.idx_fk_sk_tempo_tab_fato_pib ON
    olap.tab_fato_pib (
        sk_tempo
    ASC );

ALTER TABLE olap.tab_fato_pib
    ADD CONSTRAINT pk_tab_fato_pib PRIMARY KEY ( sk_municipio,
                                                 sk_setor_economia,
                                                 sk_tempo );

ALTER TABLE olap.tab_fato_ideb
    ADD CONSTRAINT fk_sk_esfera_publica_dim_esfera_publica_tab_fato_ideb FOREIGN KEY ( sk_esfera_publica )
        REFERENCES olap.dim_esfera_publica ( sk_esfera_publica );

ALTER TABLE olap.tab_fato_ideb
    ADD CONSTRAINT fk_sk_municipio_dim_municipio_tab_fato_ideb FOREIGN KEY ( sk_municipio )
        REFERENCES olap.dim_municipio ( sk_municipio );

ALTER TABLE olap.tab_fato_pib
    ADD CONSTRAINT fk_sk_municipio_dim_municipio_tab_fato_pib FOREIGN KEY ( sk_municipio )
        REFERENCES olap.dim_municipio ( sk_municipio );

ALTER TABLE olap.tab_fato_pib
    ADD CONSTRAINT fk_sk_setor_economia_dim_setor_economia_tab_fato_pib FOREIGN KEY ( sk_setor_economia )
        REFERENCES olap.dim_setor_economia ( sk_setor_economia );

ALTER TABLE olap.tab_fato_ideb
    ADD CONSTRAINT fk_sk_tempo_dim_tempo_tab_fato_ideb FOREIGN KEY ( sk_tempo )
        REFERENCES olap.dim_tempo ( sk_tempo );

ALTER TABLE olap.tab_fato_pib
    ADD CONSTRAINT fk_sk_tempo_dim_tempo_tab_fato_pib FOREIGN KEY ( sk_tempo )
        REFERENCES olap.dim_tempo ( sk_tempo );

ALTER TABLE olap.tab_fato_ideb
    ADD CONSTRAINT fk_sk_tipo_ensino_dim_tipo_ensino_tab_fato_ideb FOREIGN KEY ( sk_tipo_ensino )
        REFERENCES olap.dim_tipo_ensino ( sk_tipo_ensino );

CREATE SEQUENCE olap.seq_sk_esfera_publica_dim_esfera_publica START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER olap.trg_seq_sk_esfera_publica_dim_esfera_publica BEFORE
    INSERT ON olap.dim_esfera_publica
    FOR EACH ROW
    WHEN ( new.sk_esfera_publica IS NULL )
BEGIN
    :new.sk_esfera_publica := olap.seq_sk_esfera_publica_dim_esfera_publica.nextval;
END;
/

CREATE SEQUENCE olap.seq_sk_municipio_dim_municipio START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER olap.trg_seq_sk_municipio_dim_municipio BEFORE
    INSERT ON olap.dim_municipio
    FOR EACH ROW
    WHEN ( new.sk_municipio IS NULL )
BEGIN
    :new.sk_municipio := olap.seq_sk_municipio_dim_municipio.nextval;
END;
/

CREATE SEQUENCE olap.seq_sk_setor_economia_dim_setor_economia START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER olap.trg_seq_sk_setor_economia_dim_setor_economia BEFORE
    INSERT ON olap.dim_setor_economia
    FOR EACH ROW
    WHEN ( new.sk_setor_economia IS NULL )
BEGIN
    :new.sk_setor_economia := olap.seq_sk_setor_economia_dim_setor_economia.nextval;
END;
/

CREATE SEQUENCE olap.seq_sk_tempo_dim_tempo START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER olap.trg_seq_sk_tempo_dim_tempo BEFORE
    INSERT ON olap.dim_tempo
    FOR EACH ROW
    WHEN ( new.sk_tempo IS NULL )
BEGIN
    :new.sk_tempo := olap.seq_sk_tempo_dim_tempo.nextval;
END;
/

CREATE SEQUENCE olap.seq_sk_tipo_ensino_dim_tipo_ensino START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER olap.trg_seq_sk_tipo_ensino_dim_tipo_ensino BEFORE
    INSERT ON olap.dim_tipo_ensino
    FOR EACH ROW
    WHEN ( new.sk_tipo_ensino IS NULL )
BEGIN
    :new.sk_tipo_ensino := olap.seq_sk_tipo_ensino_dim_tipo_ensino.nextval;
END;
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             7
-- ALTER TABLE                             19
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           5
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          5
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
