provider "google" {
  project = var.gcp_target_project
  region = var.gcp_target_region
}

module "k8s-controllers" {
  source = "./k8s-controllers"
  gcp_target_project = var.gcp_target_project
  gcp_target_region = var.gcp_target_region
  gcp_target_zone = var.gcp_target_zone
}

module "k8s-workers" {
  source = "./k8s-workers"
  gcp_target_project = var.gcp_target_project
  gcp_target_region = var.gcp_target_region
  gcp_target_zone = var.gcp_target_zone
}