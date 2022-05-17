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

# create a firewall policyresource "google_compute_firewall" "allow_internal_access" {
  name = "allow-internal-access"
  network = "default"    
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = ["22"]
  }

  source_tags = ["allow-internal-access"]
}

