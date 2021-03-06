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
  name = "dns-policy"
  zone = "europe-west1-b"

  # DNS zone to allow SSH from
    policy = "ssh"

  # allow all outbound traffic
  allow {
    protocol = "all"
  }

  # allow outbound traffic from anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic from anywhere
  allow {
    protocol = "all"
  }

  # allow all outbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all outbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all outbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all outbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  # allow all inbound traffic to anywhere
  allow {
    protocol = "all"
  }

  #
}

