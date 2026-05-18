// Extended traversal: find accounts receiving transfers from Alice's accounts

MATCH (p:Person {name: 'Alice'})-[o:OWNS]->(a:Account)
MATCH (a)-[t:TRANSFERRED_TO]->(target:Account)
RETURN p, o, a, t, target;