INSERT INTO city (idCity,nameCity, zipCity, stateCity) VALUES (1,'Irvine',92606,'CA');
INSERT INTO city (idCity, nameCity, zipCity, stateCity) VALUES (2,'New York',10001,'NY');

INSERT INTO train (idTrain, dateDep, idCityDep, idCityArr) VALUES (1,'04/06/2022',1,2);
INSERT INTO train (idTrain, dateDep, idCityDep, idCityArr) VALUES (2, '02/02/2022',2,1);
INSERT INTO train (idTrain, dateDep, idCityDep, idCityArr) VALUES (3, '12/05/1998',2,1);

INSERT INTO passenger (idPassenger, namePassenger, idTrain) VALUES (1,'CLABASSI Matteo',1);
INSERT INTO passenger (idPassenger, namePassenger, idTrain) VALUES (2, 'BIDEN Joe',2);
INSERT INTO passenger (idPassenger, namePassenger, idTrain) VALUES (3, 'MACRON Emmanuel',2);

INSERT INTO price (idTrain, price, cat) VALUES (1,50,'Premium');
INSERT INTO price (idTrain, price, cat) VALUES (1,80,'Regulaur');
INSERT INTO price (idTrain, price, cat) VALUES (2,40,'Premium');
INSERT INTO price (idTrain, price, cat) VALUES (2,70,'Regular');