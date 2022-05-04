terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create compute network, give it a name
resource "google_compute_network" "name_0" {
  name = "my-compute-network"
}

# create compute firewall, give it the name test-firewall. Use the compute network name, allow protocol icmp, also allow tcp in ports 80, 8080 and 1000-2000. Use source tags web, firewalls internal, internal-load balancer, firewall-external, firewall-internal"
resource "google_compute_firewall" "name_1" {
  name = "my-compute-firewall"
  network = google_compute_network.name_0.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = [
      "80",
      "8080",
      "1000-2000",
    ]
  }

  source_ranges = ["0.0.0.0/0"]
}

