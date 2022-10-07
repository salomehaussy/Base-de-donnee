CREATE TABLE Commune(
   ID_Commune INT,
   Nom_commune VARCHAR(255),
   Nbr_Habitants INT,
   Distance_de_L_agence INT,
   Quartiers VARCHAR(255),
   PRIMARY KEY(ID_Commune)
);

CREATE TABLE Logement(
   ID_Logement INT,
   Adresse VARCHAR(255),
   Superficie INT,
   Loyer DECIMAL(15,2),
   PRIMARY KEY(ID_Logement)
);

CREATE TABLE Signataire(
   ID_Signataire INT,
   Nom VARCHAR(255),
   Prenom VARCHAR(255),
   Date_de_naissance INT,
   N_Telephone INT,
   ID_Logement INT NOT NULL,
   PRIMARY KEY(ID_Signataire),
   FOREIGN KEY(ID_Logement) REFERENCES Logement(ID_Logement)
);

CREATE TABLE Loyer(
   ID_Loyer INT,
   Type VARCHAR(255),
   Charges INT,
   ID_Logement INT NOT NULL,
   PRIMARY KEY(ID_Loyer),
   FOREIGN KEY(ID_Logement) REFERENCES Logement(ID_Logement)
);

CREATE TABLE Situe(
   ID_Commune INT,
   ID_Logement INT,
   PRIMARY KEY(ID_Commune, ID_Logement),
   FOREIGN KEY(ID_Commune) REFERENCES Commune(ID_Commune),
   FOREIGN KEY(ID_Logement) REFERENCES Logement(ID_Logement)
);
