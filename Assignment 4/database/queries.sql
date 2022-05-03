/* Selects all trains departing from Irvine */
SELECT idTrain 
FROM train, city 
WHERE train.idCityDep = city.idCity 
AND nameCity = 'Irvine';

/* Selects the name of all passengers on trains going to New York */
SELECT namePassenger
FROM passenger, train, city
WHERE passenger.idTrain = train.idTrain
AND train.idCityArr = city.idCity
AND city.nameCity = 'New York';

/* Selects for each train going to New York State, the category and the price of the category */
SELECT price.idTrain,cat,price
FROM price, train, city
WHERE price.idTrain = train.idTrain
AND train.idCityArr = city.idCity
AND city.stateCity = 'NY';

/* Selects train numbers and arrival city of each trains who has a departure date after January 1rst 2000 */
SELECT train.idTrain, city.nameCity AS CityArrival
FROM train, city
WHERE train.dateDep > '01/01/2000'
AND train.idCityArr = idCity;