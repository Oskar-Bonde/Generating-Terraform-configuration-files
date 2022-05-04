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
# this resource is not considered a match
resource "google_compute_region_instance_group_manager" "name_0" {
  name = "my-region-instance-group-manager"
  region = "europe-west4"
  base_instance_name = "my-instance-group-manager"
  target_size = 4
}
