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

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true
resource "google_compute_region_instance_group_manager" "name_0" {
  name = "mig-${random_suffix}"
  base_instance_name = "my-instance-${random_suffix}"
  region = "europe-west4"
  version {
    instance_template = google_compute_instance_template.vm_instance.id
    name              = "primary"
  }
  base_instance_version = "latest"
  target_size = 1
}

