terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-west1"
}

# ml engine model resource. With default name and in europe west 4 regions, the
# google_compute_instance resource is created with name of the machine type
# f1-micro is created with machine type f1-micro.
resource "google_compute_instance" "name_0" {
  name = "my-ml-instance"
  machine_type = "f1-micro"
  zone = "europe-west4-a"

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

