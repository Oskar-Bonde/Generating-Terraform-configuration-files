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

# create a firewall policy 
resource "google_compute_firewall" "name_0" {
  name = "my-firewall-policy"
  network = "default"
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
  allow {
    protocol = "sctp-psh"
  }
  source_tags = ["web"]
  target_tags = ["web"]
}

