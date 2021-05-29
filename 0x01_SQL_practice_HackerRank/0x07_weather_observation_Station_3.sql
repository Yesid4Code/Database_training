/*
Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, buy exclude duplicates from the answer.
The STATION table is described as follows:
_____________________________
|           STATION         |
-----------------------------
| FIELD      | TYPE         |
-----------------------------
| ID         | NUMBER       |
-----------------------------
| CITY       | VARCHAR2(21) |
-----------------------------
| STATE      | VARCHAR2(2)  |
-----------------------------
| LAT_N      | NUMBER       |
-----------------------------
| LONG_W     | NUMBER       |
-----------------------------
where LAT_N is the northern latitude and LONG_W is the western longitude.
*/
/*select distinct(CITY) from STATION where ((ID%2)=0);*/
select distinct(CITY) from STATION where (mod(ID, 2)=0);
