// Two-step traversal: identify indirect account connections

MATCH (p:Person {name: 'Alice'})-[d:OWNS]->(a:Account)
      -[e:TRANSFERRED_TO]->(b:Account)
      -[f:TRANSFERRED_TO]->(c:Account)
RETURN p, a, b, c, d, e, f;