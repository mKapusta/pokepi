CREATE TABLE TYPE
(
    ID  INTEGER AUTO_INCREMENT,
    NOM VARCHAR(255),
    PRIMARY KEY (ID)
);

CREATE TABLE ESPECE
(
    ID                 INTEGER AUTO_INCREMENT,
    NOM                VARCHAR(255),
    POKEDEX            INTEGER,
    ID_TYPE_PRINCIPAL  INTEGER,
    ID_TYPE_SECONDAIRE INTEGER,
    ID_EVOLUTION_DE    INTEGER,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID_TYPE_PRINCIPAL) REFERENCES TYPE (ID),
    FOREIGN KEY (ID_TYPE_SECONDAIRE) REFERENCES TYPE (ID),
    FOREIGN KEY (ID_EVOLUTION_DE) REFERENCES ESPECE (ID)
);

CREATE TABLE DRESSEUR
(
    ID  INTEGER AUTO_INCREMENT,
    NOM VARCHAR,
    PRIMARY KEY (ID)
);

CREATE TABLE POKEMON
(
    ID          INTEGER AUTO_INCREMENT,
    SURNOM      VARCHAR,
    NIVEAU      INTEGER,
    ID_DRESSEUR INTEGER,
    ID_ESPECE   INTEGER,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID_DRESSEUR) REFERENCES DRESSEUR (ID),
    FOREIGN KEY (ID_ESPECE) REFERENCES ESPECE (ID)
);

CREATE TABLE ATTAQUE
(
    ID        INTEGER AUTO_INCREMENT,
    NOM       VARCHAR,
    PUISSANCE INTEGER,
    ID_TYPE   INTEGER,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID_TYPE) REFERENCES TYPE (ID)
);

CREATE TABLE PEUT_LANCER
(
    ID         INTEGER AUTO_INCREMENT,
    ID_ATTAQUE INTEGER,
    ID_POKEMON INTEGER,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID_ATTAQUE) REFERENCES ATTAQUE (ID),
    FOREIGN KEY (ID_POKEMON) REFERENCES POKEMON (ID)
)

