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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name     = "composer-environment"
  region  = "us-central1"

  config {
    node_config {
      machine_type = "e2-micro"

      image = "debian-cloud/debian-9"
    }
  }

  # Add a network interface to allow SSH access only from the internet
  network_interface {
    network = "default"
  }

  # Create a container
  container_config {
    image = "debian-cloud/debian-9"
  }

  # Start the instance
  startup_script = "echo \"${data.template_file.startup_script.rendered}\""

  # Start the instance
  instance_type = "t2.micro"

  # Set the network interface
  network_interface {
    network = "default"
  }

  # Set the startup script
  startup_script = "${data.template_file.startup_script.rendered}"

  # Start the instance
  instance_tags = ["foo", "bar"]

  # Set the network interface
  network_interface {
    network = "default"
  }

  # Set the startup script
  startup_script = "${data.template_file.startup_script.rendered}"

  # Start the instance
  instance_type = "t2.micro"

  # Set the network interface
  network_interface {
    network = "default"
  }

  # Set the startup script
  startup_script = "${data.template_file.startup_script.rendered}"

  # Start the instance
  instance_tags = ["foo", "bar"]

  # Set the network interface
  network_interface {
    network = "default"
  }

  # Set the startup script
  startup_script = "${data.template_file.startup_script.rendered}"

  # Start the instance
  instance_type = "t2.micro"

  # Set the network interface
  network_interface {
    network = "default"
  }

  # Set the startup script
  startup_script = "${data.template_file.startup_script.rendered}"

  # Start the instance
  instance_tags = ["foo", "bar"]

  # Set the network interface
  network_interface {
    network = "default"
  }

  # Set the startup script
  startup_script = "${data.template_file.startup_script.rendered}"

  # Start the instance
  instance_tags = ["foo", "bar"]

  # Set the network interface
  network_interface {
    network = "default"
  }

  # Set the startup script
  startup_script = "${data.template_file.startup_script.rendered}"

  # Start the instance
  instance_type = "t2.micro"

  # Set the network interface
  network_interface {
    network = "default"
  }

  # Set the startup script
  startup_script = "${data.template_file.startup_script.rendered}"

  # Start the instance
  instance_tags = ["foo", "bar"]

  # Set the network interface
  network_interface {
    network = "default"
  }

  # Set the startup script
  startup_script = "${data.template_file.startup_script.rendered}"

  # Start the instance
  instance_tags = ["foo", "bar"]

  # Set the network interface
  network_interface {
    network = "default"
  }

  # Set the startup script
  startup_script = "${data.template_file.startup_script.rendered}"

  # Start the instance
  instance_tags
}

