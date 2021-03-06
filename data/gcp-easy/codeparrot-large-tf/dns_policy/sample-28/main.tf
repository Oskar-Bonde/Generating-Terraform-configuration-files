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

# create dns policy
resource "google_dns_policy" "name_0" {
  name        = "dns-policy-${local.name_suffix}"
  enable_inbound_forwarding = true

  policy_type = "SINGLE_IP_INTERNALLY_REDUNDANT"

  networks {
    network_url = google_compute_network.my-custom-network.id
  }

  # Reject all other networks
  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  allow {
    protocol = "udp"
    ports    = ["443"]
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

  allow {
    protocol = "udp-acm"
  }

  allow {
    protocol = "sctp-udp-1-2-3-4"
  }

  source_ranges = ["10.0.0.0/8"]
}

