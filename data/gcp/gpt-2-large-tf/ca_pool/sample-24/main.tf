terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and the instance.
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-linux"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true
# the resource.
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-linux-linux"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

