terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1.0.0
resource "google_compute_instance" "name_0" {
  name = "my-vm-1"
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
# the network interface and the name and the name is created.
# the name is created.
resource "google_compute_instance" "name_1" {
  name = "my-vm-2"
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

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use compute network surf id.
# the subnetwork interface and the name and the name is created.
resource "google_compute_instance" "name_2" {
  name = "my-vm-3"
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

