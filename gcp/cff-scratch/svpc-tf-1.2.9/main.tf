provider "google" {}

provider "google-beta" {}

module "cff_svpc_example" {
  source             = "git::https://github.com/GoogleCloudPlatform/cloud-foundation-fabric.git//examples/networking/shared-vpc-gke?ref=v16.0.0"
  billing_account_id = var.billing_account_id
  region             = "us-east4"
  prefix             = "tf-svpc-test"
  root_node          = "folders/401044692076"
  cluster_create     = false
  owners_gce = [
    "user:nick@grc.live"
  ]
  owners_host = [
    "user:nick@grc.live"
  ]
}
