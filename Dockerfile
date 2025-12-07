FROM flink:2.1-java21

# Create plugin directory
RUN mkdir -p /opt/flink/plugins/s3

# Download the S3 presto plugin (recommended)
RUN curl -L -o /opt/flink/plugins/s3/flink-s3-fs-presto.jar \
    https://repo.maven.apache.org/maven2/org/apache/flink/flink-s3-fs-presto/1.18.0/flink-s3-fs-presto-1.18.0.jar

# OR: use the Hadoop plugin instead (option)
# RUN curl -L -o /opt/flink/plugins/s3/flink-s3-fs-hadoop.jar \
#     https://repo.maven.apache.org/maven2/org/apache/flink/flink-s3-fs-hadoop/1.18.0/flink-s3-fs-hadoop-1.18.0.jar
