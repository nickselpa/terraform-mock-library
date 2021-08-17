variable "gcp_target_project" {
  type = string
  description = "Target GCP project to deploy GCE VMs for k8s Controllers"
}

variable "gcp_target_region" {
  type = string
  description = "Target GCP region to deploy GCE VMs for k8s Controllers"
}

variable "gcp_target_zone" {
  type = string
  description = "Target GCP zone to deploy GCE VMs for k8s Controllers"
}
