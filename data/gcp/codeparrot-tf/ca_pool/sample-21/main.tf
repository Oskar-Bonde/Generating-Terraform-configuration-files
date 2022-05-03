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
  name = "my-compute-instance-2-%%{random_suffix}"
  machine_type = "f1-micro"
  zone = "europe-west1-b"
  network_interface {
    network = "default"
    access_config {
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
  # Set the billing account to be the billing account of the instance
  billing_account = "000-000-000"
  # Set the custom_data_disk_size to an existing disk (in GiB)
  custom_data_disk_size = "50"
  # Create a boot disk (optional)
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  # Create a network interface (optional)
  network_interface {
    network = "default"
    access_config {
    }
  }
  # Set the billing account to be the billing account of the instance
  billing_account = "000-000-000"
  # Set the custom_data_disk_size to an existing disk (in GiB)
  custom_data_disk_size = "50"
  # Create a network interface (optional)
  network_interface {
    network = "default"
    access_config {
    }
  }
  # Set the billing account to be the billing account of the instance
  billing_account = "000-000-000"
  # Set the custom_data_disk_size to an existing disk (in GiB)
  custom_data_disk_size = "50"
  # Create a network interface (optional)
  network_interface {
    network = "default"
    access_config {
    }
  }
  # Set the billing account to be the billing account of the instance
  billing_account = "000-000-000"
  # Set the custom_data_disk_size to an existing disk (in GiB)
  custom_data_disk_size = "50"
  # Create a network interface (optional)
  network_interface {
    network = "default"
    access_config {
    }
  }
  # Set the billing account to be the billing account of the instance
  billing_account = "000-000-000"
  # Set the custom_data_disk_size to an existing disk (in GiB)
  custom_data_disk_size = "50"
  # Create a network interface (optional)
  network_interface {
    network = "default"
    access_config {
    }
  }
  # Set the billing account to be the billing account of the instance
  billing_account = "000-000-000"
  # Set the custom_data_disk_size to an existing disk (in GiB)
  custom_data_disk_size = "50"
  # Create a network interface (optional)
  network_interface {
    network = "default"
    access_config {
    }
  }
  # Set the billing account to be the billing account of the instance
  billing_account = "000-000-000"
  # Set the custom_data_disk_size to an existing disk (in GiB)
  custom_data_disk_size = "50"
  # Create a network interface (optional)
  network_interface {
    network = "default"
    access_config {
    }
  }
  # Set the
}

