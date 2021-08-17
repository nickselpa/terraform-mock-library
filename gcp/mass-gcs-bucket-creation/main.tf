#===== .gcp/mass-gcs-bucket-creation/main.tf
provider "google" {
  project = var.project_id
  region = var.region_id
}

resource "random_uuid" "random_bucket_id" {}

# TODO: add random labels for bucket creation
resource "google_storage_bucket" "uniform_access_control" {
  count = var.bucket_qty

  name = "uniform-${random_uuid.random_bucket_id.result}-${count.index}"
  force_destroy = true
  project = var.project_id
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "fine_grained_access_control" {
  count = var.bucket_qty

  name = "finegrained-${random_uuid.random_bucket_id.result}-${count.index}"
  force_destroy = true
  project = var.project_id
}