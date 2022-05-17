
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-tcp-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# google provider block
provider "google-beta" {
  project = var.project_id
  region  = var.region
  zone = var.zone
}

# create compute network

resource "google_compute_network" "name_1" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = false
}

# create a compute ha vpn gateway

resource "google_compute_subnetwork" "name_2" {
  name = "my-subnetwork-${random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  region = var.region
}

