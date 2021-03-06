terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard-1
resource "google_compute_instance" "name_2" {
  name = "my-compute-instance-vm-instance-9"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# data block with google compute zones in europe west4. The status must be UP and set project to terraform-338909
# the compute instance that has machine type f1-micro, debian-9 image and default network interface
resource "google_compute_instance" "name_2" {
  name = "my-compute-instance-vm-instance-9"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# compute instance.Use the first available compute zone. Type f1 micro, debian 9 image, default network interface and give name
# the compute instance.
resource "google_compute_instance" "name_2" {
  name = "my-compute-instance-vm-instance-9"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

