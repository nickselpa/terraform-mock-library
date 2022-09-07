provider "google" {}

provider "google-beta" {}

module "cff_svpc_example" {
  source = "git::https://github.com/GoogleCloudPlatform/cloud-foundation-fabric.git//examples/networking/shared-vpc-gke?ref=v16.0.0"
  billing_account_id = var.billing_account_id
  region = "us-east4"
  prefix = "cff-deploy-"
  root_node = "folders/401044692076"
  cluster_create = false
  owners_gce = [
    "user:nick@grc.live"
  ]
  owners_host = [
    "user:nick@grc.live"
  ]
}


# name 	description 	type 	required 	default
# billing_account_id 	Billing account id used as default for new projects. 	string 	✓ 	
# prefix 	Prefix used for resources that need unique names. 	string 	✓ 	
# root_node 	Hierarchy node where projects will be created, 'organizations/org_id' or 'folders/folder_id'. 	string 	✓ 	
# cluster_create 	Create GKE cluster and nodepool. 	bool 		true
# ip_ranges 	Subnet IP CIDR ranges. 	map(string) 		{…}
# ip_secondary_ranges 	Secondary IP CIDR ranges. 	map(string) 		{…}
# owners_gce 	GCE project owners, in IAM format. 	list(string) 		[]
# owners_gke 	GKE project owners, in IAM format. 	list(string) 		[]
# owners_host 	Host project owners, in IAM format. 	list(string) 		[]
# private_service_ranges 	Private service IP CIDR ranges. 	map(string) 		{…}
# project_services 	Service APIs enabled by default in new projects. 	list(string) 		[…]
# region 	Region used. 	string 		"europe-west1"