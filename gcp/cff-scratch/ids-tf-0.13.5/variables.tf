variable "billing_account_id" {
  type      = string
}

variable "vm_image_project" {
  type    = string
  default = "ubuntu-os-cloud"
}

variable "vm_image_family" {
  type    = string
  default = "ubuntu-2004-lts"
}

variable "mirroring_policies" {
  description = "List of policies with required resources targeted for mirroring"
  type = map(object({
    project_id          = string
    vpc_name            = string
    subnets             = list(string)
    instance_tags       = list(string)
    instances           = list(string)
    filter_ip_protocols = list(string)
    filter_cidr_ranges  = list(string)
    filter_direction    = string
  }))
  default = {}
}
