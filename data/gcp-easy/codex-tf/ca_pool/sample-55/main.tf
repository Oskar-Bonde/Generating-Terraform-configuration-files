terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  project = "my-project"
  region  = "us-central1"
}

# create a CaPool resource
resource "google_compute_region_instance_group_manager" "name_0" {
  name = "my-igm"
  version {
    instance_template = "my-template"
  }
  base_instance_name = "my-igm"
  region = "us-central1"
  target_size = 1
}

