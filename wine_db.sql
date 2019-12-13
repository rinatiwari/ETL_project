CREATE TABLE wine_reviews (
	id INT PRIMARY KEY,
	Country TEXT,
	Description VARCHAR,
	Designation VARCHAR,
	Points INT,
	Price INT,
	Province TEXT,
	Region_1 TEXT,
	Region_2 TEXT,
	Variety TEXT,
	Winery VARCHAR
)

CREATE TABLE wine_reviews_v2 (
	id INT PRIMARY KEY,
	Country TEXT,
	Description VARCHAR,
	Designation VARCHAR,
	Points INT,
	Price INT,
	Province TEXT,
	Region_1 TEXT,
	Region_2 TEXT,
	Taster_Name TEXT,
	Taster_Twitter_Handle VARCHAR,
	Title VARCHAR,
	Variety TEXT,
	Winery VARCHAR
	
)

ALTER TABLE wine_reviews
DROP COLUMN description

ALTER TABLE wine_reviews
DROP COLUMN designation

ALTER TABLE wine_reviews_v2
DROP COLUMN description

ALTER TABLE wine_reviews_v2
DROP COLUMN designation

ALTER TABLE wine_reviews_v2
DROP COLUMN taster_name

ALTER TABLE wine_reviews_v2
DROP COLUMN taster_twitter_handle

SELECT wine_reviews_v2.title AS Title,
	COALESCE(wine_reviews_v2.country, 'Country Unknown') AS Country,
	COALESCE(wine_reviews_v2.province, 'Province Unknown') AS Province,
	COALESCE(CAST(wine_reviews_v2.points AS VARCHAR), 'No Score from Wine Spectator') AS Points,
	COALESCE(CAST(wine_reviews_v2.price AS VARCHAR), 'Price Unknown') AS Price,
	COALESCE(wine_reviews_v2.region_1, 'Primary Region Unknown') AS "Primary Region",
	COALESCE(wine_reviews_v2.region_2, 'Secondary Region Unknown') AS "Secondary Region",
	COALESCE(wine_reviews_v2.variety, 'Varietal Unknown') AS Varietal,
	COALESCE(wine_reviews_v2.winery, 'Winery Unknown') AS Winery

FROM wine_reviews_v2
	
	INNER JOIN wine_reviews ON wine_reviews.id = wine_reviews_v2.id

ORDER BY wine_reviews_v2.points DESC


SELECT * 
FROM wine_reviews_v2

WHERE wine_reviews_v2.country IN ('US', 'France', 'Italy')

ORDER BY wine_reviews_v2.country, wine_reviews_v2.points DESC
