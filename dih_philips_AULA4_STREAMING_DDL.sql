--MODULO2, SEMANA7, AULA4 - STREAMING DE MUSICA (DDL)

CREATE TABLE USUARIOS_STREAMING (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    NOME VARCHAR2(128) NOT NULL,
    SOBRENOME VARCHAR2(128) NOT NULL,
    DATA_NASCIMENTO DATE,
    DATA_CRIACAO TIMESTAMP DEFAULT SYSDATE NOT NULL,
    ADMINISTRADOR CHAR(1) DEFAULT '0' NOT NULL,
    PRIMARY KEY(ID)
);

CREATE TABLE PLAYLISTS (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    NOME VARCHAR2(128) NOT NULL,
    DESCRICAO VARCHAR2(500),
    DATA_CRIACAO TIMESTAMP DEFAULT SYSDATE NOT NULL,
    ID_USUARIO NUMBER NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(ID_USUARIO) REFERENCES USUARIOS_STREAMING(ID)
);

CREATE TABLE GENEROS (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    NOME VARCHAR2(128) NOT NULL,
    DESCRICAO VARCHAR2(500),
    PRIMARY KEY(ID)
);

CREATE TABLE ARTISTAS (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    NOME VARCHAR2(128) NOT NULL,
    NACIONALIDADE VARCHAR(50),
    DATA_NASCIMENTO DATE,
    PRIMARY KEY(ID)    
);

CREATE TABLE ALBUNS (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    TITULO VARCHAR2(128) NOT NULL,
    CAPA VARCHAR2(2000),
    ID_ARTISTA NUMBER NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(ID_ARTISTA) REFERENCES ARTISTAS(ID)
);

CREATE TABLE MUSICAS (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    TITULO VARCHAR2(128) NOT NULL,
    DURACAO_SEGUNDOS NUMBER,
    DATA_LANCAMENTO DATE,
    ID_ARTISTA NUMBER NOT NULL,
    ID_GENERO NUMBER NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(ID_ARTISTA) REFERENCES ARTISTAS(ID),
    FOREIGN KEY(ID_GENERO) REFERENCES GENEROS(ID)
);

CREATE TABLE MUSICAS_PLAYLISTS (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    ID_PLAYLIST NUMBER NOT NULL,
    ID_MUSICA NUMBER NOT NULL,
    DATA_INSERCAO TIMESTAMP DEFAULT SYSDATE NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(ID_MUSICA) REFERENCES MUSICAS(ID),
    FOREIGN KEY(ID_PLAYLIST) REFERENCES PLAYLISTS(ID)    
);

CREATE TABLE REPRODUCOES (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    ID_USUARIO NUMBER NOT NULL,
    ID_MUSICA NUMBER NOT NULL,
    DATA_REPRODUCAO TIMESTAMP DEFAULT SYSDATE NOT NULL,
    SEGUNDOS_REPRODUZIDOS NUMBER NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(ID_MUSICA) REFERENCES MUSICAS(ID),
    FOREIGN KEY(ID_USUARIO) REFERENCES USUARIOS_STREAMING(ID)  
);

CREATE TABLE ALBUNS_MUSICAS (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    ID_ALBUM NUMBER NOT NULL,
    ID_MUSICA NUMBER NOT NULL,
    FAIXA NUMBER NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(ID_MUSICA) REFERENCES MUSICAS(ID),
    FOREIGN KEY(ID_ALBUM) REFERENCES ALBUNS(ID)  
);

CREATE TABLE GENEROS_ALBUNS (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    ID_ALBUM NUMBER NOT NULL,
    ID_GENERO NUMBER NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(ID_ALBUM) REFERENCES ALBUNS(ID),
    FOREIGN KEY(ID_GENERO) REFERENCES GENEROS(ID) 
);

CREATE TABLE GENEROS_ARTISTAS (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    ID_ARTISTA NUMBER NOT NULL,
    ID_GENERO NUMBER NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(ID_ARTISTA) REFERENCES ARTISTAS(ID),
    FOREIGN KEY(ID_GENERO) REFERENCES GENEROS(ID) 
);