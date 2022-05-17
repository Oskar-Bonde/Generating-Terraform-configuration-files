
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-tcp-%%{random_suffix}"
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

# google provider block
provider "google-beta" {
  project = var.project_id
  region  = var.region
  zone  = var.zone
}

# create a node template

resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-tcp-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

