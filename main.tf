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

module "check" {
  source = "./modules/df-flex-module"
  df_flex_count=var.df_flex_count
  create_artifactory_jar_image=var.create_artifactory_jar_image
  create_template_path=var.create_template_path
  df_flex_gcs_path=var.df_flex_gcs_path
  gs_bucket_flex_template=var.gs_bucket_flex_template
  create_metadata_file_path=var.create_metadata_file_path
  df_flex_input_subscription=var.df_flex_input_subscription
  create_jar_path=var.create_jar_path
  create_java_main_class=var.create_java_main_class
  df_flex_output_table=var.df_flex_output_table
  df_flex_names=var.df_flex_names
  create_language=var.create_language
}