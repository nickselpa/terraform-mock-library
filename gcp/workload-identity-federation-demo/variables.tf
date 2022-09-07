variable "aws_account_id" {
  type = string
  description = "AWS account ID to configure Workload Identity Federation"
}

variable "google_project_id" {
  type = string
  description = "Google project id"
}

variable "google_region" {
  type = string
  description = "Google region id"
  default = "us-east4"
}