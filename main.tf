terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google-beta" {
  project = "cft-test-375007"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_dataflow_flex_template_job" "big_data_job" {
  provider                = google-beta
  name                    = "dataflow-flex-test-job-1"
  container_spec_gcs_path = "gs://test-tf-flex/samples/dataflow/templates/streaming-beam-sql.json"
  parameters = {
    inputSubscription = "sub-1-test",
    outputTable="cft-test-375007:bq-test-dataset.bq-test-table"
  }
}