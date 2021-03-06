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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a
# notebooks-environment block to create a new instance.
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe"
  machine_type = "europe-west4"
  machine_image = "gcr.io/deeplearning-platform-release/base-cpu:latest"

  # Notebooks instance machine type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD SSD)
  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance service account, can be set to none (for no service account)
  # Notebooks instance network interface, can be set to none (for no network interface)
  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance service account, can be set to none (for no service account)
  # Notebooks instance network interface, can be set to none (for no network interface)
  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance service account, can be set to none (for no service account)

  # Notebooks instance network interface, can be set to none (for no network interface)
  # Notebooks instance boot disk size, can be set to pd-standard (for no network interface)
  # Notebooks instance service account, can be set to none (for no service account)

  # Notebooks instance network interface, can be set to none (for no network interface)
  # Notebooks instance boot disk size, can be set to pd-standard (for no network interface)
  # Notebooks instance service account, can be set to none (for no service account)

  # Notebooks instance network interface, can be set to none (for no network interface)
  # Notebooks instance boot disk size, can be set to pd-standard (for no network interface)
  # Notebooks instance service account, can be set to none (for no service account)

  # Notebooks instance network interface, can be set to none (for no network interface)
  # Notebooks instance boot disk size, can be set to pd-standard (for no network interface)
  # Notebooks instance service account, can be set to none (for no service account)

  # Notebooks instance network interface, can be set to none (for no network interface)
  # Notebooks instance boot disk size, can be set to pd-standard (for no network interface)
  # Notebooks instance service account, can be set to none (for no service account)

  # Notebooks instance service account, can be set to none (for no service account)
  # Notebooks instance network interface, can be set to none (for no network interface)
  # Notebooks instance boot disk size, can be set to pd-standard (for no network interface)
  # Notebooks instance service account, can be set to none (for no service account)

  # Notebooks instance network interface, can be set to none (for no network interface)
  # Note
}

