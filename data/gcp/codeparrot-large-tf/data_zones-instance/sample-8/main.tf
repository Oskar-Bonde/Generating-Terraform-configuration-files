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

# data block with google compute zones in europe west4. The status must be UP and set project to terraform-338909
data "google_compute_zones" "name_0" {
}

# compute instance.Use the first available compute zone. Type f1 micro, debian 9 image, default network interface and give name of the instance
resource "google_compute_instance" "name_1" {
  name = "my-vm-2"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }
}

