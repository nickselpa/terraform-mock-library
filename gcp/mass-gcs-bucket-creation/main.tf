#===== ./main.tf
provider "google" {
  project = var.project_id
  region = var.region_id
}

resource "random_uuid" "random_bucket_id" {}

# TODO: add random labels for bucket creation
resource "google_storage_bucket" "test_bucket_pool" {
  for_each = {
    bucket1 = "${random_uuid.random_bucket_id.result}"
    bucket2 = "${random_uuid.random_bucket_id.result}"
    bucket3 = "${random_uuid.random_bucket_id.result}"
  }

  name = "${each.value}-${each.key}"
  force_destroy = true
  project = var.project_id
}