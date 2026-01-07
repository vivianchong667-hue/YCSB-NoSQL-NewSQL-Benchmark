./bin/ycsb.sh load jdbc \
  -P workloads/workloada \
  -P config/tidb.properties \
  -p recordcount=10000 \
  -p operationcount=10000
