# variable "project" { }

variable "gs_bucket_flex_template" {
  type = string
}

variable "create_language" {
  default = "JAVA"
  type = string
}

variable "create_template_path" {
  type = string
}

variable "create_artifactory_jar_image" {
  type = string
}

variable "create_metadata_file_path" {
  type = string
}

variable "create_jar_path" {
  type = string
}

variable "create_java_main_class" {
  type = string
}

variable "df_job_details" {
    type = map
}