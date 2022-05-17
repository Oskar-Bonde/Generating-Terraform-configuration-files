terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and europe north2-standard
resource "google_compute_instance" "name_0" {
  name = "my-vm"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
  }
}

# create compute network, give it a name and set auto create subnetworks to false
# create compute network, give it a name and set auto create subnetworks to false
resource "google_compute_subnetwork" "name_1" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.default.id
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use compute network surf id.
resource "google_compute_subnetwork" "name_2" {
  name          = "my-subnet_1"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.default.id
}

