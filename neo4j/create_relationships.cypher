// Create ownership relationships

MATCH (alice:Person {name: 'Alice'})
MATCH (a101:Account {id: 101})
MATCH (a104:Account {id: 104})
MERGE (alice)-[:OWNS]->(a101)
MERGE (alice)-[:OWNS]->(a104);

MATCH (bob:Person {name: 'Bob'})
MATCH (a102:Account {id: 102})
MERGE (bob)-[:OWNS]->(a102);

MATCH (charlie:Person {name: 'Charlie'})
MATCH (a103:Account {id: 103})
MERGE (charlie)-[:OWNS]->(a103);


// Create transfer relationships

MATCH (a101:Account {id: 101})
MATCH (a102:Account {id: 102})
MATCH (a103:Account {id: 103})
MERGE (a101)-[:TRANSFERRED_TO]->(a102)
MERGE (a102)-[:TRANSFERRED_TO]->(a103)
MERGE (a103)-[:TRANSFERRED_TO]->(a101);