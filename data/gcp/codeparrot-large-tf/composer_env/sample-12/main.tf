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
    #access_config {
    #  // Ephemeral IP
    #  // The default username for our AMI
    #  user_data = "${file("${path.module}/assets/cloud-init/user-data")}"
    #}
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      // Ephemeral IP
    }
  }

  # Create a new instance
  instance_template = google_compute_instance_template.vm_instance.id

  # Configure the network
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      // Ephemeral IP
    }
  }

  # Create a new instance with the same network_interface_config as our instance template
  instance_config {
    network_interface = google_compute_instance_network_interface.vm_instance.id
  }

  # Create a new instance with the same network_interface_config as our instance template
  instance_config {
    network_interface = google_compute_instance_network_interface.vm_instance.id
  }

  # Create a new instance with the same network_interface_config as our instance template
  instance_config {
    network_interface = google_compute_instance_network_interface.vm_instance.id
  }

  # Create a new instance with the same network_interface_config as our instance template
  instance_config {
    network_interface = google_compute_instance_network_interface.vm_instance.id
  }

  # Create a new instance with the same network_interface_config as our instance template
  instance_config {
    network_interface = google_compute_instance_network_interface.vm_instance.id
  }

  # Create a new instance with the same network_interface_config as our instance template
  instance_config {
    network_interface = google_compute_instance_network_interface.vm_instance.id
  }

  # Create a new instance with the same network_interface_config as our instance template
  instance_config {
    network_interface = google_compute_instance_network_interface.vm_instance.id
  }

  # Create a new instance with the same network_interface_config as our instance template
  instance_config {
    network_interface = google_compute_instance_network_interface.vm_instance.id
  }

  # Create a new instance with the same network_interface_config as our instance template
  instance_config {
    network_interface = google_compute_instance_network_interface.vm_instance.id
  }

  # Create a new instance with the same network_interface_config as our instance template
  instance_config {
    network_interface = google_compute_instance_network_interface.vm_instance.id
  }

  # Create a new instance with the same network_interface_config as our instance template
  instance_config {
    network_interface = google_compute_instance_network
}

