-- requete de création

CREATE TABLE Etudiant (
nom VARCHAR (30),
prenom VARCHAR (15),
anneeNaissance NUMBER(4),
INE VARCHAR (20),
groupeTD NUMBER(1),
groupeTP NUMBER (1),
semestre NUMBER (1),
genre VARCHAR (1),
PRIMARY KEY (INE));


INSERT INTO Etudiant
VALUES
('Dupont','Jean',2000,'1533128EJ', 1, 2, 2,'M' );
INSERT INTO Etudiant
VALUES
('Darget','Manon',2000,'154555AG', 1, 1, 1,'F'); 
INSERT INTO Etudiant
VALUES
('Durand','Jacqueline',1999,'13483128EJ', 3, 5, 2,'F'); 
INSERT INTO Etudiant
VALUES
('Avellan','Xabi',2000,'7643198EM', 3, 6, 1,'M'); 
INSERT INTO Etudiant
VALUES
('Lafourcade','Paul',2001,'946347EC',2, 4, 3,'M'); 
INSERT INTO Etudiant
VALUES
('Taillefer','Coline',2000,'456762XD', 3, 5, 1,'F');

SELECT nom, prenom
FROM Etudiant;

SELECT *
FROM Etudiant
WHERE groupeTD =3;


SELECT nom, prenom
FROM Etudiant
WHERE groupeTP = 2;

SELECT nom, prenom
FROM Etudiant
WHERE groupeTP=1 OR groupeTP=5;

SELECT *
FROM Etudiant
WHERE genre='F' AND groupeTD=1;