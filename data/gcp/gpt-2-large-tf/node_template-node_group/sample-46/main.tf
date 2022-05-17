terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-micro, debian-9 image and default network interface
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-linux-instance-%%{random_suffix}"
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

# create a node template. Assign a name, set node type to n1-node-96-624-linux
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-linux-instance-from-node-1-9"
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

# create a compute node group resource. Set size to 1 and use the node template resource id
resource "google_compute_instance" "name_2" {
  name = "my-compute-instance-linux-instance-from-node-pool-1-9"
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
