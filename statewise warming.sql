select * 
from temp_state

ALTER TABLE temp_state
drop column F6,F7,F8;

select * 
from temp_state

select distinct Country 
from temp_state 
order by Country asc

select distinct State from temp_state where Country='India'

select distinct State,coalesce( AverageTemperature,AverageTemperatureUncertainty) 
from temp_state 
where Country='India' 

select count(distinct State) 
from temp_state 

select distinct State,coalesce( AverageTemperature,AverageTemperatureUncertainty) 
from temp_state 
where Country='Australia'


select distinct State,coalesce( AverageTemperature,AverageTemperatureUncertainty) 
from temp_state 
where Country='Brazil'


select distinct State, coalesce( AverageTemperature,AverageTemperatureUncertainty)
from temp_state 
where Country='Canada'


select distinct State, coalesce( AverageTemperature,AverageTemperatureUncertainty)
from temp_state
where Country='China'


select distinct Statecoalesce( AverageTemperature,AverageTemperatureUncertainty) 
from temp_state 
where Country='Russia'


select distinct State, coalesce( AverageTemperature,AverageTemperatureUncertainty) 
from temp_state 
where Country='United States' 

select AVG(AverageTemperature) 
from temp_state

select MAX(AverageTemperature) 
from temp_state

select Min(AverageTemperature) 
from temp_state

select Country, State
from temp_state where AverageTemperature=36.339


select Country, State
from temp_state where AverageTemperature=-45.3889999999999

select coalesce( AverageTemperature,AverageTemperatureUncertainty)
as Temprature
,State,Country 
from temp_state 
order by Country asc

select distinct Country from temp_state  order by Country asc



select State,AVG(AverageTemperature) as AVERAGE_TEMPRATURE from temp_state
where Country='India'
group by State


select State,AVG(AverageTemperature) as AVERAGE_TEMPRATURE from temp_state
where Country='Australia'
group by State

select State,AVG(AverageTemperature) as AVERAGE_TEMPRATURE from temp_state
where Country='Brazil'
group by State

select State,AVG(AverageTemperature) as AVERAGE_TEMPRATURE from temp_state
where Country='Canada'
group by State


select State,AVG(AverageTemperature) as AVERAGE_TEMPRATURE from temp_state
where Country='China'
group by State

select State,AVG(AverageTemperature) as AVERAGE_TEMPRATURE from temp_state
where Country='Russia'
group by State

select State,AVG(AverageTemperature) as AVERAGE_TEMPRATURE from temp_state
where Country='United States'
group by State



