# terraform {
#   required_providers {
#     google = {
#       source = "hashicorp/google"
#     }
#   }
# }

locals {
  java_command = "gcloud dataflow flex-template build ${var.create_template_path}       --image-gcr-path \"${var.create_artifactory_jar_image}\"       --sdk-language \"JAVA\"       --flex-template-base-image JAVA11       --metadata-file \"${var.create_metadata_file_path}\"  --jar \"${var.create_jar_path}\"       --env FLEX_TEMPLATE_JAVA_MAIN_CLASS=\"${var.create_java_main_class}\""
  python_command = "gcloud dataflow flex-template build ${var.create_template_path} --image \"${var.create_artifactory_jar_image}\" --sdk-language \"PYTHON\" --metadata-file \"${var.create_metadata_file_path}\""
}

# provider "google-beta" {
#   project = var.project
#   region  = var.region
#   zone    = var.zone
# }

// used to run a CLI command. Will work on systems with gcloud installed
resource "null_resource" "flex_template" {

 provisioner "local-exec" {
    command = "${var.create_language == "JAVA" ? local.java_command : local.python_command }"
    //command = "gcloud dataflow flex-template build ${var.create_template_path}       --image-gcr-path \"${var.create_artifactory_jar_image}\"       --sdk-language \"JAVA\"       --flex-template-base-image JAVA11       --metadata-file \"${var.create_metadata_file_path}\"  --jar \"${var.create_jar_path}\"       --env FLEX_TEMPLATE_JAVA_MAIN_CLASS=\"${var.create_java_main_class}\""
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