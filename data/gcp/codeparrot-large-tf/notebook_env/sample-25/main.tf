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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 apex
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance"
  machine_type = "europe-west4-a"
  location = "europe-west4-a"
  machine_image {
    source = "debian-cloud/debian-9"
  }
  network_interface {
    network = "default"
  }
  # create a network interface only if we have one, otherwise we'll get a cyclic dependency error
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
  # create a instance with a custom image
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
  # create a instance with a custom image
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
  # create a instance with a custom image
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
  # create a instance with a custom image
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
  # create a instance with a custom image
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
  # create a instance with a custom image
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
  # create a instance with a custom image
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
  # create a instance with
}

