CREATE TABLE Tuteur(
   ID_Tuteur INT,
   Nom VARCHAR(50),
   Prenom VARCHAR(50),
   PRIMARY KEY(ID_Tuteur)
);

CREATE TABLE Lieu(
   ID_Lieu INT,
   Nom VARCHAR(255),
   PRIMARY KEY(ID_Lieu)
);

CREATE TABLE Apprenti(
   ID_Apprenti INT,
   Nom VARCHAR(255),
   Prenom VARCHAR(255),
   ID_Tuteur INT NOT NULL,
   PRIMARY KEY(ID_Apprenti),
   FOREIGN KEY(ID_Tuteur) REFERENCES Tuteur(ID_Tuteur)
);

CREATE TABLE Concours(
   ID_Concours INT,
   Nom VARCHAR(255),
   Date_concour DATE,
   Dotation INT,
   ID_Lieu INT NOT NULL,
   ID_Apprenti INT NOT NULL,
   PRIMARY KEY(ID_Concours),
   FOREIGN KEY(ID_Lieu) REFERENCES Lieu(ID_Lieu),
   FOREIGN KEY(ID_Apprenti) REFERENCES Apprenti(ID_Apprenti)
);

CREATE TABLE Resultat_concours(
   ID_Resultat_concours INT,
   place INT,
   Nbr_points INT,
   Object VARCHAR(255),
   ID_Apprenti INT NOT NULL,
   PRIMARY KEY(ID_Resultat_concours),
   FOREIGN KEY(ID_Apprenti) REFERENCES Apprenti(ID_Apprenti)
);
