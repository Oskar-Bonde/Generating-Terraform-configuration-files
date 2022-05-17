terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1.0
resource "google_compute_instance" "name_0" {
  name = "my-vm-outbound"
  machine_type = "f1-micro"

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    ssh_authorized_keys = "${var.ssh_public_key}"
  }
}

# a compute instance that has a name, machine type f1-micro, debian-9 image and default network interface and a name
resource "google_compute_instance" "name_1" {
  name = "my-vm-outbound-outbound"
  machine_type = "f1-micro"

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    ssh_authorized_keys = "${var.ssh_public_key}"
  }
}

# output the cpu platform used by the compute instance.
resource "google_compute_instance" "name_2" {
  name = "my-vm-outbound-outbound-outbound"
  machine_type = "f1-micro"

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    ssh_authorized_keys = "${var.ssh_public_key}"
  }
}

