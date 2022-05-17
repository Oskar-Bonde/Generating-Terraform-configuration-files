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
  name        = "dns-policy-${random_suffix}"
  zone_name     = "example.com."
  force_destroy = true

  rules {
    # allow outbound traffic
    allow_access = true
    protocol    = "tcp"
    ports       = ["22", "80", "443"]
  }

  networks {
    network_url = google_compute_network.my-custom-network.id
  }
}

