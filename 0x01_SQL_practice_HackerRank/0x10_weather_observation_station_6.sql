/*
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Input Format
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

Where LAT_N is the northern latitude and LONG_W is the western longitude.
*/
SELECT DISTINCT city FROM station WHERE city REGEXP "^[aeiou].*"; /*Option 1*/
select distinct(city) from station where lower(substr(city,1,1)) in ('a','e','i','o','u'); /*Option 2*/
