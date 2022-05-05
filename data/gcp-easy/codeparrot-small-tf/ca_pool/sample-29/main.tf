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
  name = "my-pool-${random_suffix}"
  auto_healing_policies {
    health_check = "HTTP_HTTP_HANGOLD"
  }
}

