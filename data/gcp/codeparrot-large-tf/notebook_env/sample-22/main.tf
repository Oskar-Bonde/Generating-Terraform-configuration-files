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
  location = "europe-west4-a"
  machine_type = "e2-medium"
  machine_image {
    source = "deeplearning-platform-release/base-cpu"
  }
  machine_image {
    source = "deeplearning-platform-release/debian-9"
  }
  network_interface {
    network = "default"
  }
  # create a network interface only if we have a public IP
  network_interface {
    network = "default"
  }
  # create a instance with a public IP
  instance_name = "notebooks-instance-1"
  # create a network interface only if we have a public IP
  network_interface {
    network = "default"
  }
  # create a instance with a public IP
  instance_name = "notebooks-instance-2"
  # create a network interface only if we have a public IP
  network_interface {
    network = "default"
  }
  # create a instance with a public IP
  instance_name = "notebooks-instance-3"
  # create a network interface only if we have a public IP
  network_interface {
    network = "default"
  }
  # create a instance with a public IP
  instance_name = "notebooks-instance-4"
  # create a network interface only if we have a public IP
  network_interface {
    network = "default"
  }
  # create a instance with a public IP
  instance_name = "notebooks-instance-5"
  # create a network interface only if we have a public IP
  network_interface {
    network = "default"
  }
  # create a instance with a public IP
  instance_name = "notebooks-instance-6"
  # create a network interface only if we have a public IP
  network_interface {
    network = "default"
  }
  # create a instance with a public IP
  instance_name = "notebooks-instance-7"
  # create a network interface only if we have a public IP
  network_interface {
    network = "default"
  }
  # create a instance with a public IP
  instance_name = "notebooks-instance-8"
  # create a network interface only if we have a public IP
  network_interface {
    network = "default"
  }
  # create a instance with a public IP
  instance_name = "notebooks-instance-9"
  # create a network interface only if we have a public IP
  network_interface {
    network = "default"
  }
  # create a instance with a public IP
  instance_name = "notebooks-instance-10"
  # create a network interface only if we have a public IP
  network_interface {
    network = "default"
  }
  # create a instance with a public IP
  instance_name = "notebooks-instance-11"
  # create a network interface only if we have a public IP
  network_interface {
    network = "default"
  }
  # create a instance with a public IP
  instance_name = "notebooks-instance-12"
  # create a network interface only if we have a public IP
  network_interface {
    network = "default"
  }
  # create a instance with a public IP
  instance_name = "notebooks-instance-13"
  # create a network interface only if we have
}

