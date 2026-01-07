# CockroachDB YCSB Benchmark

This directory contains the CockroachDB (NewSQL) implementation used for
performance benchmarking with the Yahoo! Cloud Serving Benchmark (YCSB).

---

## Folder Structure

- `config/` – JDBC configuration for CockroachDB
- `scripts/` – YCSB load and run command scripts
- `results/` – Benchmark output files

---

## Benchmark Setup

- **Database**: CockroachDB v23.x  
- **Interface**: JDBC  
- **Benchmark Tool**: YCSB v0.17.0  
- **Workload**: YCSB Workload A  
- **Record Count**: 10,000  
- **Operation Count**: 10,000  

---

## Benchmark Commands

### Load Phase
```bash
./bin/ycsb.sh load jdbc \
-P workloads/workloada \
-P config/cockroach.properties \
-p recordcount=10000 \
-p operationcount=10000
```

### Run Phase
```bash
./bin/ycsb.sh run jdbc \
-P workloads/workloada \
-P config/cockroach.properties
```

---

## Results

### Load Phase Results
- **Throughput**: ~22,222 ops/sec  
- **Average insert latency**: ~12.7 µs  
- **Result file**: `results/load_result.txt`

### Run Phase Results
The YCSB run phase could not be executed successfully in the current
VM-based environment due to JDBC execution constraints. Therefore,
only load-phase performance metrics are reported for CockroachDB.

---

## Notes

- Results are obtained from actual YCSB execution.
- Performance may vary depending on hardware and deployment environment.
- The absence of run-phase results is documented to maintain experimental
  transparency and integrity.
