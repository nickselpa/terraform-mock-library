variable "region" {
  type = string
  default = "us-east4"
}

variable "host_project" {
  type = string
}

variable "service_project" {
  type = string
}

variable "subnet_region_1" {
  type = string
  default = "us-east4"
}

variable "subnet_region_2" {
  type = string
  default = "us-central1"
}

variable "host_vpc_sn_per_region" {
  type = number
  default = 3
}