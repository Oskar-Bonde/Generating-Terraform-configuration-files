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

# data block with google compute zones in europe west4. The status must be UP and project is terraform-338909
resource "google_compute_zone" "name_0" {
  name = "my-zone"
  project = "terraform-338909"
  name_prefix = "my-zone-"
}

# compute instance. There should be one count of the compute instance in each available zone. Type f1 micro, debian 9 image and default network interface. Assign a name
# and a zone name.
resource "google_compute_instance" "name_1" {
  name = "my-vm"
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
