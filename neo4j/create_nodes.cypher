CREATE (:Person {name: 'Alice'});
CREATE (:Person {name: 'Bob'});
CREATE (:Person {name: 'Charlie'});

CREATE (:Account {id: 101});
CREATE (:Account {id: 102});
CREATE (:Account {id: 103});
CREATE (:Account {id: 104}); // extra account for Alice

MERGE (:Person {name: 'Alice'});