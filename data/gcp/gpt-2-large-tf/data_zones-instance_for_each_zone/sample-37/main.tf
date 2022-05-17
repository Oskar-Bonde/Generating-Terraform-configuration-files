terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and europe north2-standard
resource "google_compute_instance" "name_2" {
  name = "my-compute-instance-vm"
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

# data block with available google compute zones in europe west4. The status must be UP and project is terraform-338909
# the instance that has machine type f1-micro, debian-9 image and default network interface
resource "google_compute_instance" "name_2" {
  name = "my-compute-instance-vm"
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

# compute instance. Create an instance for each available compute zone. One zone for each value. Type f1 micro, debian 9 image, default network interface and giva a name
# the instance that has machine type f1-micro, debian-9 image and default network interface
resource "google_compute_instance" "name_2" {
  name = "my-compute-instance-vm"
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

