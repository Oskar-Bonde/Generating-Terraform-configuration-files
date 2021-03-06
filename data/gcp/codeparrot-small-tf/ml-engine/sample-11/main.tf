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

# ml engine model resource. With default name and in europe west 4 regions,
# the model is deployed in the region specified in terraform.tfvars.
resource "google_compute_region_instance_group_manager" "name_0" {
  name = "ml-instance-${random_suffix}"
  base_instance_name = "vm"
  version {
    instance_template = google_compute_instance.vm_instance.id
    name              = "default"
  }
}

