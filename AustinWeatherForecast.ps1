##@echo off :: artifact from batch file
## AustinWeatherForecast.ps1
## Author:  J. Lerma
## Date:    November 2, 2015
## Opens Internet Explorer to weather.gov 7 day forecast
start iexplore.exe "http://forecast.weather.gov/MapClick.php?lat=30.267145960000448&lon=-97.74305555099966"
exit
