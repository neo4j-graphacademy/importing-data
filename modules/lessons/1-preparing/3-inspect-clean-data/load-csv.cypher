LOAD CSV WITH HEADERS
FROM 'https://data.neo4j.com/importing/ratings.csv'
AS row
RETURN count(row)