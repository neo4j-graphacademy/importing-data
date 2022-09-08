LOAD CSV WITH HEADERS
FROM 'https://data.neo4j.com/importing/2-ratingData.csv'
AS row
RETURN
toInteger(row.movieId),
toInteger(row.userId),
row.name,
toInteger(row.rating),
toInteger(row.timestamp)
LIMIT 100