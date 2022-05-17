terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard-1
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-vm"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create compute network resource. Give it the name foobar and don't auto create subnetworks
resource "google_compute_subnetwork" "name_1" {
  name          = "my-compute-subnetwork-${local.name_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.default.id
}

# resource block: create a compute router for the foobar network. Make a bgp block, use asn 64514, advertise mode custom, advertise groups all subnets and set advertised ip ranges to 1.2.3.4 and 6.7.0.0/16
resource "google_compute_subnetwork" "name_2" {
  name          = "my-compute-subnet-${local.name_suffix}"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.default.id
}

