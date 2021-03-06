terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create compute network resource. Give it the name foobar and don't auto create subnetworksvariable.
resource "google_compute_network" "name_0" {
  name = "foobar"
  auto_create_subnetworks = false
}

# resource block: create a compute router for the foobar network. Make a bgp block, use asn 64514, advertise mode custom, advertise groups all subnets and set advertised ip ranges to 1.2.3.4 and 6.7.0.0/16# subnet_ip_ranges
resource "google_compute_router" "name_1" {
  name = "foobar"
  network = google_compute_network.name_0.name
  bgp {
    asn = 64514
    advertise_mode = "CUSTOM"
    advertise_ip_ranges {
      range = "1.2.3.4"
    }
  }
}

