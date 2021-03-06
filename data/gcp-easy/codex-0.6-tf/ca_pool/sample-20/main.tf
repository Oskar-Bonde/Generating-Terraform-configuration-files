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
  name = "my-instance-group-manager"
  region = "us-central1"
  base_instance_name = "my-instance-group-manager"
  instance_template = google_compute_instance_template.default.self_link
  target_size = 2
}

