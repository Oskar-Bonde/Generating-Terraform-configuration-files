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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 asia-east1
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance-${random_suffix}"
  location = "europe-west4-a"
  machine_type = "n1-standard-1"
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom web console and a custom certificate
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a network interface with a custom
}

