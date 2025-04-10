SELECT *
FROM customer_journey;

SELECT *
FROM engagement_data;

SELECT *
FROM customer_reviews;

--data cleaning
SELECT
ReviewID,
CustomerID,
ProductID,
Rating,
CASE	
	WHEN Rating <= 2 THEN 'Low'
	WHEN Rating = 3 THEN 'Average'
	ELSE 'Good'
END AS Rating_desc,
REPLACE(ReviewText, '  ', ' ') AS ReviewText
FROM customer_reviews;

--filtering the engagement_data table
SELECT 
EngagementID,
ContentID,
CampaignID,
ProductID,
UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType,
LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) AS Views,
RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) AS Clicks,
FORMAT(CONVERT(DATE, EngagementDate), 'dd.MM.yyyy') AS EngagementDate
FROM engagement_data
WHERE ContentType != 'Newsletter';


--final table for analysis
WITH DuplicateRecords AS (
    SELECT 
        JourneyID,  
        CustomerID, 
        ProductID,  
        VisitDate,  
        Stage,  
        Action,  
        Duration,  
       
        ROW_NUMBER() OVER (
            
            PARTITION BY CustomerID, ProductID, VisitDate, Stage, Action  
            ORDER BY JourneyID  
        ) AS row_num  
    FROM 
        customer_journey 
)

-- Select all records from the CTE where row_num > 1, which indicates duplicate entries
SELECT *
FROM DuplicateRecords
WHERE row_num > 1  
ORDER BY JourneyID;

    
SELECT 
    JourneyID,  
    CustomerID,  
    ProductID,  
    VisitDate,  
    Stage,  
    Action,  
    COALESCE(Duration, avg_duration) AS Duration  
FROM 
    (
        SELECT 
            JourneyID,  
            CustomerID,  
            ProductID,  
            VisitDate,  
            UPPER(Stage) AS Stage,  
            Action,  
            Duration,  
            AVG(Duration) OVER (PARTITION BY VisitDate) AS avg_duration,  
            ROW_NUMBER() OVER (
                PARTITION BY CustomerID, ProductID, VisitDate, UPPER(Stage), Action  
                ORDER BY JourneyID  
            ) AS row_num  
        FROM 
            customer_journey  
    ) AS subquery  
WHERE 
    row_num = 1; 