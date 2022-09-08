LOAD CSV WITH HEADERS
FROM 'https://data.neo4j.com/importing/2-movieData.csv'
AS row
//process only Movie rows
WITH row WHERE row.Entity = "Movie"
RETURN
toInteger(row.tmdbId),
toInteger(row.imdbId),
toFloat(row.imdbRating),
row.released,
row.title,
toInteger(row.year),
row.poster,
toInteger(row.runtime),
split(coalesce(row.countries,""), "|"),
toInteger(row.imdbVotes),
toInteger(row.revenue),
row.plot,
row.url,
toInteger(row.budget),
split(coalesce(row.languages,""), "|"),
split(coalesce(row.genres,""), "|")
LIMIT 10