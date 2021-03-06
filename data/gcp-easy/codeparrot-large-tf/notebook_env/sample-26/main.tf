terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create google notebooks enviroment
resource "google_notebooks_instance" "name_0" {
  name = "my-notebooks-instance"
  location = "us-central1"
  machine_type = "n1-standard-1"
  tags = ["notebooks"]

  create_option {
    create_type = "STANDARD_HA"
    disk_size_gb = 50
  }

  # create a backup of the instance
  create_option {
    create_option.disk_size_gb = 50
    disk_size_gb = 50
  }

  # create a network interface in the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom ssh key
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a network interface with a custom image from a tarball
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a
}

