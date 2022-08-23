CREATE TABLE IF NOT EXISTS public.immunisation
(
    id SERIAL PRIMARY KEY,
    country text,
    "2012" integer,
    "2011" integer,
    "2010" integer,
    "2009" integer,
    "2008" integer
    );
    
    select * from immunization
    
    DROP TABLE public.reported_cases
    CREATE TABLE reported_cases
(
    id SERIAL PRIMARY KEY,
    country text,
    "2012_cases" int,
    "2012_rate" int,
    "2011_cases" int,
    "2011_rate" int,
    "2010_cases" int,
    "2010_rate" int,
    "2009_cases" int,
    "2009_rate" int,
    "2008_cases" int,
    "2008_rate" int
    );
    
    select * from reported_cases