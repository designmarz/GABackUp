######create new database -----------	CREATE DATABASE apartmentlab
######connect to said datavbase -----	\c apartmentlab
######create new tables ------------	CREATE TABLE *tableName*(id SERIAL PRIMARY KEY)

######CREATE TABLE properties(properties_id SERIAL PRIMARY KEY, name VARCHAR(50), units INTEGER, owner_id INTEGER NOT NULL REFERENCES owners(owner_id));

######list all tables ------------	\dt
######list all users  ------------    \du
######Show data form a table -----	SELECT * FROM owners;
######show the names of all owners --	SELECT owners FROM owners;
######show the names of all owners by age -- SELECT * FROM owners ORDER BY AGE asc;
######Show Owner Mary ------------	SELECT * FROM owners WHERE name='Mary';
######Show owners older than 30. --	SELECT * FROM owners WHERE age>30;
######Add John who is 33 to owners --	INSERT INTO owners (name, age)VALUES ('John', 33);
######Add Jane who is 43 to owners -- INSERT INTO owners (name, age)VALUES ('Jane', 43); 
######Change Janes age to 30 -------	UPDATE owners SET AGE = 30 WHERE owner_id = 8;
######Chnage Janes name to Janet ----	UPDATE owners SET NAME = 'Janet' WHERE owner_id = 8;
######Add A property named Archstone with 20 units --	INSERT INTO properties (name, units, owner_id)VALUES ('Archstone', 20, 4);

######Delete owner Janet -----	DELETE FROM owners WHERE owner_id = 8;
######show all except Archstone and no id 
