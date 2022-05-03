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

# create compute network, give it a name
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
}

# create compute firewall, give it the name test-firewall. Use the compute network name, allow protocol icmp, also allow tcp in ports 80, 8080 and 1000-2000. Use source tags web, web-cache, and cache-machine to create firewall rule
resource "google_compute_firewall" "name_1" {
  name = "test-firewall-${random_suffix}"
  network = google_compute_network.name_0.name
  source_ranges = ["10.0.0.0/8"]
  allow {
    protocol = "tcp"
    ports = ["80"]
  }
  allow {
    protocol = "udp"
    ports = ["80"]
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "sctp"
  }
  allow {
    protocol = "udp-eh"
  }
  allow {
    protocol = "udp-psh"
  }
  source_tags = ["web"]
  target_tags = ["web-cache"]
}

