/* Dataset: Titanic dataset
Schema: tested (PassengerId, Survived, Pclass, Name, Sex, Age, Parch, Ticket, Fare, Cabin, Embarked)
Link: here
List of tasks:

- Display female passengers who survived and are older than 30.
- Find the average age of men who didn't survive.
- Display information for passengers who spent between $20 and $50 on   their tickets and got on the ship at port 'C'."
- Find the total number of the survivors in the first class.
- Show the information of passengers who boarded from Cherbourg (port 'C') and spent more than $75 on their tickets.". */

-- women and older than 30
SELECT *
FROM tested
WHERE Sex = 'female' AND Survived = 1 AND Age > 30;

-- average age of survivors
SELECT AVG(Age) AS AverageAge
FROM tested
WHERE Sex = 'male' AND Survived = 0;

-- those who spent between $20 and %50 at port C
SELECT *
FROM tested
WHERE Fare BETWEEN 20 AND 50 AND Embarked = 'C';

-- survivors in first class
SELECT COUNT(*) AS NumberOfSurvivors
FROM tested
WHERE Pclass = 1 AND Survived = 1;

-- Those who spent more than $75 in port C
SELECT *
FROM tested
WHERE Embarked = 'C' AND Fare > 75;