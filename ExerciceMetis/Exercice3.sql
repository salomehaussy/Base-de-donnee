CREATE TABLE Exploitation(
   ID_Exploitation INT,
   Nom VARCHAR(255),
   Commune VARCHAR(255),
   SAU VARCHAR(255),
   PRIMARY KEY(ID_Exploitation)
);

CREATE TABLE Droits(
   ID_Droits INT,
   Nom VARCHAR(255),
   Debut_ VARCHAR(255),
   Fin VARCHAR(255),
   PRIMARY KEY(ID_Droits)
);

CREATE TABLE Commune(
   ID_Commune COUNTER,
   Nom VARCHAR(255),
   PRIMARY KEY(ID_Commune)
);

CREATE TABLE Unité(
   ID_Unité INT,
   Quota_laitiers INT,
   PRIMARY KEY(ID_Unité)
);

CREATE TABLE Type_droits(
   ID_Type_droits INT,
   Nom VARCHAR(255),
   ID_Unité INT NOT NULL,
   PRIMARY KEY(ID_Type_droits),
   FOREIGN KEY(ID_Unité) REFERENCES Unité(ID_Unité)
);

CREATE TABLE Detenir(
   ID_Exploitation INT,
   ID_Droits INT,
   PRIMARY KEY(ID_Exploitation, ID_Droits),
   FOREIGN KEY(ID_Exploitation) REFERENCES Exploitation(ID_Exploitation),
   FOREIGN KEY(ID_Droits) REFERENCES Droits(ID_Droits)
);

CREATE TABLE Concerne(
   ID_Droits INT,
   ID_Type_droits INT,
   PRIMARY KEY(ID_Droits, ID_Type_droits),
   FOREIGN KEY(ID_Droits) REFERENCES Droits(ID_Droits),
   FOREIGN KEY(ID_Type_droits) REFERENCES Type_droits(ID_Type_droits)
);

CREATE TABLE Situe(
   ID_Exploitation INT,
   ID_Commune INT,
   PRIMARY KEY(ID_Exploitation, ID_Commune),
   FOREIGN KEY(ID_Exploitation) REFERENCES Exploitation(ID_Exploitation),
   FOREIGN KEY(ID_Commune) REFERENCES Commune(ID_Commune)
);
