terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-micro, debian-9 image, default network interface and a name
resource "google_compute_instance" "name_0" {
  name = "my-vm-micro"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }
}

# create compute network, give it a name and set auto create subnetworks to false
resource "google_compute_instance" "name_1" {
  name = "my-vm-micro-outbound"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use compute network surf id and compute network interface and compute name
resource "google_compute_instance" "name_2" {
  name = "my-vm-outbound-outbound"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }
}

