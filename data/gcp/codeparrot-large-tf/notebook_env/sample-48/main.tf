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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 apex to specify your own image
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance"
  location = "europe-west4-a"
  machine_type = "e2-medium"
  machine_image {
    source = "debian-cloud/debian-9"
  }
  network_interface {
    network = "default"
  }
  # create a network interface only if you have one, otherwise you'll get an error about the default network interface
  network_interface {
    network = "default"
  }
  # create a instance with a custom image
  network_interface {
    network = "default"
    # add a custom IP address
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a network interface with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a instance with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a network interface with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a instance with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a network interface with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a instance with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a network interface with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a instance with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a network interface with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a instance with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a network interface with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a network interface with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a instance with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a network interface with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a instance with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an ephemeral external IP
    }
  }
  # create a network interface with a custom image
  network_interface {
    network = "default"
    access_config {
      # add an
}

