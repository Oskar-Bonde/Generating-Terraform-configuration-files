terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# data block with google compute zones
data "google_compute_zones" "name_0" {
  project = var.project_id
}

# make a compute instancevariable
resource "google_compute_instance_variable" "name_1" {
  name = "my-instance-var-${random_suffix}"
  machine_type = "f1-micro"

  value = "my-instance-value"
}

