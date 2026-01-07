./bin/ycsb.sh run jdbc \
  -P workloads/workloada \
  -p db.url=jdbc:mysql://127.0.0.1:4000/ycsb \
  -p db.user=root \
  -p db.passwd= \
  -p db.driver=com.mysql.cj.jdbc.Driver
