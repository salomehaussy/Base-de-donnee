CREATE TABLE Prix(
   Id_Prix_ INT,
   Montant INT,
   PRIMARY KEY(Id_Prix_)
);

CREATE TABLE Photos(
   Id_Photos INT,
   Nom_photo VARCHAR(50),
   PRIMARY KEY(Id_Photos)
);

CREATE TABLE Localisation(
   Id_Localisation INT,
   Region VARCHAR(50),
   Departement VARCHAR(50),
   Ville VARCHAR(50),
   Code_Postal INT,
   PRIMARY KEY(Id_Localisation)
);

CREATE TABLE Description(
   Id_Description INT,
   Description TEXT,
   PRIMARY KEY(Id_Description)
);

CREATE TABLE Vendeur(
   Id_Vendeur INT,
   Nom VARCHAR(50),
   Prenom VARCHAR(50),
   Anciennete DATE,
   PRIMARY KEY(Id_Vendeur)
);

CREATE TABLE Voiture(
   Id_Voiture INT,
   Marques VARCHAR(50),
   modele VARCHAR(50),
   Annee_modele INT,
   Mise_en_circulation DATE,
   Type_de_véhicule VARCHAR(50),
   Kilometrage VARCHAR(50),
   Carburant VARCHAR(50),
   couleur VARCHAR(50),
   nombre_de_porte INT,
   nombre_de_place INT,
   puissance_fiscale VARCHAR(50),
   puissance_din VARCHAR(50),
   permis VARCHAR(50),
   critaire INT,
   boite_de_vitesse VARCHAR(50),
   Id_Prix_ INT,
   Id_Vendeur INT,
   Id_Description INT NOT NULL,
   Id_Localisation INT,
   PRIMARY KEY(Id_Voiture),
   UNIQUE(Id_Description),
   FOREIGN KEY(Id_Prix_) REFERENCES Prix(Id_Prix_),
   FOREIGN KEY(Id_Vendeur) REFERENCES Vendeur(Id_Vendeur),
   FOREIGN KEY(Id_Description) REFERENCES Description(Id_Description),
   FOREIGN KEY(Id_Localisation) REFERENCES Localisation(Id_Localisation)
);

CREATE TABLE Appartenir(
   Id_Voiture INT,
   Id_Photos INT,
   PRIMARY KEY(Id_Voiture, Id_Photos),
   FOREIGN KEY(Id_Voiture) REFERENCES Voiture(Id_Voiture),
   FOREIGN KEY(Id_Photos) REFERENCES Photos(Id_Photos)
);
