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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 asia-east1 to use the latest official release image
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance-${random_suffix}"
  location = "europe-west1"
  machine_type = "europe-west1-a"
  tags = ["notebooks"]

  # create a new instance
  create_instance_from_template = true

  # create a network interface for the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a subnet in the new instance
  subnet = "subnet-1"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a subnet in the new instance
  subnet = "subnet-2"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a subnet in the new instance
  subnet = "subnet-3"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a subnet in the new instance
  subnet = "subnet-4"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a subnet in the new instance
  subnet = "subnet-5"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a subnet in the new instance
  subnet = "subnet-6"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a subnet in the new instance
  subnet = "subnet-7"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a subnet in the new instance
  subnet = "subnet-8"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a subnet in the new instance
  subnet = "subnet-9"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network
}

