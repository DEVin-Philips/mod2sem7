--MODULO2, SEMANA7, AULA4 - STREAMING DE MUSICA (DML)

-- USUARIOS
INSERT INTO USUARIOS_STREAMING (NOME, SOBRENOME, DATA_NASCIMENTO)
VALUES ('Leonardo', 'Fonseca', '20/03/1990');
INSERT INTO USUARIOS_STREAMING (NOME, SOBRENOME, DATA_NASCIMENTO)
VALUES ('Halan', 'Germano', '10/04/1992');
INSERT INTO USUARIOS_STREAMING (NOME, SOBRENOME, DATA_NASCIMENTO)
VALUES ('Jaime', 'Leal', '15/01/1985');
INSERT INTO USUARIOS_STREAMING (NOME, SOBRENOME, DATA_NASCIMENTO, ADMINISTRADOR)
VALUES ('Jo�o Vitor', 'Fraga', '30/10/1991', '1');
COMMIT;

--PLAYLISTS
INSERT INTO PLAYLISTS (NOME, ID_USUARIO)
VALUES ('FESTA', 1);
INSERT INTO PLAYLISTS (NOME, ID_USUARIO)
VALUES ('TRABALHO', 1);
INSERT INTO PLAYLISTS (NOME, ID_USUARIO)
VALUES ('FOCO', 2);
INSERT INTO PLAYLISTS (NOME, ID_USUARIO)
VALUES ('ACADEMIA', 3);
INSERT INTO PLAYLISTS (NOME, ID_USUARIO)
VALUES ('CHURRASCO', 3);
INSERT INTO PLAYLISTS (NOME, ID_USUARIO)
VALUES ('FOCO', 3);
INSERT INTO PLAYLISTS (NOME, ID_USUARIO)
VALUES ('ACADEMIA', 2);
INSERT INTO PLAYLISTS (NOME, ID_USUARIO)
VALUES ('CHURRASCO', 2);
COMMIT;

--GENEROS
INSERT INTO GENEROS(NOME) 
VALUES('SAMBA');
INSERT INTO GENEROS(NOME) 
VALUES('ROCK');
INSERT INTO GENEROS(NOME) 
VALUES('METAL');
INSERT INTO GENEROS(NOME) 
VALUES('PAGODINHO');
INSERT INTO GENEROS(NOME) 
VALUES('SERTANEJO');
INSERT INTO GENEROS(NOME) 
VALUES('REGGAE');
COMMIT;

--ARTISTAS
INSERT INTO ARTISTAS(NOME, NACIONALIDADE) 
VALUES ('PARKWAY DRIVE', 'AUSTRALIA');
INSERT INTO ARTISTAS(NOME, NACIONALIDADE) 
VALUES ('DEMONIOS DA GAROA', 'BRASIL');
INSERT INTO ARTISTAS(NOME, NACIONALIDADE) 
VALUES ('SEPULTURA', 'BRASIL');
INSERT INTO ARTISTAS(NOME, NACIONALIDADE) 
VALUES ('CHITAOZINHO E XORORO', 'BRASIL');
INSERT INTO ARTISTAS(NOME, NACIONALIDADE) 
VALUES ('DAZARANHA', 'BRASIL');
COMMIT;

--ALBUNS
INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('HORIZONS', 1);
INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('ATLAS', 1);

INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('HORIZONS', 1);
INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('ATLAS', 1);

INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('DEMONIOS DA GAROA', 2);

INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('ROOTS', 3);
INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('ARISE', 3);
INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('QUADRA', 3);

INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('Aqui O Sistema � Bruto', 4);
INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('A Hist�ria Continua (Ao Vivo)', 4);
INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('Tom do Sert�o', 4);

INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('Seja Bem Vindo', 5);
INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('Tribo da Lua', 5);
INSERT INTO ALBUNS (TITULO, ID_ARTISTA) 
VALUES ('Nossa Barulheira', 5);
COMMIT;

