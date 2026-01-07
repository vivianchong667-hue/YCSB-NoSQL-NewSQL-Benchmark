# MongoDB YCSB Benchmark

This directory contains the MongoDB (NoSQL) implementation used for
performance benchmarking with the Yahoo! Cloud Serving Benchmark (YCSB)
as part of a NoSQL vs NewSQL performance evaluation study.

---

## Folder Structure

### schema/
MongoDB collection and index definitions.

### workload/
YCSB workload configuration files.

### scripts/
YCSB load and run shell scripts (Linux).

### results/
Benchmark output files.

---

## Benchmark Setup

- Database: MongoDB Community Server 4.4 
- Database Type: NoSQL (Document-Oriented)  
- Interface: MongoDB YCSB binding  
- Benchmark Tool: YCSB v0.17.0  
- Workload: YCSB Workload A (50% read, 50% update)  
- Record Count: 1,000  
- Operation Count: 1,000  
- Execution Environment: Ubuntu 22.04 (Linux)  

---

## Benchmark Process

The benchmarking process followed the standard YCSB methodology.
A load phase was first executed to insert the initial dataset into MongoDB.
This was followed by a run phase to evaluate performance under a mixed
read and update workload.

Key performance metrics such as throughput and operation latency were
collected during execution.

---

## Results

### Load Phase Results

- Throughput: approximately 561 operations per second  
- Average insert latency: approximately 0.68 milliseconds  
- Total operations: 1,000 insert operations  

Detailed results are stored in:
results/load_result.txt

---

### Run Phase Results

- Throughput: approximately 519 operations per second  
- Average read latency: approximately 1.02 milliseconds  
- Average update latency: approximately 0.83 milliseconds  
- Total operations: 505 read operations and 495 update operations  

Detailed results are stored in:
results/run_result.txt

---

## Notes

- MongoDB benchmarks were executed using identical workload parameters
  to those applied to Apache Cassandra and CockroachDB to ensure a fair
  comparison.
- Execution is assumed to be performed on Ubuntu 22.04 for consistency
  across all evaluated databases.
- Performance results may vary depending on system resources and
  deployment configuration.
