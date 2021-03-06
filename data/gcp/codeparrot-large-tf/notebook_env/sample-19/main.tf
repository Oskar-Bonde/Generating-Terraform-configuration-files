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
  name = "notebooks-instance"
  location = "europe-west1"
  machine_type = "europe-west1-a"
  machine_image {
    source = "debian-cloud/debian-9"
  }
  network_interface {
    network = "default"
  }
  # create a network interface with a custom image
  network_interface {
    network = "default"
    # define a network interface with a custom image
  }
  # create a instance with a custom image
  instance_name = "notebooks-instance"
  # create a network interface with a custom image
  network_interface {
    network = "default"
    # define a network interface with a custom image
  }
  # create a instance with a custom image
  instance_name = "notebooks-instance"
  # create a network interface with a custom image
  network_interface {
    network = "default"
    # define a network interface with a custom image
  }
  # create a instance with a custom image
  instance_name = "notebooks-instance"
  # create a network interface with a custom image
  network_interface {
    network = "default"
    # define a network interface with a custom image
  }
  # create a instance with a custom image
  instance_name = "notebooks-instance"
  # create a network interface with a custom image
  network_interface {
    network = "default"
    # define a network interface with a custom image
  }
  # create a instance with a custom image
  instance_name = "notebooks-instance"
  # create a network interface with a custom image
  network_interface {
    network = "default"
    # define a network interface with a custom image
  }
  # create a instance with a custom image
  instance_name = "notebooks-instance"
  # create a network interface with a custom image
  network_interface {
    network = "default"
    # define a network interface with a custom image
  }
  # create a instance with a custom image
  instance_name = "notebooks-instance"
  # create a network interface with a custom image
  network_interface {
    network = "default"
    # define a network interface with a custom image
  }
  # create a instance with a custom image
  instance_name = "notebooks-instance"
  # create a network interface with a custom image
  network_interface {
    network = "default"
    # define a network interface with a custom image
  }
  # create a instance with a custom image
  instance_name = "notebooks-instance"
  # create a network interface with a custom image
  network_interface {
    network = "default"
    # define a network interface with a custom image
  }
  # create a instance with a custom image
  instance_name = "notebooks-instance"
  # create a network interface with a custom image
  network_interface {
    network = "default"
    # define a network interface with a custom image
  }
  # create a instance with a custom image
  instance_name = "notebooks-instance"
  # create a network interface with a custom image
  network_interface {
    network = "default"
    # define a network interface with a custom image
  }
  # create a instance with a custom image
  instance_name = "notebooks-instance"
  # create a network interface with a custom image
  network_interface {
    network = "
}

