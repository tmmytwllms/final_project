-- Query to break ontime reprorting into months

CREATE TABLE JANUARY_REPORTING AS
Select * from public."ONTIME_REPORTING"
WHERE "MONTH" = '1';

CREATE TABLE FEBRUARY_REPORTING AS
Select * from public."ONTIME_REPORTING"
WHERE "MONTH" = '2';

CREATE TABLE MARCH_REPORTING AS
Select * from public."ONTIME_REPORTING"
WHERE "MONTH" = '2';

CREATE TABLE APRIL_REPORTING AS
Select * from public."ONTIME_REPORTING"
WHERE "MONTH" = '4';

CREATE TABLE MAY_REPORTING AS
Select * from public."ONTIME_REPORTING"
WHERE "MONTH" = '5';

CREATE TABLE JUNE_REPORTING AS
Select * from public."ONTIME_REPORTING"
WHERE "MONTH" = '6';

CREATE TABLE JULY_REPORTING AS
Select * from public."ONTIME_REPORTING"
WHERE "MONTH" = '7';

CREATE TABLE AUGUST_REPORTING AS
Select * from public."ONTIME_REPORTING"
WHERE "MONTH" = '8';

CREATE TABLE SEPTEMBER_REPORTING AS
Select * from public."ONTIME_REPORTING"
WHERE "MONTH" = '9';

CREATE TABLE OCTOBER_REPORTING AS
Select * from public."ONTIME_REPORTING"
WHERE "MONTH" = '10';

CREATE TABLE NOVEMBER_REPORTING AS
Select * from public."ONTIME_REPORTING"
WHERE "MONTH" = '11';

CREATE TABLE DECEMBER_REPORTING AS
Select * from public."ONTIME_REPORTING"
WHERE "MONTH" = '12';

-- Query to remove nulls from delay columns

UPDATE public.january_reporting
SET "CARRIER_DELAY" = 0
WHERE "CARRIER_DELAY" = 0;

UPDATE public.february_reporting
SET "CARRIER_DELAY" = 0
WHERE "CARRIER_DELAY" = 0;

UPDATE public.march_reporting
SET "CARRIER_DELAY" = 0
WHERE "CARRIER_DELAY" = 0;

UPDATE public.april_reporting
SET "CARRIER_DELAY" = 0
WHERE "CARRIER_DELAY" = 0;

UPDATE public.may_reporting
SET "CARRIER_DELAY" = 0
WHERE "CARRIER_DELAY" = 0;

UPDATE public.june_reporting
SET "CARRIER_DELAY" = 0
WHERE "CARRIER_DELAY" = 0;

UPDATE public.july_reporting
SET "CARRIER_DELAY" = 0
WHERE "CARRIER_DELAY" = 0;

UPDATE public.august_reporting
SET "CARRIER_DELAY" = 0
WHERE "CARRIER_DELAY" = 0;

UPDATE public.september_reporting
SET "CARRIER_DELAY" = 0
WHERE "CARRIER_DELAY" = 0;

UPDATE public.october_reporting
SET "CARRIER_DELAY" = 0
WHERE "CARRIER_DELAY" = 0;

UPDATE public.november_reporting
SET "CARRIER_DELAY" = 0
WHERE "CARRIER_DELAY" = 0;

UPDATE public.december_reporting
SET "CARRIER_DELAY" = 0
WHERE "CARRIER_DELAY" = 0;

UPDATE public.january_reporting
SET "WEATHER_DELAY" = 0
WHERE "WEATHER_DELAY" = 0;

UPDATE public.february_reporting
SET "WEATHER_DELAY" = 0
WHERE "WEATHER_DELAY" = 0;

UPDATE public.march_reporting
SET "WEATHER_DELAY" = 0
WHERE "WEATHER_DELAY" = 0;

UPDATE public.april_reporting
SET "WEATHER_DELAY" = 0
WHERE "WEATHER_DELAY" = 0;

UPDATE public.may_reporting
SET "WEATHER_DELAY" = 0
WHERE "WEATHER_DELAY" = 0;

UPDATE public.june_reporting
SET "WEATHER_DELAY" = 0
WHERE "WEATHER_DELAY" = 0;

UPDATE public.july_reporting
SET "WEATHER_DELAY" = 0
WHERE "WEATHER_DELAY" = 0;

UPDATE public.august_reporting
SET "WEATHER_DELAY" = 0
WHERE "WEATHER_DELAY" = 0;

UPDATE public.september_reporting
SET "WEATHER_DELAY" = 0
WHERE "WEATHER_DELAY" = 0;

UPDATE public.october_reporting
SET "WEATHER_DELAY" = 0
WHERE "WEATHER_DELAY" = 0;

UPDATE public.november_reporting
SET "WEATHER_DELAY" = 0
WHERE "WEATHER_DELAY" = 0;

UPDATE public.december_reporting
SET "WEATHER_DELAY" = 0
WHERE "WEATHER_DELAY" = 0;

