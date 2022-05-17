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
resource "google_compute_firewall" "name_0" {
  name = "allow-all-inbound"
  network = "default"    
  project = var.project_id
  direction = "INGRESS"
  priority = 1000

  allow {
    protocol = "tcp"
    ports = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["my-vm"]
}

