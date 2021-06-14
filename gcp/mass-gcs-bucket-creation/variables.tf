#===== ./variables.tf
variable "project_id" {
  description = "Target project ID to launch buckets"
  type = string
}

variable "region_id" {
  description = "Target region to launch buckets"
}