MATCH (m:Movie)
SET m.countries = split(coalesce(m.countries,""), "|"),
