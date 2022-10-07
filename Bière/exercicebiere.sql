CREATE TABLE Fabricant(
   Id_Fabricant INT AUTO_INCREMENT,
   Fabricant VARCHAR(50),
   PRIMARY KEY(Id_Fabricant)
);

CREATE TABLE Taxes(
   Id_Taxes INT AUTO_INCREMENT,
   TTC DECIMAL(11,2),
   TVA VARCHAR(50),
   PRIMARY KEY(Id_Taxes)
);

CREATE TABLE Continent(
   Id_Continent INT AUTO_INCREMENT,
   Nom VARCHAR(50),
   PRIMARY KEY(Id_Continent)
);

CREATE TABLE Achat(
   Id_Achat INT AUTO_INCREMENT,
   Prix_Achat VARCHAR(50),
   Marge_SDBM VARCHAR(50),
   Id_Taxes INT NOT NULL,
   PRIMARY KEY(Id_Achat),
   FOREIGN KEY(Id_Taxes) REFERENCES Taxes(Id_Taxes)
);

CREATE TABLE Pays(
   Id_Pays INT AUTO_INCREMENT,
   Nom VARCHAR(50),
   Id_Continent INT NOT NULL,
   PRIMARY KEY(Id_Pays),
   FOREIGN KEY(Id_Continent) REFERENCES Continent(Id_Continent)
);

CREATE TABLE Biere(
   Id_Biere INT AUTO_INCREMENT,
   Marque VARCHAR(50),
   Couleur VARCHAR(50),
   Type VARCHAR(50),
   Id_Pays INT,
   Id_Fabricant INT,
   PRIMARY KEY(Id_Biere),
   FOREIGN KEY(Id_Pays) REFERENCES Pays(Id_Pays),
   FOREIGN KEY(Id_Fabricant) REFERENCES Fabricant(Id_Fabricant)
);

CREATE TABLE Articles(
   Id_Articles INT AUTO_INCREMENT,
   Nom_article VARCHAR(50),
   Quantité INT,
   Id_Biere INT NOT NULL,
   PRIMARY KEY(Id_Articles),
   FOREIGN KEY(Id_Biere) REFERENCES Biere(Id_Biere)
);

CREATE TABLE Tickets(
   Numero_ticket INT AUTO_INCREMENT,
   Ticket_horodatés DATETIME,
   Id_Achat INT NOT NULL,
   Id_Articles INT NOT NULL,
   PRIMARY KEY(Numero_ticket),
   FOREIGN KEY(Id_Achat) REFERENCES Achat(Id_Achat),
   FOREIGN KEY(Id_Articles) REFERENCES Articles(Id_Articles)
);