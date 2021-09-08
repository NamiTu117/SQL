USE db_zoo

/*returns data in habitat table*/
SELECT * FROM tbl_habitat; 

/*retrieves names that have a value of 3*/ 
SELECT * FROM tbl_species 
WHERE species_name='3'; 

/*nutrition types 600 or less*/
SELECT * FROM tbl_nutrition 
WHERE nutrition_cost <= '600.00';

/*select ids between 2202 and 2206*/ 
SELECT * FROM tbl_nutrition
WHERE nutrition_id BETWEEN 2202 AND 2206; 

/*using aliases*/
SELECT species_name AS Species_Name
FROM tbl_species; 
/*end of alias*/

SELECT species_nutrition AS Nutrition_Type 
FROM tbl_species; 


/*penguin*/
SELECT tbl_specialist.specialist_fname, tbl_specialist.specialist_lname,tbl_specialist.specialist_contact
FROM tbl_specialist 
inner join tbl_care on tbl_care.care_specialist = tbl_specialist.specialist_id 
inner join tbl_species on tbl_care.care_id = tbl_species.species_care
WHERE species_name = 'penguin'; 



