terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-west1"
}

# ml engine model resource. With default name and in europe west 4 regions
resource "google_compute_region_instance_group_manager" "name_0" {
  name = "mig-instance-group-1"
  base_instance_name = "my-instance-1"
  region = "europe-west4"
  version {
    instance_template = google_compute_instance_template.vm_instance.id
    name              = "primary"
  }
}

