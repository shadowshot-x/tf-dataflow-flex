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
  create_artifactory_jar_image=var.create_artifactory_jar_image
  create_template_path=var.create_template_path
  gs_bucket_flex_template=var.gs_bucket_flex_template
  create_metadata_file_path=var.create_metadata_file_path
  create_jar_path=var.create_jar_path
  create_java_main_class=var.create_java_main_class
  create_language=var.create_language
  df_job_details=var.df_job_details
}