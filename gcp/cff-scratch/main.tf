provider "google" {}

provider "google-beta" {}

module "cff_svpc_example" {
  source             = "git::https://github.com/GoogleCloudPlatform/cloud-foundation-fabric.git//examples/networking/shared-vpc-gke?ref=v16.0.0"
  billing_account_id = var.billing_account_id
  region             = "us-east4"
  prefix             = "tf-cff-deploy"
  root_node          = "folders/401044692076"
  cluster_create     = false
  owners_gce = [
    "user:nick@grc.live"
  ]
  owners_host = [
    "user:nick@grc.live"
  ]
}

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
