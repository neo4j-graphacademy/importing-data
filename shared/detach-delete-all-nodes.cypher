MATCH (u:User) DETACH DELETE u;
MATCH (p:Person) DETACH DELETE p;
MATCH (m:Movie) DETACH DELETE m;
MATCH (n) DETACH DELETE n