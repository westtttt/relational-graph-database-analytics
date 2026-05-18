// One-step traversal: find accounts owned by Alice

MATCH (p:Person {name: 'Alice'})-[o:OWNS]->(a:Account)
RETURN p, o, a;