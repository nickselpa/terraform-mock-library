provider "google" {
  project = var.gcp_target_project
  region = var.gcp_target_region
}

resource "google_compute_instance" "k8s_controllers" {
  count = var.qty_k8s_controllers

  name = "controller-${count.index}"
  description = "k8s controller for Kubernetes the Hard Way"
  machine_type = "e2-standard-2"
  zone = var.gcp_target_zone

  tags = ["kubernetes-the-hard-way", "controller"]

  can_ip_forward = true

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
      size = "200"
    }
  }

  network_interface {
    network = "kubernetes-the-hard-way"
    subnetwork = "kubernetes"
    network_ip = "10.240.0.1${count.index}"

    access_config {
      #ephemeral
    }
  }

  service_account {
    scopes = ["compute-rw", "storage-ro", "service-management", "service-control", "logging-write", "monitoring"]
  }

}