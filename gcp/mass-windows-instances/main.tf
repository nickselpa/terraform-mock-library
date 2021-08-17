#===== .gcp/mass-windows-instances/main.tf
provider "google" {
  project = var.project_id
  region = var.region_id
  zone = var.zone_id
}

resource "random_uuid" "random_bucket_id" {}

resource "google_compute_instance" "windows_instances" {
  count = var.instance_qty
  
  name = "winlab-${random_uuid.random_bucket_id.result}-${count.index}"
  machine_type = var.instance_size

  tags = ["terraform-made", "test-system", "windows"]

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }

  network_interface {
    network = var.instance_network
    
    access_config {}
  }
}