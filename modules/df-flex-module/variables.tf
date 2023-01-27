# variable "project" { }

variable "gs_bucket_flex_template" {
  type = string
}

variable "df_flex_names" {
  type = list(string)
}

variable "df_flex_gcs_path" {
  type = list(string)
}

variable "df_flex_input_subscription" {
  type = list(string)
}

variable "df_flex_output_table" {
  type = list(string)
}

variable "df_flex_count" {
  type = number
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