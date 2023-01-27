project="cft-test-375007"
region="us-central1"
zone="us-central1c"
gs_bucket_flex_template="gs://test-tf-flex/samples/dataflow/templates/streaming-beam-sql.json"
df_flex_count=2
df_flex_names=["df-job-1","df-job-2","df-job-3"]
df_flex_gcs_path=["gs://test-tf-flex/samples/dataflow/templates/streaming-beam-sql.json","gs://test-tf-flex/samples/dataflow/templates/streaming-beam-sql.json","gs://test-tf-flex/samples/dataflow/templates/streaming-beam-sql.json"]
df_flex_input_subscription=["sub-1-test","sub-1-test","sub-1-test"]
df_flex_output_table=["cft-test-375007:bq-test-dataset.bq-test-table","cft-test-375007:bq-test-dataset.bq-test-table","cft-test-375007:bq-test-dataset.bq-test-table"]

# df flex template creation variables 
create_language="JAVA"
create_template_path="gs://test-tf-flex/samples/dataflow/templates/streaming-beam-sql.json"
create_artifactory_jar_image="us-central1-docker.pkg.dev/cft-test-375007/test-tf-flex-repo/dataflow/streaming-beam-sql:latest"
create_metadata_file_path="./streaming_beam_sql/metadata.json"
create_jar_path="./streaming_beam_sql/target/streaming-beam-sql-1.0.jar"
create_java_main_class="org.apache.beam.samples.StreamingBeamSql"