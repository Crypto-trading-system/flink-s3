FROM flink:2.1-java21

RUN mkdir -p /opt/flink/plugins/s3

RUN curl -L \
  https://repo.maven.apache.org/maven2/org/apache/flink/flink-s3-fs/2.1.0/flink-s3-fs-2.1.0.jar \
  -o /opt/flink/plugins/s3/flink-s3-fs-2.1.0.jar