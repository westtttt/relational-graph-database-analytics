// Rank indirect account connections from Alice's accounts

MATCH (p:Person {name: 'Alice'})-[:OWNS]->(a:Account)
      -[:TRANSFERRED_TO]->(middle:Account)
      -[:TRANSFERRED_TO]->(target:Account)
WHERE a <> target
RETURN target.id AS Account,
       count(*) AS Strength
ORDER BY Strength DESC;