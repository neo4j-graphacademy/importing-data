LOAD CSV WITH HEADERS
FROM 'https://data.neo4j.com/importing/2-movieData.csv'
AS row
WITH row WHERE row.Entity = "Person"
RETURN
toInteger(row.tmdbId),
toInteger(row.imdbId),
row.bornIn,
row.name,
row.bio,
row.poster,
row.url,
CASE row.born WHEN "" THEN null ELSE datetime(row.born) END,
CASE row.died WHEN "" THEN null ELSE datetime(row.died) END
LIMIT 10