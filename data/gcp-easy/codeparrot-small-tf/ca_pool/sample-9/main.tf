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
  instance_template = google_compute_instance_template.template.self_link
  zone = "us-central1-f"
}

