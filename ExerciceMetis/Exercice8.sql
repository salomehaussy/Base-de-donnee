CREATE TABLE Soldats(
   ID_Soldats INT,
   Grade VARCHAR(255),
   Nom VARCHAR(255),
   PRIMARY KEY(ID_Soldats)
);

CREATE TABLE Difficulté(
   ID_Difficulté INT,
   Niveau VARCHAR(255),
   PRIMARY KEY(ID_Difficulté)
);

CREATE TABLE Parcours(
   ID_Parcours TEXT,
   Date_parcours DATE,
   ID_Soldats INT NOT NULL,
   PRIMARY KEY(ID_Parcours),
   FOREIGN KEY(ID_Soldats) REFERENCES Soldats(ID_Soldats)
);

CREATE TABLE Obstacle(
   ID_Obstacle INT,
   Nom VARCHAR(255),
   ID_Difficulté INT NOT NULL,
   PRIMARY KEY(ID_Obstacle),
   FOREIGN KEY(ID_Difficulté) REFERENCES Difficulté(ID_Difficulté)
);

CREATE TABLE Franchir(
   ID_Obstacle INT,
   ID_Parcours TEXT,
   Note INT,
   PRIMARY KEY(ID_Obstacle, ID_Parcours),
   FOREIGN KEY(ID_Obstacle) REFERENCES Obstacle(ID_Obstacle),
   FOREIGN KEY(ID_Parcours) REFERENCES Parcours(ID_Parcours)
);
