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
  name = "dns-policy-${local.name_suffix}"
  zone = "us-central1-a"
  description = "Terraform dns policy"
  network_tier = "STANDARD"
  # dns_policy {
  #   apply_changes = ["project.test.com"]
  # }
}

