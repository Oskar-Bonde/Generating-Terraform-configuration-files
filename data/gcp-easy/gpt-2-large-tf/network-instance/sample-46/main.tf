
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk-1"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

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
  zone    = var.zone
}

# compute network resource

resource "google_compute_network" "name_1" {
  name = "my-network-1"
  auto_create_subnetworks = false
}

# a compute instance

resource "google_compute_subnetwork" "name_2" {
  name = "my-subnetwork-1"
  ip_cidr_range = "10.0.0.0/16"
  region = var.region
}

