#!/bin/bash

./bin/ycsb.sh run mongodb \
-P mongodb/workload/workload_a \
-p mongodb.url=mongodb://127.0.0.1:27017/ycsb
