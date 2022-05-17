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
}

# make a compute instancevariable
resource "google_compute_instance_variable" "name_1" {
  name = "my-instance-var-${random_suffix}"
  description = "a test instance variable"
  machine_type = "f1-micro"
  zone = data.google_compute_zones.name_0.names[0]

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

