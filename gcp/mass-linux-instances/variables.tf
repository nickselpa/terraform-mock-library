#===== ./gcp/mass-windows-instances/variables.tf
variable "project_id" {
  description = "Target project ID to launch instances"
  type = string
}

variable "region_id" {
  description = "Target region to launch instances"
  type = string
}

variable "zone_id" {
  description = "Target zone to launch instances"
  type = string
}

variable "instance_size" {
  description = "Machine type id (e.g.: e2-medium) to inform CPU/RAM of instances"
  type = string
  # this default is larger to accommodate Windows operational overhead
  default = "e2-medium"
}

variable "instance_image" {
  # If you don't have a requirement to use a private image for testing, run
  # `gcloud compute images list` for a list of public images to use
  description = "Image family and Image name to use (e.g.: windows-cloud/windows-server-2019-dc-v20210713)"
  type = string
  default = "windows-cloud/windows-server-2019-dc-v20210713"
}

variable "instance_network" {
  description = "Target VPC network for instances to attach to"
  type = string
  default = "default"
}

variable "instance_qty" {
  description = "Quantity of instances to launch"
  type = number
  default = 1
}
