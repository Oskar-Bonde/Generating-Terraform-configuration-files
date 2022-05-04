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

# create a CaPool resource
resource "google_compute_instance_pool" "name_0" {
  name = "my-pool"
  auto_healing_policies {
    health_checks = [google_compute_http_health_check.default.id]
  }
}

