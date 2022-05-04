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
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"

  config {
    node_config {
      machine_type = "e2-micro"
      image = "debian-cloud/debian-9"
    }
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = "default"
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a container
  container_config {
    image = "debian-cloud/debian-9"
    # add external ip to fetch packages
    ports {
      internal = "8080"
      external = "8081"
    }
  }

  # Start instance
  startup_script = "echo \"${data.template_file.startup_script.rendered}\""

  # Start instance with a command
  command = "gcloud compute instances start --project ${var.project_id} --zone ${var.zone} --command \"${data.template_file.start_command.rendered}\""

  # Start instance with a container
  container = "composer-2.0.0-preview"

  # Start instance with a config
  container_config {
    image = "debian-cloud/debian-9"
    ports {
      internal = "8080"
      external = "8081"
    }
  }

  # Start instance with a startup script
  startup_script = "${data.template_file.start_startup_script.rendered}"

  # Start instance with a container
  container = "composer-2.0.0-preview"

  # Start instance with a config
  container_config {
    image = "debian-cloud/debian-9"
    # add external ip to fetch packages
    ports {
      internal = "8080"
      external = "8081"
    }
  }

  # Start instance with a startup script
  startup_script = "${data.template_file.start_startup_script.rendered}"

  # Start instance with a container
  container = "composer-2.0.0-preview"

  # Start instance with a config
  container_config {
    image = "debian-cloud/debian-9"
    # add external ip to fetch packages
    ports {
      internal = "8080"
      external = "8081"
    }
  }

  # Start instance with a startup script
  startup_script = "${data.template_file.start_startup_script.rendered}"

  # Start instance with a container
  container = "composer-2.0.0-preview"

  # Start instance with a config
  container_config {
    image = "debian-cloud/debian-9"
    # add external ip to fetch packages
    ports {
      internal = "8080"
      external = "8081"
    }
  }

  # Start instance with a startup script
  startup_script = "${data.template_file.start_startup_script.rendered}"

  # Start instance with a container
  container = "composer-2.0.0-preview"

  # Start instance with a config
  container_config {
    image = "debian-cloud/debian-9"
    # add external ip to fetch packages
    ports {
      internal = "8080"
      external = "8081"
    }
  }

  # Start instance with a startup script
  startup_script = "${data.template_file.start_startup_
}
