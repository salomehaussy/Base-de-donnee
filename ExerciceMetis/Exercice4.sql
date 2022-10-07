CREATE TABLE Parcelle(
   ID_Parcelle INT,
   Nom VARCHAR(255),
   Surface DECIMAL(15,2),
   Cordonnées VARCHAR(50),
   PRIMARY KEY(ID_Parcelle)
);

CREATE TABLE Engrais(
   ID_Engrais INT,
   Nom_Engrais VARCHAR(255),
   PRIMARY KEY(ID_Engrais)
);

CREATE TABLE Apports(
   ID_Apports INT,
   Nom VARCHAR(255),
   PRIMARY KEY(ID_Apports)
);

CREATE TABLE Quantité_Engrais(
   ID_Quantité_Engrais INT,
   Quantité VARCHAR(255),
   Date_Donnée DATE,
   ID_Parcelle INT NOT NULL,
   ID_Engrais INT NOT NULL,
   PRIMARY KEY(ID_Quantité_Engrais),
   FOREIGN KEY(ID_Parcelle) REFERENCES Parcelle(ID_Parcelle),
   FOREIGN KEY(ID_Engrais) REFERENCES Engrais(ID_Engrais)
);

CREATE TABLE Cultures(
   ID_Cultures INT,
   Nom VARCHAR(255),
   PRIMARY KEY(ID_Cultures)
);

CREATE TABLE Production_(
   ID_Production_ INT,
   Nom VARCHAR(255),
   Debut_de_production DATE,
   Fin_de_production DATE,
   Quantité_produite VARCHAR(255),
   ID_Cultures INT NOT NULL,
   ID_Parcelle INT NOT NULL,
   PRIMARY KEY(ID_Production_),
   FOREIGN KEY(ID_Cultures) REFERENCES Cultures(ID_Cultures),
   FOREIGN KEY(ID_Parcelle) REFERENCES Parcelle(ID_Parcelle)
);

CREATE TABLE Apporter(
   ID_Engrais INT,
   ID_Apports INT,
   PRIMARY KEY(ID_Engrais, ID_Apports),
   FOREIGN KEY(ID_Engrais) REFERENCES Engrais(ID_Engrais),
   FOREIGN KEY(ID_Apports) REFERENCES Apports(ID_Apports)
);
