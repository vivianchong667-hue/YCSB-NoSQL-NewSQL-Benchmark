#!/bin/bash

./bin/ycsb.sh load mongodb \
-P mongodb/workload/workload_a \
-p mongodb.url=mongodb://127.0.0.1:27017/ycsb \
-p recordcount=10000 \
-p operationcount=10000
