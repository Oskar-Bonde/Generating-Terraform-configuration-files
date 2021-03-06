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

# create dns policy
resource "google_compute_firewall" "name_0" {
  name = "allow-all"
  network = "default"    
  allow {
    protocol = "tcp"
    ports = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["allow-all"]
}

