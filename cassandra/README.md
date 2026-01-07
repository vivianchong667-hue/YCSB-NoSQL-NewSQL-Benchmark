# Cassandra YCSB Benchmark

This directory contains the Apache Cassandra implementation used for
YCSB-based benchmarking as part of a NoSQL vs NewSQL performance study.

## Folder Structure

- `schema/`  
  Cassandra keyspace and table definitions.

- `workload/`  
  YCSB workload configuration files.

- `scripts/`  
  Scripts used to load data and execute YCSB workloads.

- `results/`  
  Benchmark output files generated from YCSB execution.

## Benchmark Results

The following benchmark phases were executed using YCSB:

### Load Phase
- Throughput: ~498 ops/sec  
- Operations: INSERT  
- Result file: `results/load_result.txt`

### Run Phase
- Throughput: ~691 ops/sec  
- Operations: READ and UPDATE  
- Average read latency: ~1.2 ms  
- Average update latency: ~1.1 ms  
- Result file: `results/run_result.txt`

## Notes

- Results are obtained from an actual YCSB execution.
- Performance values may vary depending on hardware and deployment environment.
- Execution was performed in a Linux-compatible environment (e.g., Linux / WSL).

This repository focuses on benchmark configuration, reproducibility,
and result documentation rather than deployment automation.
