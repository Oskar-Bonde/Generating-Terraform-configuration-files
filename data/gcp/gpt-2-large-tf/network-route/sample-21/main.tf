terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-micro, debian-9 image, default network interface and a name
resource "google_compute_instance" "name_0" {
  name = "my-vm"
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

# create compute network, give it a name and auto create subnetworks
resource "google_compute_instance" "name_1" {
  name = "my-vm"
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

# compute route with dest range 15.0.0.0/24 and next hop id 10.132.1.5. Use the compute network id and set priority to 100
# the compute network id and set priority to 100.
resource "google_compute_instance" "name_2" {
  name = "my-vm"
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

