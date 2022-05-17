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

# a compute instance resource
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-%{random_suffix}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# an output blockvariable "instance_name" {
#    type = "string"
#    description = "Name of the instance"
#    value = "${var.instance_name}"
# }

# a compute instance resource
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-%{random_suffix}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

