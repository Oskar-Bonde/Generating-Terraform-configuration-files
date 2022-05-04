# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  region = "europe-north1"
}

# create compute network resource
resource "google_compute_network" "name_0" {
  name                    = "my-network"
  auto_create_subnetworks = false
}

# resource block: create a compute router 
resource "google_compute_router" "name_1" {
  name    = "my-router"
  network = google_compute_network.name_0.name
  bgp {
    asn               = 64514
    advertise_mode    = "CUSTOM"
    advertised_groups = ["ALL_SUBNETS"]
    advertised_ip_ranges {
      range = "1.2.3.4"
    }
    advertised_ip_ranges {
      range = "6.7.0.0/16"
    }
  }
}

