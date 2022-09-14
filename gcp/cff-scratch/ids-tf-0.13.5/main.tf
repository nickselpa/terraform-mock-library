provider "google" {}

provider "google-beta" {}

module "ids_test_deploy" {
  source             = "git::https://github.globalpay.com/GCP-LZ-Shared-Code/gcp-network-intrusion-detection.git?ref=fix/svpc-deploy"
  project            = "tf-cff-deploy-gce"
  host_project       = "tf-cff-deploy-net"
  network            = "shared-vpc"
  subnetwork         = "ids"
  region             = "us-east4"
  vm_image_project   = var.vm_image_project
  vm_image_family    = var.vm_image_family
  mirroring_policies = var.mirroring_policies
}
