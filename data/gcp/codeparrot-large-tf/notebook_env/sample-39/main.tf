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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 apex to find the latest official release.
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance"
  location = "europe-west4-a"
  machine_type = "e2-medium"
  machine_image {
    source = "deeplearning-platform-release/base-cpu"
  }
  network_interface {
    network = "default"
  }
  # create a network interface with the same name and address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # create a subnet with the same name and address
  subnet = "subnet-1"
  subnet_secondary_ranges = {
    (name) = "subnet-2"
  }
  # create a secondary IP address
  secondary_ip_range {
    range_name    = "secondary-range-1"
    ip_cidr_range = "10.0.0.0/16"
  }
  # create a secondary IP address
  secondary_ip_range {
    range_name    = "secondary-range-2"
    ip_cidr_range = "10.0.1.0/16"
  }
  # create a secondary IP address
  secondary_ip_range {
    range_name    = "secondary-range-3"
    ip_cidr_range = "10.0.2.0/16"
  }
  # create a secondary IP address
  secondary_ip_range {
    range_name    = "secondary-range-4"
    ip_cidr_range = "10.0.3.0/16"
  }
  # create a secondary IP address
  secondary_ip_range {
    range_name    = "secondary-range-5"
    ip_cidr_range = "10.0.4.0/16"
  }
  # create a secondary IP address
  secondary_ip_range {
    range_name    = "secondary-range-6"
    ip_cidr_range = "10.0.5.0/16"
  }
  # create a secondary IP address
  secondary_ip_range {
    range_name    = "secondary-range-7"
    ip_cidr_range = "10.0.6.0/16"
  }
  # create a secondary IP address
  secondary_ip_range {
    range_name    = "secondary-range-8"
    ip_cidr_range = "10.0.7.0/16"
  }
  # create a secondary IP address
  secondary_ip_range {
    range_name    = "secondary-range-9"
    ip_cidr_range = "10.0.8.0/16"
  }
  # create a secondary IP address
  secondary_ip_range {
    range_name    = "secondary-range-10"
    ip_cidr_range = "10.0.10.0/16"
  }
  # create a secondary IP address
  secondary_ip_range {
    range_name    = "secondary-range-11"
    ip_cidr_range = "10.0.11.0/16"
  }
  # create a secondary IP address
  secondary_ip_range {
    range_name    = "secondary-range-12"
    ip_cidr_range = "10.0.12.0/16"
  }
  # create a secondary IP address
  secondary
}

