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

  // DNS
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // Cloudflare
  allow {
    protocol = "udp"
    ports    = ["53"]
  }

  // Cloudflare API
  allow {
    protocol = "icmp"
  }

  // Cloudflare API
  allow {
    protocol = "esp"
  }

  // Cloudflare API
  allow {
    protocol = "ah"
  }

  // Cloudflare API
  allow {
    protocol = "sctp"
  }

  // Cloudflare API
  allow {
    protocol = "ah-esp"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-esp"
  }

  // Cloudflare API
  allow {
    protocol = "ah-ah"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-esp"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-esp"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-esp"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-ah"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-esp"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-ah"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-esp"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-ah"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-esp"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-ah"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-esp"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-ah"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-esp"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-ah"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-esp"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-ah"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-esp"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-ah"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-esp"
  }

  // Cloudflare API
  allow {
    protocol = "sctp-ah-ah-ah"
  }

  // Cloudflare API
  allow {
}

