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
  count=var.df_flex_count
  provider                = google-beta
  name                    = var.df_flex_names[count.index]
  container_spec_gcs_path = var.df_flex_gcs_path[count.index] 
  parameters = {
    inputSubscription = var.df_flex_input_subscription[count.index]
    outputTable=var.df_flex_output_table[count.index]
  }
}