 /* 
Author: Ken Norris

Date: July 2018

Last Update: July 2018

Description: This code brings in input from Census data related to county lines
to then create maps in Stata given output variables such as population

Input: .shp and associated files located in County Shapefiles folder. 

See https://www.stata.com/support/faqs/graphics/tmap-and-maps/ for documentation

*******************************************************************************/

clear all

cd "C:\Users\ken831\Documents\County Shapefiles"

shp2dta using cb_2017_us_county_5m, database(countydb) coordinates(countycoord) genid(id)


use countydb, clear

describe

