terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-micro, debian-9 image and default network interface
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-linux-%{random_suffix}"
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

# compute network that auto creates subnetworks
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-linux-linux-%{random_suffix}"
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

# a compute instance that has machine type f1-micro, debian-9 image, uses self link to vpc network and has a name
resource "google_compute_instance" "name_2" {
  name = "my-compute-instance-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux-linux
}

