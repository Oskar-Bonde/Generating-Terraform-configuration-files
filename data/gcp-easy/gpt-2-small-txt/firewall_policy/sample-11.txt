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
  name                                     = "allow-all"
  network                                   = google_compute_network.default.name
  source_ranges                              = ["35.235.240.0/20"]
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
  source_tags                               = ["allow-all"]
  target_tags                              = ["allow-all-health"]
  target_service_accounts                    = ["serviceAccount:${google_service_account.default.email}"]
  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
}

