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

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true
resource "google_compute_instance" "name_0" {
  name = "my-vm"
  machine_type = "europe-west4"
  zone = "europe-west1-b"
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
  # Set the network admin password
  network_security_group {
    name = "tf-test-network-access"
  }
  # Set the network access config
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network internal IP
  network_interface {
    network = "default"
    access_config {
}

