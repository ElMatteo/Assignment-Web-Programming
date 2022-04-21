CREATE DATABASE mydb;
\c mydb
CREATE SCHEMA schem;
CREATE TABLE city (
   idCity  int NOT NULL,
   nameCity  varchar(255) DEFAULT NULL,
   zipCity  int DEFAULT NULL,
   stateCity  varchar(255) DEFAULT NULL,
  PRIMARY KEY ( idCity )
);

CREATE TABLE train  (
   idTrain  int NOT NULL,
   dateDep  DATE DEFAULT NULL,
   idCityDep  int DEFAULT NULL,
   idCityArr  int DEFAULT NULL,
  PRIMARY KEY ( idTrain ),
  CONSTRAINT c1 
      FOREIGN KEY(idCityDep) 
	      REFERENCES city(idCity),
  CONSTRAINT c2
      FOREIGN KEY(idCityArr) 
	      REFERENCES city(idCity)
);

CREATE TABLE passenger  (
   idPassenger  int NOT NULL,
   namePassenger  varchar(255) DEFAULT NULL,
   idTrain  int DEFAULT NULL,
  PRIMARY KEY ( idPassenger ),
  CONSTRAINT c1 
      FOREIGN KEY(idTrain) 
	      REFERENCES train(idTrain)
);


CREATE TABLE price  (
   idTrain  int DEFAULT NULL,
   price  int DEFAULT NULL,
   cat  varchar(255) DEFAULT NULL,
   CONSTRAINT c2
      FOREIGN KEY(idTrain) 
	      REFERENCES train(idTrain)
);

