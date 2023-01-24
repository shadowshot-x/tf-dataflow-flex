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

resource "google_dataflow_flex_template_job" "big_data_job" {
  provider                = google-beta
  name                    = "dataflow-flex-test-job-1"
  container_spec_gcs_path = var.gs_bucket_flex_template 
  parameters = {
    inputSubscription = "sub-1-test",
    outputTable="cft-test-375007:bq-test-dataset.bq-test-table"
  }
}