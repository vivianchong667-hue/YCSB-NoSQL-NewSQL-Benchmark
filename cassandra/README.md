\# Cassandra YCSB Benchmark



This folder contains the Cassandra implementation used for YCSB benchmarking.



\## Structure

\- schema/ : Cassandra table definitions

\- workload/ : YCSB workload configuration

\- scripts/ : Load and run scripts

\- results/ : Benchmark outputs



\## Notes

This repository focuses on benchmark configuration and code structure.

Execution environment may vary (Linux / WSL).



\## Results



Benchmark results were obtained using YCSB on Apache Cassandra.



\- Data loading results are stored in `results/load\_result.txt`

\- Workload execution results are stored in `results/run\_result.txt`



\### Summary

\- Load Throughput: ~498 ops/sec

\- Run Throughput: ~691 ops/sec

\- Average read latency: ~1.2 ms

\- Average update latency: ~1.1 ms



