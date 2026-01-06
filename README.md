# NoSQL vs NewSQL Performance Evaluation (YCSB)

## Databases Implemented
- Apache Cassandra (NoSQL)
- CockroachDB (NewSQL)

## Benchmark Tool
- Yahoo! Cloud Serving Benchmark (YCSB 0.17.0)

## Environment
- OS: Windows 10 (host), Ubuntu 22.04 (VM)
- Java: OpenJDK 8
- Workload: YCSB Workload A
- Record Count: 10,000
- Operation Count: 10,000

## Cassandra
- Version: Apache Cassandra 4.1.3
- Interface: CQL
- Benchmark Commands:

```bash
./bin/ycsb.sh load cassandra-cql \
-P workloads/workloada \
-p hosts=127.0.0.1 \
-p cassandra.keyspace=ycsb \
-p recordcount=10000 \
-p operationcount=10000

./bin/ycsb.sh run cassandra-cql \
-P workloads/workloada \
-p hosts=127.0.0.1 \
-p cassandra.keyspace=ycsb


Then CockroachDB:

```md
## CockroachDB
- Version: v23.x
- Interface: JDBC
- Benchmark Commands:

```bash
./bin/ycsb.sh load jdbc \
-P workloads/workloada \
-P cockroach.properties \
-p recordcount=10000 \
-p operationcount=10000

./bin/ycsb.sh run jdbc \
-P workloads/workloada \
-P cockroach.properties

