CREATE TABLE Jockeys(
   ID_Jockeys INT,
   Nom VARCHAR(255),
   Prenom VARCHAR(255),
   PRIMARY KEY(ID_Jockeys)
);

CREATE TABLE Champ_de_course(
   ID_Champ_de_course INT,
   Nom VARCHAR(255),
   Nbr_de_place INT,
   PRIMARY KEY(ID_Champ_de_course)
);

CREATE TABLE Course(
   ID_Course INT,
   Nom VARCHAR(255),
   Date_course DATE,
   ID_Champ_de_course INT NOT NULL,
   PRIMARY KEY(ID_Course),
   FOREIGN KEY(ID_Champ_de_course) REFERENCES Champ_de_course(ID_Champ_de_course)
);

CREATE TABLE Propriétaires(
   ID_Propriétaires INT,
   Nom VARCHAR(255),
   Prenom VARCHAR(255),
   PRIMARY KEY(ID_Propriétaires)
);

CREATE TABLE Cheval(
   ID_Cheval INT,
   Nom VARCHAR(255),
   Sexe VARCHAR(255),
   Date_de_naissance DATE,
   ID_Propriétaires INT NOT NULL,
   ID_Jockeys INT NOT NULL,
   PRIMARY KEY(ID_Cheval),
   FOREIGN KEY(ID_Propriétaires) REFERENCES Propriétaires(ID_Propriétaires),
   FOREIGN KEY(ID_Jockeys) REFERENCES Jockeys(ID_Jockeys)
);

CREATE TABLE Catégorie(
   ID_Catégorie INT,
   Type VARCHAR(255),
   ID_Course INT NOT NULL,
   PRIMARY KEY(ID_Catégorie),
   FOREIGN KEY(ID_Course) REFERENCES Course(ID_Course)
);

CREATE TABLE Participer(
   ID_Cheval INT,
   ID_Jockeys INT,
   ID_Course INT,
   Numero_Dossard INT,
   PRIMARY KEY(ID_Cheval, ID_Jockeys, ID_Course),
   FOREIGN KEY(ID_Cheval) REFERENCES Cheval(ID_Cheval),
   FOREIGN KEY(ID_Jockeys) REFERENCES Jockeys(ID_Jockeys),
   FOREIGN KEY(ID_Course) REFERENCES Course(ID_Course)
);

CREATE TABLE Apparenter(
   ID_Cheval_Enfant INT,
   ID_Cheval_Parent INT,
   PRIMARY KEY(ID_Cheval_Enfant, ID_Cheval_Parent),
   FOREIGN KEY(ID_Cheval_Enfant) REFERENCES Cheval(ID_Cheval),
   FOREIGN KEY(ID_Cheval_Parent) REFERENCES Cheval(ID_Cheval)
);
