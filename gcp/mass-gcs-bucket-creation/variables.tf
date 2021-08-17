#===== ./gcp/mass-gcs-bucket-creation/variables.tf
variable "project_id" {
  description = "Target project ID to launch buckets"
  type = string
}

variable "region_id" {
  description = "Target region to launch buckets"
  type = string
}

variable "bucket_qty" {
  description = "Quantity of buckets to launch per bucket config type for mocking"
  type = number
}
