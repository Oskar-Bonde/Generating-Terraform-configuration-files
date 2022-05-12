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
  machine_type = "europe-west4"
  tags = ["notebooks"]

  # create a boot disk with a command to download the notebooks
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a command to download the notebooks
  network_interface {
    network = "default"
    access_config {
    }
  }

  # create a instance with a command to download the notebooks
  instance_name = "notebooks-instance-${random_suffix}"
  source_image_family = "ubuntu-2004-lts"
  source_image_project = "deeplearning-platform-release"
  service_account_email = google_service_account.notebooks_service_account.email
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a command to download the notebooks
  network_interface {
    network = "default"
    access_config {
    }
  }

  # create a instance with a command to download the notebooks
  instance_name = "notebooks-instance-${random_suffix}"
  source_image_family = "ubuntu-2004-lts"
  source_image_project = "deeplearning-platform-release"
  service_account_email = google_service_account.notebooks_service_account.email
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a command to download the notebooks
  network_interface {
    network = "default"
    access_config {
    }
  }

  # create a instance with a command to download the notebooks
  instance_name = "notebooks-instance-${random_suffix}"
  source_image_family = "ubuntu-2004-lts"
  source_image_project = "deeplearning-platform-release"
  service_account_email = google_service_account.notebooks_service_account.email
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a command to download the notebooks
  network_interface {
    network = "default"
    access_config {
    }
  }

  # create a instance with a command to download the notebooks
  instance_name = "notebooks-instance-${random_suffix}"
  source_image_family = "ubuntu-2004-lts"
  source_image_project = "deeplearning-platform-release"
  service_account_email = google_service_account.notebooks_service_account.email
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a command to download the notebooks
  network_interface {
    network = "default"
    access_config {
    }
  }

  # create a instance with a command to download the notebooks
  instance_name = "notebooks-instance-${random_suffix}"
 
}

