# NoSQL vs NewSQL Performance Evaluation using YCSB

This project presents a comparative performance evaluation of multiple
database systems using the Yahoo! Cloud Serving Benchmark (YCSB). The study
examines the performance characteristics of NoSQL and NewSQL databases
under identical workload conditions.

> **Disclaimer:** This project is conducted **for educational and academic purposes only**.

---

## Databases Evaluated

- **Apache Cassandra** (NoSQL – Wide-column store)
- **MongoDB Community Server 4.4** (NoSQL – Document-oriented)
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

The benchmarking process for Apache Cassandra consisted of two phases.
A load phase was used to populate the database with the initial dataset,
followed by a run phase to evaluate performance under a mixed read and
update workload. Performance metrics such as throughput and latency were
collected during execution.

---

## MongoDB

- **Version**: MongoDB Community Server 4.4  
- **Interface**: MongoDB YCSB binding  

MongoDB was evaluated using the same YCSB workload configuration to ensure
consistency and fairness across all databases. The benchmark consisted of
both a load phase and a run phase, measuring throughput and latency under
a mixed read and update workload.

---

## CockroachDB

- **Version**: CockroachDB v23.x  
- **Interface**: JDBC  

For CockroachDB, benchmarking was performed using the same YCSB workload
configuration to ensure a fair comparison with the NoSQL databases.
Due to environmental constraints in the virtualized setup, only load-phase
performance metrics were successfully obtained for CockroachDB. This
limitation is explicitly documented to maintain experimental transparency.

---

## Notes

- All benchmarks were conducted using identical workload parameters to
  ensure comparability across all database systems.
- Performance results may vary depending on hardware resources, system
  configuration, and deployment environment.
- This repository focuses on benchmark configuration, execution, and
  result documentation rather than production deployment.
- All materials in this repository are intended

  **for educational purposes only**.
