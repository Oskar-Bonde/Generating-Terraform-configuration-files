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

# a compute instance that has a name, machine type f1-micro, debian-9 image and default network interface and a name
resource "google_compute_instance" "name_1" {
  name = "my-vm-micro-9"
  machine_type = "f1-micro-9"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }
}

# output the cpu platform used by the compute instance.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the default network interface and a name.
# the
}

