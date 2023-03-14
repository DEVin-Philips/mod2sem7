CREATE TABLE CONTAS_CORRENTE (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    SALDO NUMBER(18,2) DEFAULT 0 NOT NULL,
    ATIVA CHAR(1) DEFAULT '1',
    PRIMARY KEY(ID)
);

ALTER TABLE CONTAS_CORRENTE
    ADD ID_CLIENTE NUMBER NOT NULL;


ALTER TABLE CONTAS_CORRENTE
    ADD CONSTRAINT fk_cc_cliente 
    FOREIGN KEY (ID_CLIENTE) 
    REFERENCES CLIENTES(ID);