--MUSICAS
INSERT INTO MUSICAS(TITULO, ID_ARTISTA, ID_GENERO) 
VALUES('Home is for the Heartless', 1, 3);
INSERT INTO MUSICAS(TITULO, ID_ARTISTA, ID_GENERO) 
VALUES('Romance is Dead', 1, 3);
INSERT INTO MUSICAS(TITULO, ID_ARTISTA, ID_GENERO) 
VALUES('Trem das Onze', 2, 1);
INSERT INTO MUSICAS(TITULO, ID_ARTISTA, ID_GENERO) 
VALUES('Saudosa Maloca', 2, 1);
INSERT INTO MUSICAS(TITULO, ID_ARTISTA, ID_GENERO) 
VALUES('Roots Bloody Roots', 3, 3);
INSERT INTO MUSICAS(TITULO, ID_ARTISTA, ID_GENERO) 
VALUES('Attitude', 3, 3);
INSERT INTO MUSICAS(TITULO, ID_ARTISTA, ID_GENERO) 
VALUES('Evid�ncias', 4, 5);
INSERT INTO MUSICAS(TITULO, ID_ARTISTA, ID_GENERO) 
VALUES('Pense em Mim', 4, 5);
INSERT INTO MUSICAS(TITULO, ID_ARTISTA, ID_GENERO) 
VALUES('Tribo da Lua', 5, 6);
INSERT INTO MUSICAS(TITULO, ID_ARTISTA, ID_GENERO) 
VALUES('Sal�o de Festa a Vapor', 5, 6);
COMMIT;

--MUSICAS_PLAYLISTS
INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (5, 3);
INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (5, 4);
INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (5, 7);
INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (5, 9);
INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (5, 10);


INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (4, 2);
INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (4, 5);
INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (4, 6);
INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (4, 1);

INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (1, 3);
INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (1, 4);
INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (1, 7);
INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (1, 8);
INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (1, 9);
INSERT INTO MUSICAS_PLAYLISTS (ID_PLAYLIST, ID_MUSICA)
VALUES (1, 10);
COMMIT;

--ALBUNS_MUSICAS
INSERT INTO ALBUNS_MUSICAS (ID_ALBUM, ID_MUSICA, FAIXA)
VALUES (1, 2, 4);
INSERT INTO ALBUNS_MUSICAS (ID_ALBUM, ID_MUSICA, FAIXA)
VALUES (2, 1, 5);
INSERT INTO ALBUNS_MUSICAS (ID_ALBUM, ID_MUSICA, FAIXA)
VALUES (5, 3, 1);
INSERT INTO ALBUNS_MUSICAS (ID_ALBUM, ID_MUSICA, FAIXA)
VALUES (5, 4, 2);
INSERT INTO ALBUNS_MUSICAS (ID_ALBUM, ID_MUSICA, FAIXA)
VALUES (6, 5, 1);
INSERT INTO ALBUNS_MUSICAS (ID_ALBUM, ID_MUSICA, FAIXA)
VALUES (7, 6, 10);
INSERT INTO ALBUNS_MUSICAS (ID_ALBUM, ID_MUSICA, FAIXA)
VALUES (9, 7, 8);
INSERT INTO ALBUNS_MUSICAS (ID_ALBUM, ID_MUSICA, FAIXA)
VALUES (9, 8, 15);
INSERT INTO ALBUNS_MUSICAS (ID_ALBUM, ID_MUSICA, FAIXA)
VALUES (13, 9, 1);
INSERT INTO ALBUNS_MUSICAS (ID_ALBUM, ID_MUSICA, FAIXA)
VALUES (14, 10, 7);
COMMIT;

