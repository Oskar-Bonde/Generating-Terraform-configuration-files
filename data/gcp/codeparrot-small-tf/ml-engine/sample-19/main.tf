terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# ml engine model resource. With default name and in europe west 4 regions
resource "google_compute_region_instance_group_manager" "name_0" {
  name = "mig-${random_suffix}"
  base_instance_name = "my-instance-${random_suffix}"
  target_size = 1
}

