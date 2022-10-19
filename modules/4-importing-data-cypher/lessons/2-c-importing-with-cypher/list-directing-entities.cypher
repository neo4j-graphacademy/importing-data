LOAD CSV WITH HEADERS
FROM 'https://data.neo4j.com/importing/2-movieData.csv'
AS row
WITH row WHERE row.Entity = "Join" AND row.Work = "Directing"
RETURN
toInteger(row.tmdbId),
toInteger(row.movieId),
row.role
LIMIT 10