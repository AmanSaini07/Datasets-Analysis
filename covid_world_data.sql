
select * from covid
where continent is not null
order by 3,4;

select location,date,population,total_cases,new_cases,total_deaths 
from covid
where continent is not null
order by 3,4;


select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as death_percentage 
from covid
order by 1,2;


select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as death_percentage 
from covid
where location='India'
order by 1,2;

select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as death_percentage 
from covid
where location='Italy'
order by 1,2;

select location,date,total_cases,population,(total_cases/population)*100 as death_percentage 
from covid
--where location='India'
order by 1,2;

select location,population,max(total_cases),max((total_cases/population))*100 as Infection_occurs 
from covid
--where location='India'
group by location,population
order by Infection_occurs desc;


select location,max(cast(total_deaths as int))as deaths_count 
from covid
where continent is not null
group by location
order by deaths_count desc;

select location,max(cast(total_deaths as int))as deaths_count 
from covid
where continent is not null
group by location
order by deaths_count desc;

select continent,max(cast(total_deaths as int))as highest_deaths_count 
from covid
where continent is not null
group by continent
order by highest_deaths_count desc

select date,sum(new_cases)as total_cases,sum(cast(new_deaths as int ))as total_deaths,sum(cast(new_deaths as int ))/sum(new_cases)*100 as death_ratio
from covid
where continent is not null
group by date
order by 1,2;

select max(total_cases), max(total_deaths) from covid;

select * 
from covid dea
join covid_vac ve
on dea.location= ve.location
and dea.date=ve.date
order by 3,4

select dea.continent,dea.location,dea.date,dea.population,ve.new_vaccinations 
from covid dea
join covid_vac ve
on dea.location= ve.location
and dea.date=ve.date
order by 3,4

select dea.continent,dea.location,dea.date,dea.population,cast(ve.new_vaccinations as int),
sum(cast(ve.new_vaccinations as int))  over (partition by dea.location order by dea.location,
dea.date) as rolling_people_vaccination
from covid dea
join covid_vac ve
on dea.location= ve.location
and dea.date=ve.date
order by 2,3

select dea.continent,dea.location,dea.date,dea.population,cast(ve.new_vaccinations as int),
sum(cast(ve.new_vaccinations as int))  over (partition by dea.location order by dea.location,
dea.date) as rolling_people_vaccination
from covid dea
join covid_vac ve
on dea.location= ve.location
and dea.date=ve.date
order by 2,3

--temp table
drop table if exists #people_vaccinations
create table #people_vaccinations
(
continent nvarchar(255),
location nvarchar(255),
date datetime,
population numeric,
new_vaccination numeric,
rolling_people_vacciantion numeric
)

insert into #people_vaccinations
select dea.continent,dea.location,dea.date,dea.population,cast(ve.new_vaccinations as int),
sum(cast(ve.new_vaccinations as int))  over (partition by dea.location order by dea.location,
dea.date) as rolling_people_vaccination
from covid dea
join covid_vac ve
on dea.location= ve.location
and dea.date=ve.date
where dea.continent is not null
order by 2,3

select * ,(rolling_people_vacciantion/population)*100 as vaccination_percentage
from  #people_vaccinations


create view people_vaccinations as
select dea.continent,dea.location,dea.date,dea.population,cast(ve.new_vaccinations as int),
sum(cast(ve.new_vaccinations as int))  over (partition by dea.location order by dea.location,
dea.date) as rolling_people_vaccination
from covid dea
join covid_vac ve
on dea.location= ve.location
and dea.date=ve.date
where dea.continent is not null
--order by 2,3