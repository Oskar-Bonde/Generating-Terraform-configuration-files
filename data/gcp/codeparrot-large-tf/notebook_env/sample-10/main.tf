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
  machine_type = "europe-west4-a"
  location = "europe-west4-a"
  machine_image {
    source = "gcr.io/deeplearning-platform-release/base-cpu"
  }
  network_interface {
    network = "default"
  }
  # create a boot disk with a boot disk
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a network interface block
  network_interface {
    network = "default"
  }
  # create a instance with a network interface block
  instance_name = "notebooks-instance"
  # create a boot disk with a boot disk
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a network interface block
  network_interface {
    network = "default"
  }
  # create a instance with a network interface block
  instance_name = "notebooks-instance"
  # create a boot disk with a boot disk
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a network interface block
  network_interface {
    network = "default"
  }
  # create a instance with a network interface block
  instance_name = "notebooks-instance"
  # create a boot disk with a boot disk
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a network interface block
  network_interface {
    network = "default"
  }
  # create a instance with a network interface block
  instance_name = "notebooks-instance"
  # create a boot disk with a boot disk
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a network interface block
  network_interface {
    network = "default"
  }
  # create a instance with a network interface block
  instance_name = "notebooks-instance"
  # create a boot disk with a boot disk
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a network interface block
  network_interface {
    network = "default"
  }
  # create a instance with a network interface block
  instance_name = "notebooks-instance"
  # create a boot disk with a boot disk
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a network interface block
  network_interface {
    network = "default"
  }
  # create a instance with a network interface block
  instance_name = "notebooks-instance"
  # create a boot disk with a boot disk
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a network interface block
  network_interface {
    network = "default"
  }
  # create a instance with a network interface block
  instance_name = "notebooks-instance"
}

