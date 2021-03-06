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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2 (Ubuntu Server 16.04 LTS, SDD Volume Type)
resource "google_composer_environment" "name_0" {
  name     = "composer-environment"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    address    = "10.0.1.0/24"
  }

  # Add a security group to the instance
  security_groups = [
    google_compute_security_group.default.id,
    google_compute_security_group.ssh-access.id,
  ]

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    address    = "10.0.1.1"
  }

  # Add a subnet to the instance
  subnet = google_compute_subnetwork.subnet.id
  subnet = google_compute_subnetwork.subnet.id

  # Create a new instance
  instance_template = google_compute_instance_template.vm_instance.id

  # Configure the instance
  instance_type          = "f1-micro"
  instance_name           = "my-instance"
  instance_tags           = ["foo", "bar"]

  # Set the network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    address    = "10.0.1.2"
  }

  # Set the security group to the instance
  security_groups = [
    google_compute_security_group.default.id,
    google_compute_security_group.ssh-access.id,
  ]

  # Set the default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    address    = "10.0.1.3"
  }

  # Set the subnet to the instance
  subnet = google_compute_subnetwork.subnet.id
  subnet = google_compute_subnetwork.subnet.id

  # Create a new instance
  instance_template = google_compute_instance_template.vm_instance.id

  # Configure the instance
  instance_type          = "f1-micro"
  instance_name           = "my-instance"
  instance_tags           = ["foo", "bar"]

  # Set the network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    address    = "10.0.1.4"
  }

  # Set the security group to the instance
  security_groups = [
    google_compute_security_group.default.id,
    google_compute_security_group.ssh-access.id,
  ]

  # Set the default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    address    = "10.0.1.5"
  }

  # Set the subnet to the instance
  subnet = google_compute_subnetwork.subnet.id
  subnet = google_compute_subnetwork.subnet.id

  # Create a new instance
  instance_template = google_compute_instance_template.vm_instance.id

  # Configure the instance
  instance_type          = "f1-micro"
  instance
}

