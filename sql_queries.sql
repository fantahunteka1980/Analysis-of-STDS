select *
from chlamydia_age_group_and_sex_2019;
select year, max(population) as max_population 
from chlamydia_age_group_and_sex_2019
group by year;


select *
from chlamydia_males_aged_15_44_years;