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

# a compute instance that has a name, machine type f1-micro, debian-9 image and default network
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-${random_suffix}"
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

# output the cpu platform used by the compute instancevariable
output "name_1" {
  value = google_compute_instance.name_0.name
}

