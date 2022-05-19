terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a CaPool resource
resource "google_compute_region_instance_group_manager" "name_0" {
  name = "my-pool"
  region = "us-central1"
  base_instance_name = "my-pool"
  instance_template = google_compute_instance_template.my-pool.self_link
  target_size = 2
  named_port {
    name = "http"
    port = 80
  }
}

