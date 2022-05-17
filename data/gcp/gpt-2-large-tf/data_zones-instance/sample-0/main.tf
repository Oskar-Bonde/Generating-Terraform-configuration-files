terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1.0
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-linux-instance"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# data block with google compute zones in europe west4. The status must be UP and set project to terraform-338909
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-linux-instance-linux-node"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# compute instance.Use the first available compute zone. Type f1 micro, debian 9 image, default network interface and give name
resource "google_compute_instance" "name_2" {
  name = "my-compute-instance-linux-instance-linux-node-http"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

