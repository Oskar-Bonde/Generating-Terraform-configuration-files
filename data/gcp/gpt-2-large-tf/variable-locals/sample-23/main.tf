terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with default settings
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-vm"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# a string type variable called name with default value "service"
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-vm-${local.name_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# local block with a common labels block. service is set to name variable
}

