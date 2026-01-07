# TiDB YCSB Benchmark
This directory contains the TiDB (NewSQL / Distributed SQL) implementation used for performance benchmarking with the Yahoo! Cloud Serving Benchmark (YCSB).

---

## Folder Structure
config/     – JDBC configuration for TiDB
scripts/    – YCSB load & run command scripts
results/    – Benchmark output files

---

## Benchmark Setup
Database: TiDB v7.x (via TiDB server)
Interface: JDBC (MySQL-compatible)
Benchmark Tool: YCSB v0.18.0-SNAPSHOT
Workload: YCSB Workload A (50% reads, 50% updates)
Record Count: 1,000
Operation Count: 1,000
Connection Port: 4000 (default TiDB)

---

## Configuration
Your TiDB JDBC configuration file:
config/tidb.properties
db.driver=com.mysql.cj.jdbc.Driver
db.url=jdbc:mysql://127.0.0.1:4000/ycsb
db.user=root
db.passwd=

---

## Benchmark Commands
Load Phase
./bin/ycsb.sh load jdbc \
  -P workloads/workloada \
  -P config/tidb.properties \
  -p recordcount=1000
Run Phase
./bin/ycsb.sh run jdbc \
  -P workloads/workloada \
  -P config/tidb.properties \
  -p operationcount=1000

---

## Results
Load Phase Output
Runtime: ~8599 ms
Throughput: ~116 ops/sec
Insert latency: average ~7.36 ms
Result file stored at:
results/tidb_load_result.txt

---

## Run Phase Output
Runtime: ~10364 ms
Throughput: ~96 ops/sec
Read latency: average ~2.72 ms
Update latency: average ~8.87 ms
Result file stored at:
results/tidb_run_result.txt

---

## Notes
TiDB was successfully tested using the MySQL JDBC driver.
Performance numbers may vary depending on VM resources and network conditions.
The YCSB load and run commands completed successfully without errors.