UPDATE public.january_reporting
SET "NAS_DELAY" = 0
WHERE "NAS_DELAY" = 0;

UPDATE public.february_reporting
SET "NAS_DELAY" = 0
WHERE "NAS_DELAY" = 0;

UPDATE public.march_reporting
SET "NAS_DELAY" = 0
WHERE "NAS_DELAY" = 0;

UPDATE public.april_reporting
SET "NAS_DELAY" = 0
WHERE "NAS_DELAY" = 0;

UPDATE public.may_reporting
SET "NAS_DELAY" = 0
WHERE "NAS_DELAY" = 0;

UPDATE public.june_reporting
SET "NAS_DELAY" = 0
WHERE "NAS_DELAY" = 0;

UPDATE public.july_reporting
SET "NAS_DELAY" = 0
WHERE "NAS_DELAY" = 0;

UPDATE public.august_reporting
SET "NAS_DELAY" = 0
WHERE "NAS_DELAY" = 0;

UPDATE public.september_reporting
SET "NAS_DELAY" = 0
WHERE "NAS_DELAY" = 0;

UPDATE public.october_reporting
SET "NAS_DELAY" = 0
WHERE "NAS_DELAY" = 0;

UPDATE public.november_reporting
SET "NAS_DELAY" = 0
WHERE "NAS_DELAY" = 0;

UPDATE public.december_reporting
SET "NAS_DELAY" = 0
WHERE "NAS_DELAY" = 0;

UPDATE public.january_reporting
SET "SECURITY_DELAY" = 0
WHERE "SECURITY_DELAY" = 0;

UPDATE public.february_reporting
SET "SECURITY_DELAY" = 0
WHERE "SECURITY_DELAY" = 0;

UPDATE public.march_reporting
SET "SECURITY_DELAY" = 0
WHERE "SECURITY_DELAY" = 0;

UPDATE public.april_reporting
SET "SECURITY_DELAY" = 0
WHERE "SECURITY_DELAY" = 0;

UPDATE public.may_reporting
SET "SECURITY_DELAY" = 0
WHERE "SECURITY_DELAY" = 0;

UPDATE public.june_reporting
SET "SECURITY_DELAY" = 0
WHERE "SECURITY_DELAY" = 0;

UPDATE public.july_reporting
SET "SECURITY_DELAY" = 0
WHERE "SECURITY_DELAY" = 0;

UPDATE public.august_reporting
SET "SECURITY_DELAY" = 0
WHERE "SECURITY_DELAY" = 0;

UPDATE public.september_reporting
SET "SECURITY_DELAY" = 0
WHERE "SECURITY_DELAY" = 0;

UPDATE public.october_reporting
SET "SECURITY_DELAY" = 0
WHERE "SECURITY_DELAY" = 0;

UPDATE public.november_reporting
SET "SECURITY_DELAY" = 0
WHERE "SECURITY_DELAY" = 0;

UPDATE public.december_reporting
SET "SECURITY_DELAY" = 0
WHERE "SECURITY_DELAY" = 0;

UPDATE public.january_reporting
SET "LATE_AIRCRAFT_DELAY" = 0
WHERE "LATE_AIRCRAFT_DELAY" = 0;

UPDATE public.february_reporting
SET "LATE_AIRCRAFT_DELAY" = 0
WHERE "LATE_AIRCRAFT_DELAY" = 0;

UPDATE public.march_reporting
SET "LATE_AIRCRAFT_DELAY" = 0
WHERE "LATE_AIRCRAFT_DELAY" = 0;

UPDATE public.april_reporting
SET "LATE_AIRCRAFT_DELAY" = 0
WHERE "LATE_AIRCRAFT_DELAY" = 0;

UPDATE public.may_reporting
SET "LATE_AIRCRAFT_DELAY" = 0
WHERE "LATE_AIRCRAFT_DELAY" = 0;

UPDATE public.june_reporting
SET "LATE_AIRCRAFT_DELAY" = 0
WHERE "LATE_AIRCRAFT_DELAY" = 0;

UPDATE public.july_reporting
SET "LATE_AIRCRAFT_DELAY" = 0
WHERE "LATE_AIRCRAFT_DELAY" = 0;

UPDATE public.august_reporting
SET "LATE_AIRCRAFT_DELAY" = 0
WHERE "LATE_AIRCRAFT_DELAY" = 0;

UPDATE public.september_reporting
SET "LATE_AIRCRAFT_DELAY" = 0
WHERE "LATE_AIRCRAFT_DELAY" = 0;

UPDATE public.october_reporting
SET "LATE_AIRCRAFT_DELAY" = 0
WHERE "LATE_AIRCRAFT_DELAY" = 0;

UPDATE public.november_reporting
SET "LATE_AIRCRAFT_DELAY" = 0
WHERE "LATE_AIRCRAFT_DELAY" = 0;

UPDATE public.december_reporting
SET "LATE_AIRCRAFT_DELAY" = 0
WHERE "LATE_AIRCRAFT_DELAY" = 0;