--GENEROS_ALBUNS
INSERT INTO GENEROS_ALBUNS (ID_ALBUM, ID_GENERO) 
VALUES (1, 3);
INSERT INTO GENEROS_ALBUNS (ID_ALBUM, ID_GENERO) 
VALUES (2, 3);
INSERT INTO GENEROS_ALBUNS (ID_ALBUM, ID_GENERO) 
VALUES (6, 3);
INSERT INTO GENEROS_ALBUNS (ID_ALBUM, ID_GENERO) 
VALUES (7, 3);
INSERT INTO GENEROS_ALBUNS (ID_ALBUM, ID_GENERO) 
VALUES (8, 3);
INSERT INTO GENEROS_ALBUNS (ID_ALBUM, ID_GENERO) 
VALUES (5, 1);
INSERT INTO GENEROS_ALBUNS (ID_ALBUM, ID_GENERO) 
VALUES (9, 5);
INSERT INTO GENEROS_ALBUNS (ID_ALBUM, ID_GENERO) 
VALUES (10, 5);
INSERT INTO GENEROS_ALBUNS (ID_ALBUM, ID_GENERO) 
VALUES (11, 5);
INSERT INTO GENEROS_ALBUNS (ID_ALBUM, ID_GENERO) 
VALUES (12, 6);
INSERT INTO GENEROS_ALBUNS (ID_ALBUM, ID_GENERO) 
VALUES (13, 6);
INSERT INTO GENEROS_ALBUNS (ID_ALBUM, ID_GENERO) 
VALUES (14, 6);
INSERT INTO GENEROS_ALBUNS (ID_ALBUM, ID_GENERO) 
VALUES (14, 2);
COMMIT;

--GENEROS_ARTISTAS
INSERT INTO GENEROS_ARTISTAS (ID_ARTISTA, ID_GENERO)
VALUES (1, 3);
INSERT INTO GENEROS_ARTISTAS (ID_ARTISTA, ID_GENERO)
VALUES (2, 1);
INSERT INTO GENEROS_ARTISTAS (ID_ARTISTA, ID_GENERO)
VALUES (3, 3);
INSERT INTO GENEROS_ARTISTAS (ID_ARTISTA, ID_GENERO)
VALUES (4, 5);
INSERT INTO GENEROS_ARTISTAS (ID_ARTISTA, ID_GENERO)
VALUES (5, 6);
INSERT INTO GENEROS_ARTISTAS (ID_ARTISTA, ID_GENERO)
VALUES (5, 2);
COMMIT;

--REPRODUCOES
INSERT INTO REPRODUCOES (ID_USUARIO, ID_MUSICA, SEGUNDOS_REPRODUZIDOS) 
VALUES (1, 1, 180);
INSERT INTO REPRODUCOES (ID_USUARIO, ID_MUSICA, SEGUNDOS_REPRODUZIDOS) 
VALUES (1, 3, 180);
INSERT INTO REPRODUCOES (ID_USUARIO, ID_MUSICA, SEGUNDOS_REPRODUZIDOS) 
VALUES (1, 7, 180);
INSERT INTO REPRODUCOES (ID_USUARIO, ID_MUSICA, SEGUNDOS_REPRODUZIDOS) 
VALUES (1, 9, 180);
INSERT INTO REPRODUCOES (ID_USUARIO, ID_MUSICA, SEGUNDOS_REPRODUZIDOS) 
VALUES (2, 1, 180);
INSERT INTO REPRODUCOES (ID_USUARIO, ID_MUSICA, SEGUNDOS_REPRODUZIDOS) 
VALUES (2, 2, 180);
INSERT INTO REPRODUCOES (ID_USUARIO, ID_MUSICA, SEGUNDOS_REPRODUZIDOS) 
VALUES (2, 5, 180);
INSERT INTO REPRODUCOES (ID_USUARIO, ID_MUSICA, SEGUNDOS_REPRODUZIDOS) 
VALUES (2, 6, 180);
INSERT INTO REPRODUCOES (ID_USUARIO, ID_MUSICA, SEGUNDOS_REPRODUZIDOS) 
VALUES (3, 4, 180);
INSERT INTO REPRODUCOES (ID_USUARIO, ID_MUSICA, SEGUNDOS_REPRODUZIDOS) 
VALUES (3, 3, 180);
INSERT INTO REPRODUCOES (ID_USUARIO, ID_MUSICA, SEGUNDOS_REPRODUZIDOS) 
VALUES (3, 7, 180);
INSERT INTO REPRODUCOES (ID_USUARIO, ID_MUSICA, SEGUNDOS_REPRODUZIDOS) 
VALUES (3, 10, 180);
COMMIT;