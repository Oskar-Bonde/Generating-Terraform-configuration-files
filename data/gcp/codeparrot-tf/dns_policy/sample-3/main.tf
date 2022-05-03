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

  # DNS zone where to create the record
  zone_name = "europe-west1-b.compute.internal"

  # DNS record
  record {
    priority = 100
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 200
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 300
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 400
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 500
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 600
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 700
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 800
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 900
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 1000
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 2000
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 3000
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 4000
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 5000
    type = "A"
    ttl  = 300
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # Cloudflare DNS record
  record {
    priority = 6000
}

