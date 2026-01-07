\# MongoDB YCSB Benchmark



This directory contains the MongoDB (NoSQL) implementation used for

performance benchmarking with the Yahoo! Cloud Serving Benchmark (YCSB)

as part of a NoSQL vs NewSQL performance evaluation study.



---



\## Folder Structure



\- `schema/` – MongoDB collection and index definitions  

\- `workload/` – YCSB workload configuration files  

\- `scripts/` – YCSB load and run shell scripts (Linux)  

\- `results/` – Benchmark output files  



---



\## Benchmark Setup



\- \*\*Database\*\*: MongoDB v6.x  

\- \*\*Database Type\*\*: NoSQL (Document-Oriented)  

\- \*\*Interface\*\*: MongoDB YCSB binding  

\- \*\*Benchmark Tool\*\*: YCSB v0.17.0  

\- \*\*Workload\*\*: YCSB Workload A (50% read, 50% update)  

\- \*\*Record Count\*\*: 1,000  

\- \*\*Operation Count\*\*: 1,000  

\- \*\*Execution Environment\*\*: Ubuntu 22.04 (Linux)  



---



\## Benchmark Process



The benchmarking process followed the standard YCSB methodology.  

First, a load phase was executed to insert the initial dataset into

MongoDB. This was followed by a run phase that evaluated database

performance under a mixed workload consisting of read and update

operations.



Key performance metrics collected include throughput and operation

latency.



---



\## Results



\### Load Phase Results



\- \*\*Throughput\*\*: ~561 ops/sec  

\- \*\*Average insert latency\*\*: ~0.68 ms  

\- \*\*Total operations\*\*: 1,000 INSERT  



Detailed results are available in:

\- `results/load\_result.txt`



---



\### Run Phase Results



\- \*\*Throughput\*\*: ~519 ops/sec  

\- \*\*Average read latency\*\*: ~1.02 ms  

\- \*\*Average update latency\*\*: ~0.83 ms  

\- \*\*Total operations\*\*: 505 READ, 495 UPDATE  



Detailed results are available in:

\- `results/run\_result.txt`



---



\## Notes



\- MongoDB benchmarks were executed using YCSB with identical workload

&nbsp; parameters to those used for Apache Cassandra and CockroachDB to

&nbsp; ensure fair comparison.

\- Execution is assumed to be performed on Ubuntu 22.04 for consistency

&nbsp; across all evaluated databases.

\- Performance results may vary depending on system resources and

&nbsp; deployment configuration.

\- This repository focuses on benchmark configuration, execution, and

&nbsp; result documentation rather than deployment automation.



