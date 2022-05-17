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
  enable_inbound_forwarding = true
  project       = google_project.project.project_id
  dns_policy_name = google_dns_policy.name_0.name
}

