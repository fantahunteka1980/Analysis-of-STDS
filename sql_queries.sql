select *
from chlamydia_age_group_and_sex_2019;
select year, max(population) as max_population 
from chlamydia_age_group_and_sex_2019
group by year;


select *
from chlamydia_males_aged_15_44_years;

select *
from primary and secondary syphilis_males_aged_15_44_years;
Select *
from primary_and_secondary_syphilis_race_and_hispanic_ethnicity;
/*joining tables*/
SELECT chlamydia_age_group_and_sex_2019.year, gonorrhea_age_group_and_sex_2019.age_group, primary_and_secondary_syphilis_age_group_and_sex.sex
FROM ((chlamydia_age_group_and_sex_2019
INNER JOIN gonorrhea_age_group_and_sex_2019 ON chlamydia_age_group_and_sex_2019.cases = gonorrhea_age_group_and_sex_2019.cases)
INNER JOIN primary_and_secondary_syphilis_age_group_and_sex ON chlamydia_age_group_and_sex_2019.sex = primary_and_secondary_syphilis_age_group_and_sex.sex); 

/* joining all 3 by age_group_and_sex_2019*/
SELECT year,age_group,sex, cases, population FROM chlamydia_age_group_and_sex_2019 
UNION 
SELECT year,age_group,sex, cases, population  FROM gonorrhea_age_group_and_sex_2019
union
SELECT year,age_group,sex, cases, population FROM primary_and_secondary_syphilis_age_group_and_sex
ORDER BY year;
/*  joining all the diseases by county_2019  */
SELECT year,state,county, cases, population FROM chlamydia_county_2019 
UNION 
SELECT year,state,county, cases, population  FROM gonorrhea_county_2019
UNION
SELECT year,state,county, cases, population FROM primary_and_secondary_syphilis_county_2019
ORDER BY year;

/*joined by females_aged_15_44_years*/
SELECT year,sex,age_group, cases, population FROM chlamydia_females_aged_15_44_years
UNION 
SELECT year,sex,age_group, cases, population  FROM gonorrhea_females_aged_15_44_years
UNION
SELECT year,sex,age_group, cases, population FROM primary_and_secondary_syphilis_females_aged_15_44_years
ORDER BY year;

/*joined by males_aged_15_44_years */
SELECT year,sex,age_group, cases, population FROM chlamydia_males_aged_15_44_years 
UNION 
SELECT year,sex,age_group, cases, population  FROM gonorrhea_males_aged_15_44_years
UNION
SELECT year,sex,age_group, cases, population FROM primary_and_secondary_syphilis_males_aged_15_44_years
ORDER BY year;


/*joined by race_and_hispanic_ethnicity*/
SELECT year,race_hispanic_ethnicity, cases, population FROM chlamydia_race_and_hispanic_ethnicity 
UNION 
SELECT year,race_hispanic_ethnicity, cases, population  FROM gonorrhea_race_and_hispanic_ethnicity
UNION
SELECT year,race_hispanic_ethnicity, cases, population FROM primary_and_secondary_syphilis_race_and_hispanic_ethnicity
ORDER BY year;