terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = var.project
  region      = var.region
}

# create a CaPool resource
resource "google_compute_region_instance_group_manager" "name_0" {
  name = "my-igm"
  region = var.region
  base_instance_name = "my-igm"
  target_size = 2
  version {
    instance_template = google_compute_instance_template.default.self_link
  }
}

