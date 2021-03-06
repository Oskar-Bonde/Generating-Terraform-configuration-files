terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-micro, debian-9 image and default network interface
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-micro"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true
# the "google-beta" and "google-beta-beta" and "google-beta-beta-beta" and "google-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-beta-
}

