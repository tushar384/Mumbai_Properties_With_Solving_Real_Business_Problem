select * from estate

-- Query 1: Top 10 Properties by Value

-- Use Case: Luxury property investors or marketing campaigns.
-- Helps identify the most premium properties in your dataset, 
-- focusing on targeting high-value clients or investments.

SELECT SPID, PROPERTY_TYPE, CITY, VALUE_IN_CR, SOCIETY_NAME, LOCALITY_NAME
FROM estate
ORDER BY VALUE_IN_CR DESC
LIMIT 10;

-- Query 2: Average Price Per Square Foot by City
-- Use Case: Market analysis for pricing strategies.
-- Analyzes pricing trends in different cities to help prioritize investment locations.

SELECT 
	CITY,
	AVG(PRICE_SQFT) AS AVG_PRICE_PER_SQFT
FROM ESTATE
GROUP BY CITY
ORDER BY AVG(PRICE_SQFT)DESC
LIMIT 10

-- Query 3: Count of Properties by Furnishing Type
-- Use Case: Inventory planning and understanding customer preferences.
-- Evaluates demand for fully-furnished, semi-furnished, or unfurnished homes.
SELECT 
	FURNISH,
	COUNT(SPID) AS PROPERTITY_COUNT
FROM ESTATE
GROUP BY FURNISH
ORDER BY COUNT(SPID)DESC

-- Query 4: Properties with More Than 4 Bedrooms
-- Use Case: Client-specific property recommendations.
-- Finds larger homes catering to family or group housing needs.
SELECT
	SPID,
	BEDROOM_NUM,
	PROPERTY_TYPE, 
	CITY, 
	BEDROOM_NUM, 
	VALUE_IN_CR
FROM ESTATE
WHERE BEDROOM_NUM >4
ORDER BY VALUE_IN_CR DESC

-- Query 5: Total Number of Properties in Each Locality
-- Use Case: Targeting popular areas for new projects or marketing.
-- Highlights areas with high property concentrations for focused campaigns.
SELECT
	LOCALITY_NAME,
	COUNT(*) AS TOTAL_PROPERTIES
FROM ESTATE
GROUP BY LOCALITY_NAME
ORDER BY COUNT(*)DESC


-- Query 6: Properties by Age
-- Use Case: Renovation planning and pricing adjustments.
-- Groups properties by their age to analyze trends and average value.
SELECT
	AGE,
	COUNT(*) AS TOTAL_PROPETIES,
	AVG(VALUE_IN_CR) AS AVG_VALUE
FROM ESTATE
GROUP BY AGE

-- Query 7: Highest-Priced Property in Each City
-- Use Case: Identifying high-value opportunities or trends.
-- Lists the most expensive property in every city.

SELECT 
	CITY,
	MAX(VALUE_IN_CR) AS MAX_VALUE
FROM ESTATE
GROUP BY CITY
ORDER BY MAX(VALUE_IN_CR)DESC


-- Query 8: Properties by Class
-- Use Case: Focus on specific property types for development.
-- Analyzes distribution across different property categories (Class A, etc.).
SELECT 
	CLASS, 
	COUNT(*) AS total_properties
FROM ESTATE
GROUP BY CLASS
ORDER BY total_properties DESC;

-- Query 9: Properties with Specific Area Range
-- Use Case: Custom property filtering for clients.
-- Filters properties where the area is between 1000 and 2000 square feet.

SELECT
	SPID,
	PROPERTY_TYPE,
	CITY,
	AREA,
	VALUE_IN_CR
FROM ESTATE
WHERE AREA BETWEEN 1000 AND 2000
ORDER BY VALUE_IN_CR DESC

-- Query 10: Total Properties Managed by Each Dealer
-- Use Case: Collaboration or competition analysis among dealers.
-- Determines the total number of properties handled by each dealer.

SELECT 
	CLASS AS DEALER,
	COUNT(*) AS TOTAL_PROPERTIES
FROM ESTATE
GROUP BY CLASS
ORDER BY COUNT(*)DESC


