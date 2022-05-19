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
  name = "my-igm"
  region = "us-central1"
  base_instance_name = "my-igm"
  instance_template = "my-instance-template"
  target_size = 1
}

