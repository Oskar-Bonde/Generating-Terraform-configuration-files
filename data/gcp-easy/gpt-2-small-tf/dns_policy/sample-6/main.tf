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

# create dns policyvariable "dns_policy" {
#   type = "list"
#   default = ["allow-all"]
#   description = "Allow all inbound traffic"
# }

# create a google_compute_firewall
resource "google_compute_firewall" "name_0" {
  name = "my-firewall-allow-all"
  network = "default"    
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = ["22"]
  }

  source_tags = ["allow-all"]
  target_tags = ["allow-all"]
}

