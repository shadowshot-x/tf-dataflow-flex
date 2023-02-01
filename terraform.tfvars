project="cft-test-375007"
region="us-central1"
zone="us-central1c"
gs_bucket_flex_template="gs://test-tf-flex/samples/dataflow/templates/streaming-beam-sql.json"

# df flex template creation variables 
create_language="JAVA"
create_template_path="gs://test-tf-flex/samples/dataflow/templates/streaming-beam-sql.json"
create_artifactory_jar_image="us-central1-docker.pkg.dev/cft-test-375007/test-tf-flex-repo/dataflow/streaming-beam-sql:latest"
create_metadata_file_path="./streaming_beam_sql/metadata.json"
create_jar_path="./streaming_beam_sql/target/streaming-beam-sql-1.0.jar"
create_java_main_class="org.apache.beam.samples.StreamingBeamSql"

df_job_details={
    job1={
        df_flex_name="df-job-1"
        df_flex_gcs_path="gs://test-tf-flex/samples/dataflow/templates/streaming-beam-sql.json"
        parameters={
            inputSubscription = "sub-1-test"
            outputTable="cft-test-375007:bq-test-dataset.bq-test-table"
        }
    },
    job2={
        df_flex_name="df-job-2"
        df_flex_gcs_path="gs://test-tf-flex/samples/dataflow/templates/streaming-beam-sql.json"
        parameters={
            inputSubscription = "sub-1-test"
            outputTable="cft-test-375007:bq-test-dataset.bq-test-table"
        }
    }
}

edit_template_file_local_paths={
    # obj1={
    #     obj_name="samples/dataflow/templates/streaming-beam-sql.json"
    #     bucket_name="test-tf-flex"
    #     local_path="/Users/sharmaujjwal/Desktop/CFT/tf-dataflow-flex/assets/streaming-beam-sql.json"
    # }
}