terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# ml engine model resource. With default name and in europe west 4 regions
# the default region is us-central1
resource "google_compute_region_instance_group_manager" "name_0" {
  name = "my-mig-with-default-region"
  base_instance_name = "vm"
  region = "europe-west4"
  version = "europe-west4"
  target_size = 2
}
