terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and europe north2-standard
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-linux"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create compute network resource. Give it the name foobar and don't auto create subnetworks
resource "google_compute_network" "name_1" {
  name = "my-network-${local.name_suffix}"
  auto_create_subnetworks = false
}

# resource block: create a compute router for the foobar network. Make a bgp block, use asn 64514, advertise mode custom, advertise groups all subnets and set advertised ip ranges to 1.2.3.4 and 6.7.0.0/16
resource "google_compute_subnetwork" "name_2" {
  name = "my-subnetwork-${local.name_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
}
