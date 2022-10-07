CREATE TABLE Enclos(
   ID_Enclos INT,
   Nom VARCHAR(255),
   PRIMARY KEY(ID_Enclos)
);

CREATE TABLE Menu(
   ID_Menu INT,
   Type VARCHAR(255),
   PRIMARY KEY(ID_Menu)
);

CREATE TABLE Espèce(
   ID_Espèce INT,
   Nom VARCHAR(255),
   ID_Menu INT NOT NULL,
   PRIMARY KEY(ID_Espèce),
   FOREIGN KEY(ID_Menu) REFERENCES Menu(ID_Menu)
);

CREATE TABLE Animal(
   ID_Animal INT,
   Date_naissance DATE,
   Date_Deces DATE,
   ID_Espèce INT NOT NULL,
   ID_Enclos INT NOT NULL,
   PRIMARY KEY(ID_Animal),
   FOREIGN KEY(ID_Espèce) REFERENCES Espèce(ID_Espèce),
   FOREIGN KEY(ID_Enclos) REFERENCES Enclos(ID_Enclos)
);

CREATE TABLE Repas(
   ID_Repas INT,
   Heure_Repas TIME,
   Quantité INT,
   ID_Animal INT NOT NULL,
   ID_Menu INT NOT NULL,
   PRIMARY KEY(ID_Repas),
   UNIQUE(ID_Animal),
   FOREIGN KEY(ID_Animal) REFERENCES Animal(ID_Animal),
   FOREIGN KEY(ID_Menu) REFERENCES Menu(ID_Menu)
);

CREATE TABLE Cohabitation(
   ID_Espèce INT,
   ID_Espèce_1 INT,
   PRIMARY KEY(ID_Espèce, ID_Espèce_1),
   FOREIGN KEY(ID_Espèce) REFERENCES Espèce(ID_Espèce),
   FOREIGN KEY(ID_Espèce_1) REFERENCES Espèce(ID_Espèce)
);

CREATE TABLE Parenté(
   ID_Animal_grands_parents INT,
   ID_Animal_Parents INT,
   PRIMARY KEY(ID_Animal_grands_parents, ID_Animal_Parents),
   FOREIGN KEY(ID_Animal_grands_parents) REFERENCES Animal(ID_Animal),
   FOREIGN KEY(ID_Animal_Parents) REFERENCES Animal(ID_Animal)
);

CREATE TABLE Detenir(
   ID_Espèce INT,
   ID_Enclos INT,
   PRIMARY KEY(ID_Espèce, ID_Enclos),
   FOREIGN KEY(ID_Espèce) REFERENCES Espèce(ID_Espèce),
   FOREIGN KEY(ID_Enclos) REFERENCES Enclos(ID_Enclos)
);
