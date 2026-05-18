// Cartesian product example
// This query may trigger a Cartesian product warning because
// Neo4j independently matches nodes before combining results.

MATCH (p:Person {name: 'Alice'}), (a:Account {id: 101})
MERGE (p)-[:OWNS]->(a);


// Best-practice equivalent:
//
// MATCH (p:Person {name: 'Alice'})
// MATCH (a:Account {id: 101})
// MERGE (p)-[:OWNS]->(a);