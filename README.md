# Popular_wine_reviews (ETL-project)
Extracting, Transforming, and Loading data:

Extraction:
Data source: Keggle.data
Data name: wine_reviews
Data types: csv and json

Transformation:
•	Created dataframes using pandas from csv file
•	Cleaning and extraction of data is done for US, France and Italy and created 3 dataframes
•	Cleaned dataframes were connected to the protgres using python
•	Json file is transformed to dataframe using pandas to check the content of data
•	Json file is transformed to NoSQL(MongoDB) creating Flask in python

Loading:
•	Dataframe tables created from csv file is uploaded in pgAdmin as database
•	Json file is uploaded to MongoDB as database file
•	Information from JSON loaded to HTML

