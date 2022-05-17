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
  tags = ["notebooks"]

  # create a container image for the notebooks
  container_image {
    repository = "deeplearning-platform-release"
    tag = "latest"
  }

  # create a network interface in the notebooks instance
  network_interface {
    network = "default"
  }

  # create a instance for each of the notebooks
  instance_name = "notebooks-instance"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
  }

  # create a instance for each of the notebooks
  instance_name = "notebooks-instance"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
  }

  # create a instance for each of the notebooks
  instance_name = "notebooks-instance"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
  }

  # create a instance for each of the notebooks
  instance_name = "notebooks-instance"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
  }

  # create a instance for each of the notebooks
  instance_name = "notebooks-instance"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
  }

  # create a instance for each of the notebooks
  instance_name = "notebooks-instance"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
  }

  # create a instance for each of the notebooks
  instance_name = "notebooks-instance"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
  }

  # create a instance for each of the notebooks
  instance_name = "notebooks-instance"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
  }

  # create a instance for each of the notebooks
  instance_name = "notebooks-instance"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

  # create a network interface for the instance
  network_interface {
    network = "default"
  }

  # create a instance for each of the notebooks
  instance_name = "notebooks-instance"

  # create a security group to allow HTTP and SSH access
  security_groups = ["default"]

 
}

