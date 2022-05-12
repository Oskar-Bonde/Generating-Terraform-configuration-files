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

      # additional instance config
      image_version = "1.2"

      additional_disk_type = "pd-ssd"

      service_account = {
        scopes = ["https://www.googleapis.com/auth/cloud-platform"]
      }
    }

    dynamic "env_variables" {
      for_each = merge(
        local.composer_env_vars,
        var.composer_service_account_email!= null? [""] : []
      )
      content {
        name  = env.key
        value = env.value
      }
    }
  }

  # Create a container image for the application to use
  container_image {
    name = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/app-container:initial"

    image_pull_policy = "Always"

    # Add a local SSD for the application to use
    scratch_disk {
      type = "local-ssd"
    }
  }

  # Create a container image for the application to use
  container_image {
    name = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/app-container:initial"

    image_pull_policy = "Always"

    # Add a local SSD for the application to use
    scratch_disk {
      type = "local-ssd"
    }
  }

  # Create a container image for the application to use
  container_image {
    name = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/app-container:initial"

    image_pull_policy = "Always"

    # Add a local SSD for the application to use
    scratch_disk {
      type = "local-ssd"
    }
  }

  # Create a container image for the application to use
  container_image {
    name = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/app-container:initial"

    image_pull_policy = "Always"

    # Add a local SSD for the application to use
    scratch_disk {
      type = "local-ssd"
    }
  }

  # Create a container image for the application to use
  container_image {
    name = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/app-container:initial"

    image_pull_policy = "Always"

    # Add a local SSD for the application to use
    scratch_disk {
      type = "local-ssd"
    }
  }

  # Create a container image for the application to use
  container_image {
    name = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/app-container:initial"

    image_pull_policy = "Always"

    # Add a local SSD for the application to use
    scratch_disk {
      type = "local-ssd
}

