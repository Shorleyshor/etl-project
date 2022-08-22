# etl-project

This project involves all 3 parts of the ETL process: Extract, Transform & Load. 

The data we have chosen to use is on the reported TB cases in the EU/EEA, from 2008-2012 and the immunization coverage estimates by country in EU/EEA.

Our data sources were as follows:

https://www.kaggle.com/datasets/lsind18/who-immunization-coverage
https://www.ecdc.europa.eu/en/publications-data/reported-tb-cases-eueea-2008-2012

Both datasets were in CSV format, and we have chosen to use Pandas to Transform the data and load it into PostgreSQL. We have chosen a relational database (POSTGRESQL) because both datasets are structured data. The data has been loaded into 2 tables within PostgreSQL.

* Extract: 
We loaded the 2 CSV files into Pandas dataframes. 

* Transform:	

a.	From the first DataFrame (TB Rates), we dropped any unwanted columns ("National data", "Report type", "ASR", "Confirmed cases"). 

b.	We then renamed the columns to be more intuitive & compatible with uploading into PostgreSQL (i.e., ensure there are no spaces between column names). We did this by creating a dictionary with the old column names as the keys and the new column names as the values, and then passed this through the .rename() function.

c.	From the second DataFrame (BCG_Vaccine), we again dropped the columns that we did not need, but this time we did this by selecting the columns we wanted only, and this discarded the rest.

d. We renamed the 'Country/Region' column & dropped any duplicates


* Load:
* Within PostgreSQL, we created 2 tables ("reported_cases" & "immunisation"). We then used SQLAlchemy to create an engine so we could connect to the database & load the data into PostgreSQL. 


