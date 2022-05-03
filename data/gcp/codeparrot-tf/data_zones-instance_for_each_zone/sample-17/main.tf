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

# data block with available google compute zones in europe west4. The status must be UP and project is terraform-338909
data "google_compute_zones" "name_0" {
}

# compute instance. Create an instance for each available compute zone. One zone for each value. Type f1 micro, debian 9 image, default network interface and giva a name
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-%%{random_suffix}"
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

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/${var.key_name}.pub")}"
  }

  can_ip_forward = true

  tags = ["ssh"]

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

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/${var.key_name}.pub")}"
  }

  can_ip_forward = true

  tags = ["ssh"]

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

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/${var.key_name}.pub")}"
  }

  can_ip_forward = true

  tags = ["ssh"]
}

