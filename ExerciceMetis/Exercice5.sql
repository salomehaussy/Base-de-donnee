CREATE TABLE Chasseurs(
   ID_Chasseur INT,
   Pseudo VARCHAR(50),
   PRIMARY KEY(ID_Chasseur)
);

CREATE TABLE Espèces(
   ID_Espèces INT,
   Nom VARCHAR(255),
   Niveau_de_tir VARCHAR(255),
   Poid INT,
   PRIMARY KEY(ID_Espèces)
);

CREATE TABLE Lieu(
   ID_Lieu INT,
   Nom VARCHAR(255),
   PRIMARY KEY(ID_Lieu)
);

CREATE TABLE Niveau_de_tir(
   ID_Niveau_de_tir INT,
   Nbr_de_point VARCHAR(50),
   PRIMARY KEY(ID_Niveau_de_tir)
);

CREATE TABLE Chasse(
   ID_Chasse COUNTER,
   Date_chasse DATE,
   ID_Lieu INT NOT NULL,
   ID_Chasseur INT NOT NULL,
   PRIMARY KEY(ID_Chasse),
   FOREIGN KEY(ID_Lieu) REFERENCES Lieu(ID_Lieu),
   FOREIGN KEY(ID_Chasseur) REFERENCES Chasseurs(ID_Chasseur)
);

CREATE TABLE Chasser(
   ID_Espèces INT,
   ID_Chasse INT,
   PRIMARY KEY(ID_Espèces, ID_Chasse),
   FOREIGN KEY(ID_Espèces) REFERENCES Espèces(ID_Espèces),
   FOREIGN KEY(ID_Chasse) REFERENCES Chasse(ID_Chasse)
);

CREATE TABLE Cataloguer(
   ID_Espèces INT,
   ID_Niveau_de_tir INT,
   PRIMARY KEY(ID_Espèces, ID_Niveau_de_tir),
   FOREIGN KEY(ID_Espèces) REFERENCES Espèces(ID_Espèces),
   FOREIGN KEY(ID_Niveau_de_tir) REFERENCES Niveau_de_tir(ID_Niveau_de_tir)
);
