terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google-beta" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "null_resource" "flex_template" {

 provisioner "local-exec" {
    
    command = "gcloud dataflow flex-template build gs://test-tf-flex/samples/dataflow/templates/streaming-beam-sql.json       --image-gcr-path \"us-central1-docker.pkg.dev/cft-test-375007/test-tf-flex-repo/dataflow/streaming-beam-sql:latest\"       --sdk-language \"JAVA\"       --flex-template-base-image JAVA11       --metadata-file \"./streaming_beam_sql/metadata.json\"       --jar \"./streaming_beam_sql/target/streaming-beam-sql-1.0.jar\"       --env FLEX_TEMPLATE_JAVA_MAIN_CLASS=\"org.apache.beam.samples.StreamingBeamSql\""
  }
}

resource "google_dataflow_flex_template_job" "big_data_job" {
  count=var.df_flex_count
  provider                = google-beta
  name                    = var.df_flex_names[count.index]
  container_spec_gcs_path = var.df_flex_gcs_path[count.index] 
  parameters = {
    inputSubscription = var.df_flex_input_subscription[count.index]
    outputTable=var.df_flex_output_table[count.index]
  }
}