# NoSQL vs NewSQL Performance Evaluation using YCSB

This project presents a performance evaluation of a NoSQL database and a
NewSQL database using the Yahoo! Cloud Serving Benchmark (YCSB).

---

## Databases Evaluated

- **Apache Cassandra** (NoSQL)
- **CockroachDB** (NewSQL)

---

## Benchmark Tool

- **Yahoo! Cloud Serving Benchmark (YCSB) v0.17.0**

---

## Experimental Environment

- **Execution Environment**: Ubuntu 22.04 (Virtual Machine)  
- **Java Version**: OpenJDK 8  

---

## Workload Configuration

- **YCSB Workload**: Workload A (50% read, 50% update)
- **Record Count**: 10,000
- **Operation Count**: 10,000

---

## Apache Cassandra

- **Version**: Apache Cassandra 4.1.3  
- **Interface**: Cassandra Query Language (CQL) via the cassandra-cql binding in YCSB  

The benchmarking process for Apache Cassandra consisted of two phases:
a load phase to populate the database with the initial dataset and a run
phase to evaluate performance under a mixed read and update workload.
Key performance metrics such as throughput and latency were collected
during execution.

---

## CockroachDB

- **Version**: CockroachDB v23.x  
- **Interface**: JDBC  

For CockroachDB, benchmarking was performed using the same YCSB workload
configuration to ensure a fair comparison with Apache Cassandra. Due to
environmental constraints, only load-phase performance metrics were
successfully obtained for CockroachDB. This limitation is documented to
maintain experimental transparency.

---

## Notes

- All benchmarks were conducted using identical workload parameters to
  ensure comparability.
- Performance results may vary depending on hardware resources and
  deployment environment.
- This repository focuses on benchmark configuration, execution, and
  result documentation.
