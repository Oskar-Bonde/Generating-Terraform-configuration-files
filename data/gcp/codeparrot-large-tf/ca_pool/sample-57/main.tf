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
      // Ephemeral IP
    }
  }
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network admin password
  network_security_group {
    name = "tf-ci-network-security-group"
  }
  # Set the network admin password
  network_security_group {
    name = "tf-ci-network-security-group-password"
  }
  # Set the network admin password
  network_security_group {
    name = "tf-ci-network-security-group-password"
  }
  # Set the network admin password
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network admin password
  network_security_group {
    name = "tf-ci-network-security-group-password"
  }
  # Set the network admin password
  network_security_group {
    name = "tf-ci-network-security-group-password"
  }
  # Set the network admin password
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network admin password
  network_security_group {
    name = "tf-ci-network-security-group-password"
  }
  # Set the network admin password
  network_security_group {
    name = "tf-ci-network-security-group-password"
  }
  # Set the network admin password
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network admin password
  network_security_group {
    name = "tf-ci-network-security-group-password"
  }
  # Set the network admin password
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network admin password
  network_security_group {
    name = "tf-ci-network-security-group-password"
  }
  # Set the network admin password
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network admin password
  network_security_group {
    name = "tf-ci-network-security-group-password"
  }
  # Set the network admin password
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network admin password
  network_security_group {
    name = "tf-ci-network-security-group-password"
  }
  # Set the network admin password
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network admin password
  network_security_group {
    name = "tf-ci-network-security-group-password"
  }
  # Set the network admin password
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}

