/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

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
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT REGEXP '^[AEIOU]' OR CITY NOT REGEXP '[AEIOU]$';
SELECT DISTINCT CITY FROM STATION WHERE
       (RIGHT (CITY, 1) NOT IN ('A','E', 'I', 'O', 'U')) OR
       (LEFT (CITY,1) not IN ('A','E', 'I', 'O', 'U'));
