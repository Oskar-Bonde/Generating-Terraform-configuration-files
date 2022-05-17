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

# create a firewall policyresource "google_compute_firewall" "allow_all" {
  name                                 = "allow-all"
  network                              = google_compute_network.network.name
  source_ranges                         = ["0.0.0.0/0"]
  target_tags                          = ["allow-all"]
  allow {
    protocol = "icmp"
  }
}

