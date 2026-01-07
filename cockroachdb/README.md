\# CockroachDB YCSB Benchmark



This directory contains the CockroachDB (NewSQL) implementation

used for YCSB benchmarking.



\## Folder Structure



\- `config/`  

&nbsp; JDBC configuration for CockroachDB.



\- `scripts/`  

&nbsp; YCSB load and run command scripts.



\- `results/`  

&nbsp; Benchmark output files.



\## Benchmark Setup



\- Database: CockroachDB v23.x

\- Interface: JDBC

\- Workload: YCSB Workload A

\- Record Count: 10,000

\- Operation Count: 10,000



\## Results



\### Load Phase

\- Throughput: ~22,222 ops/sec

\- Average insert latency: ~12.7 µs

\- Result file: `results/load\_result.txt`



\### Run Phase

The YCSB run phase could not be executed successfully in the current

environment due to JDBC execution constraints in the VM-based setup.

As a result, only load-phase performance metrics are reported for

CockroachDB.



\## Notes



\- Results are obtained from actual YCSB execution.

\- Performance may vary depending on deployment environment.

\- The absence of run-phase results is documented to ensure transparency

&nbsp; and experimental integrity.



