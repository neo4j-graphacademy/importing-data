LOAD CSV WITH HEADERS
FROM 'https://data.neo4j.com/importing/2-movieData.csv'
AS row
WITH row WHERE row.Entity = "Person"
RETURN
row.tmdbId,
row.imdbId,
row.bornIn,
row.name,
row.bio,
row.poster,
row.url,
CASE row.born WHEN "" THEN null ELSE date(row.born) END,
CASE row.died WHEN "" THEN null ELSE date(row.died) END
LIMIT 10