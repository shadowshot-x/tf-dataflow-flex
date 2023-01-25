variable "project" { }

variable "gs_bucket_flex_template" { }

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
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