terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and europe north2-standard
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-linux"
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

# data block with google compute zones in europe west4. The status must be UP and project is terraform-338909
# the all instance that has machine type f1-micro, debian-9 image and default network interface
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-linux-linux"
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

# compute instance. There should be one count of the compute instance in each available zone. Type f1 micro, debian 9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, debian-9 image and default network interface. Assign a name
# the all instance that has machine type f1-micro, de
}

