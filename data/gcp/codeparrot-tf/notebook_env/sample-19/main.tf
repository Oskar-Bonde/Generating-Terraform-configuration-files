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
  name = "notebooks-instance-${local.name_suffix}"
  location = "europe-west4-a"
  machine_type = "europe-west4"
  tags = ["notebooks"]

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a instance in the correct region
  instance_name = "notebooks-instance-${local.name_suffix}"
  machine_type = "europe-west4"
  tags = ["notebooks"]

  # create a backup of the instance
  backup_configuration {
    enabled = true
    location = "europe-west4-a"
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a backup of the instance
  backup_configuration {
    enabled = true
    location = "europe-west4-a"
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a backup of the instance
  backup_configuration {
    enabled = true
    location = "europe-west4-a"
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a backup of the instance
  backup_configuration {
    enabled = true
    location = "europe-west4-a"
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a backup of the instance
  backup_configuration {
    enabled = true
    location = "europe-west4-a"
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a backup of the instance
  backup_configuration {
    enabled = true
    location = "europe-west4-a"
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a backup of the instance
  backup_configuration {
    enabled = true
    location = "europe-west4-a"
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a backup of the instance
  backup_configuration {
    enabled = true
    location = "europe-west4-a"
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a backup of the instance
  backup_configuration {
    enabled = true
    location = "europe-west4-a"
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
   
}

