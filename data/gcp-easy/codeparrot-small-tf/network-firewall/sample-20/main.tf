terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create compute network 
resource "google_compute_network" "name_0" {
  name = "my-compute-network"
}

# create compute firewallresource 
resource "google_compute_firewall" "name_1" {
  name = "my-compute-firewall"
  network = google_compute_network.name_0.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = [
      "22",   # SSH
      "80",   # HTTP
      "443",  # HTTPS
      "4400", # Chronos
      "5050", # Mesos
      "8080", # Marathon
      "8500"  # Consul API
    ]
  }
}

