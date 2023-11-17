select * from CovidVaccinations
  --1.select the data you want 
select location,date,total_cases,new_cases,total_deaths, population
 from CovidDeaths
 order by 1,2 

 --2.looking total cases vs total death  .calculation with percntage
 select location,date,total_cases,new_cases,total_deaths,(total_deaths/total_cases) * 100 as h
 from CovidDeaths
 where location like  '%Africa%'
 order by 1,2 
 --3.looking total cases vs population  .calculation with percntage
 select location,date, total_case, population,(total_case/population) * 100 as h
 from CovidDeaths
 where location like  '%Africa%'
 order by 1,2 
 --4.looking countries with highest infection rate compared with paputalion
 
 select location, total_cases, population max(total_case) as highest
     max(total_case /population) * 100 percentagepeapel infected 
 from CovidDeaths
 where location like  '%Africa%'
 group by population ,location 
 order by 1,2
 select * from covidDeaths
 where iso_code is not null 


--create view to store data for later visualizations
create view vis as 
 select location,date,total_cases,new_cases,total_deaths,(total_deaths/total_cases) * 100 as h
 from CovidDeaths
 where location like  '%Africa%'
 --order by 1,2
 select * from vis






