# TiDB YCSB Benchmark

This directory contains the TiDB (NewSQL / Distributed SQL) implementation used for 
performance benchmarking with the Yahoo! Cloud Serving Benchmark (YCSB).

---

## Folder Structure
- `config/`     – JDBC configuration for TiDB
- `scripts/`    – YCSB load & run command scripts
- `results/`   – Benchmark output files

---

## Benchmark Setup
- **Database**: TiDB v7.x (via TiDB server)
- **Interface**: JDBC (MySQL-compatible)
- **Benchmark Tool**: YCSB v0.18.0-SNAPSHOT
- **Workload**: YCSB Workload A (50% reads, 50% updates)
- **Record Count**: 10,000
- **Operation Count**: 10,000
- **Connection Port**: 4000 (default TiDB)

---

## Configuration
Your TiDB JDBC configuration file:
config/tidb.properties
```bash
db.driver=com.mysql.cj.jdbc.Driver
db.url=jdbc:mysql://127.0.0.1:4000/ycsb
db.user=root
db.passwd=
```

---

## Benchmark Commands

### Load Phase
```bash
./bin/ycsb.sh load jdbc \
  -P workloads/workloada \
  -P config/tidb.properties \
  -p recordcount=10000
```

### Run Phase
```bash
./bin/ycsb.sh run jdbc \
  -P workloads/workloada \
  -P config/tidb.properties \
  -p recordcount=10000 \
  -p operationcount=10000
```

---

## Results
### Load Phase Output
- **Runtime**: ~62067 ms
- **Throughput**: ~161.12 ops/sec
- **Insert latency**: average ~5.92 ms
- **Result file**: `TiDB/results/load_result.txt`
- **Total Inserts**: 10,000 (SUCCESS)

---

### Run Phase Output
- **Runtime**: ~40481 ms
- **Throughput**: ~247.03 ops/sec
- **Read latency**: average ~1.28 ms
- **Update latency**: average ~6.47 ms
- **Result file**: `TiDB/results/run_result.txt`

---

## Notes
- TiDB was successfully tested using the MySQL JDBC driver.
- Performance numbers may vary depending on VM resources and network conditions.
- The YCSB load and run commands completed successfully without errors.








