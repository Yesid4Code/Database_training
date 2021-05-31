/*
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

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
/* Options */
select distinct city from station where city regexp "^[aeiou].*.[aeiou]$"
select distinct city from station
where (left(city, 1) in ('a','e','i','o','u')) and (right(city, 1) in ('a','e','i','o','u'));
/*
^			// start of string
[aeiou]			// a single vowel
.			// any characted...
*			// ...repeated any number of times
[aeiou]			// another vowel
$
*/
