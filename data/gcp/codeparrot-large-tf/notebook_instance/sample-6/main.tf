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

# create a notebook instance in location us west 1 a. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu.
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance"
  machine_type = "e2-medium"
  zone = "europe-west1-b"
  tags = ["notebook"]

  # create a network interface in a specific region.
  network_interface {
    network = "default"
  }

  # create a instance in a specific region.
  instance_type = "t2.medium"

  # create a name tag in a specific region.
  name_prefix = "notebooks-instance-"
  tags = ["notebook"]

  # create a network interface in a specific region.
  network_interface {
    network = "default"
  }

  # create a instance in a specific region.
  instance_type = "t2.small"

  # create a name tag in a specific region.
  name_prefix = "notebooks-instance-"
  tags = ["notebook"]

  # create a network interface in a specific region.
  network_interface {
    network = "default"
  }

  # create a instance in a specific region.
  instance_type = "t2.large"

  # create a name tag in a specific region.
  name_prefix = "notebooks-instance-"
  tags = ["notebook"]

  # create a network interface in a specific region.
  network_interface {
    network = "default"
  }

  # create a instance in a specific region.
  instance_type = "t2.xlarge"

  # create a name tag in a specific region.
  name_prefix = "notebooks-instance-"
  tags = ["notebook"]

  # create a network interface in a specific region.
  network_interface {
    network = "default"
  }

  # create a instance in a specific region.
  instance_type = "t2.2xlarge"

  # create a name tag in a specific region.
  name_prefix = "notebooks-instance-"
  tags = ["notebook"]

  # create a network interface in a specific region.
  network_interface {
    network = "default"
  }

  # create a instance in a specific region.
  instance_type = "t2.4xlarge"

  # create a name tag in a specific region.
  name_prefix = "notebooks-instance-"
  tags = ["notebook"]

  # create a network interface in a specific region.
  network_interface {
    network = "default"
  }

  # create a instance in a specific region.
  instance_type = "t2.8xlarge"

  # create a name tag in a specific region.
  name_prefix = "notebooks-instance-"
  tags = ["notebook"]

  # create a network interface in a specific region.
  network_interface {
    network = "default"
  }

  # create a instance in a specific region.
  instance_type = "t2.xlarge"

  # create a name tag in a specific region.
  name_prefix = "notebooks-instance-"
  tags = ["notebook"]

  # create a network interface in a specific region.
  network_interface {
    network = "default"
  }

  # create a instance in a specific region.
  instance_type = "t2.2xlarge"

  # create a name tag in a specific region.
  name_prefix = "notebooks-instance-"
  tags = ["notebook"]

  # create a network interface in a specific region.
  network_interface {
    network = "default"
  }

  # create a instance in a specific
}

