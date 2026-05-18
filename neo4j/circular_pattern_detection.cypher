// Detect circular transfer patterns between accounts

MATCH path = (a:Account)-[:TRANSFERRED_TO*2..5]->(a)
RETURN path;