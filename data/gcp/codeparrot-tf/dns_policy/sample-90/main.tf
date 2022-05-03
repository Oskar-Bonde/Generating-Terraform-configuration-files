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

# create dns policy, enable inbound forwarding and enable logging
resource "google_dns_policy" "name_0" {
  name = "dns-policy-${random_suffix}"
  zone = "europe-west1-b"

  # DNS zone where the instances are created
  zone_update_policy {
    managed_zone = "${var.zone_name}"
  }

  # DNS zone where the instances are created
  zone_update_policy {
    managed_zone = "${var.zone_name}"
  }

  # allow outbound traffic on all ports
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  # allow inbound traffic from a specific port
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  # allow inbound traffic from a specific port
  allow {
    protocol = "udp"
    ports    = ["80"]
  }

  # allow all outbound traffic
  allow {
    protocol = "all"
  }

  # allow all inbound traffic
  allow {
    protocol = "all"
  }

  # allow all outbound traffic from a specific port
  allow {
    protocol = "all"
  }

  # allow all inbound traffic from a specific port
  allow {
    protocol = "all"
  }

  # allow all outbound traffic from a specific port
  allow {
    protocol = "all"
  }
}

