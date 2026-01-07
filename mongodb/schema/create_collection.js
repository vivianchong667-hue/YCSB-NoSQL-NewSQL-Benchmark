use ycsb;

db.createCollection("usertable");

db.usertable.createIndex({ _id: 1 });
