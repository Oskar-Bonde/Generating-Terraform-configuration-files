
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk-%%{random_suffix}"
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
  zone    = var.zone
  depends_on = [
    google_compute_instance.vm_instance,
    google_compute_instance.name_0,
  ]
}

# create compute network

resource "google_compute_network" "name_1" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = false
}

# create compute subnetwork

resource "google_compute_subnetwork" "name_2" {
  name = "my-subnetwork-${random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  network = google_compute_network.name_1.name
}

# make a compute address resource

resource "google_compute_address" "name_3" {
  name = "my-address-${random_suffix}"
  address = "10.0.0.0/24"
}

