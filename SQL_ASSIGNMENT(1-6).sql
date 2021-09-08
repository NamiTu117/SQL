USE db_zoo

/*assignment 1*/
SELECT * FROM tbl_habitat; 

/*assignment 2*/ 
SELECT * FROM tbl_species 
WHERE species_order='3'; 

/*assignment 3*/
SELECT nutrition_type 
FROM tbl_nutrition 
WHERE nutrition_cost <= 600

/*assignment 4*/ 
SELECT species_name
FROM tbl_species 
WHERE species_nutrition BETWEEN 2202 and 2206

select * from tbl_nutrition 
select * from tbl_species 


/*assigment 5*/
SELECT species_name as 'Species Name', nutrition_type as 'Nutrition Type' 
FROM tbl_species 
INNER JOIN tbl_nutrition on tbl_nutrition.nutrition_id = tbl_species.species_nutrition 


/*assignment 6*/
SELECT tbl_specialist.specialist_fname, tbl_specialist.specialist_lname,tbl_specialist.specialist_contact
FROM tbl_specialist 
inner join tbl_care on tbl_care.care_specialist = tbl_specialist.specialist_id 
inner join tbl_species on tbl_care.care_id = tbl_species.species_care
WHERE species_name = 'penguin'; 



