// Variable-length traversal: find transfer paths from Alice's accounts
// between one and three transfer steps

MATCH path = (p:Person {name: 'Alice'})-[:OWNS]->(a:Account)
             -[:TRANSFERRED_TO*1..3]->(:Account)
RETURN path;