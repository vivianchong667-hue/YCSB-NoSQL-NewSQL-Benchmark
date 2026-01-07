# NoSQL vs NewSQL Performance Evaluation using YCSB

## Databases Evaluated
- **Apache Cassandra** (NoSQL)
- **CockroachDB** (NewSQL)

## Benchmark Tool
- **Yahoo! Cloud Serving Benchmark (YCSB) v0.17.0**

## Experimental Environment
- **Host OS**: Windows 10  
- **Execution Environment**: Ubuntu 22.04 (Virtual Machine)  
- **Java Version**: OpenJDK 8  

## Workload Configuration
- **YCSB Workload**: Workload A (50% read, 50% update)
- **Record Count**: 10,000
- **Operation Count**: 10,000

---

## Apache Cassandra

- **Version**: Apache Cassandra 4.1.3  
- **Interface**: CQL (cassandra-cql binding in YCSB)  

### Benchmark Commands

**Load Phase**
```bash
./bin/ycsb.sh load cassandra-cql \
-P workloads/workloada \
-p hosts=127.0.0.1 \
-p cassandra.keyspace=ycsb \
-p recordcount=10000 \
-p operationcount=10000

**Run Phase**
```bash
./bin/ycsb.sh run cassandra-cql \
-P workloads/workloada \
-p hosts=127.0.0.1 \
-p cassandra.keyspace=ycsb

---

## More to come
