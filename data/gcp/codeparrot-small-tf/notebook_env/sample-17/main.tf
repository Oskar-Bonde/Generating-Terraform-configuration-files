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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 aresource to create
# notebooks-environment-dev, notebooks-environment-prod, and notebooks-environment-prod-dev
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe-west4"
  machine_type = "e2-micro"
  initial_node_count = 1

  # Notebooks instance machine type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD SSD)
  machine_type = "pd-ssd"

  # Notebooks instance network interface, can be set to network-interfaces (for network-interfaces-dev, network-interfaces-prod)
  network = "default"

  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD SSD)
  disk = {
    # pd-standard (for PD HDD)
    size = 10
  }

  # Notebooks instance service account, can be set to none (for no service account)
  service_account = "none"

  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD SSD)
  boot_disk = {
    # pd-standard (for PD HDD)
    size = 10
  }

  # Notebooks instance service account, can be set to none (for no service account)
  service_account = "none"

  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD SSD)
  disk = {
    # pd-standard (for PD HDD)
    size = 10
  }

  # Notebooks instance service account, can be set to none (for no service account)
  service_account = "none"

  # Notebooks instance boot disk size, can be set to pd-standard (for no service account)
  boot_disk = {
    # pd-standard (for PD HDD)
    size = 10
  }

  # Notebooks instance service account, can be set to none (for no service account)
  service_account = "none"

  # Notebooks instance boot disk size, can be set to pd-standard (for no service account)
  boot_disk = {
    # pd-standard (for PD HDD)
    size = 10
  }

  # Notebooks instance service account, can be set to none (for no service account)
  service_account = "none"

  # Notebooks instance boot disk size, can be set to pd-standard (for no service account)
  boot_disk = {
    # pd-standard (for PD HDD)
    size = 10
  }

  # Notebooks instance service account, can be set to none (for no service account)
  service_account = "none"

  # Notebooks instance boot disk size, can be set to pd-standard (for no service account)
  boot_disk = {
    # pd-standard (for PD HDD)
    size = 10
  }

  # Notebooks instance service account, can be set to none (for no service account)
  service_account = "none"

  # Notebooks instance boot disk size
}

