locals {
  java_command = "gcloud dataflow flex-template build ${var.create_template_path}       --image-gcr-path \"${var.create_artifactory_jar_image}\"       --sdk-language \"JAVA\"       --flex-template-base-image JAVA11       --metadata-file \"${var.create_metadata_file_path}\"  --jar \"${var.create_jar_path}\"       --env FLEX_TEMPLATE_JAVA_MAIN_CLASS=\"${var.create_java_main_class}\""
  python_command = "gcloud dataflow flex-template build ${var.create_template_path} --image \"${var.create_artifactory_jar_image}\" --sdk-language \"PYTHON\" --metadata-file \"${var.create_metadata_file_path}\""
}


resource "null_resource" "flex_template" {

 provisioner "local-exec" {
    command = "${var.create_language == "JAVA" ? local.java_command : local.python_command }"
  }
}

resource "google_dataflow_flex_template_job" "big_data_job" {
 for_each = var.df_job_details

 provider = google-beta
 name = each.value.df_flex_name
 container_spec_gcs_path = each.value.df_flex_gcs_path
 parameters = each.value.parameters
}