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
# we need to use the default region for the project
resource "google_compute_region_instance_group_manager" "name_0" {
  name = "my-mig-instance-group-manager"
  region = "europe-west4"
  base_instance_name = "vm"
  target_size = 2
}
