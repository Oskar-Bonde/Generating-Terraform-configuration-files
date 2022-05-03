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

      // Add a node to the default node pool
      node_count = 1
      machine_type = "e2-medium"
    }

    // Add a node to the default node pool
    node_count = 1
    machine_type = "e2-medium"
  }

  // Add a node to the default node pool
  node_config {
    machine_type = "e2-medium"
    image_type = "COS"

    // Add a node to the default node pool
    node_count = 1
    machine_type = "e2-medium"
  }

  // Add a node to the default node pool
  node_config {
    machine_type = "e2-medium"
    image_type = "COS"

    // Add a node to the default node pool
    node_count = 1
    machine_type = "e2-medium"
  }

  // Add a node to the default node pool
  node_config {
    machine_type = "e2-medium"
    image_type = "COS"

    // Add a node to the default node pool
    node_count = 1
    machine_type = "e2-medium"
  }

  // Add a node to the default node pool
  node_config {
    machine_type = "e2-medium"
    image_type = "COS"

    // Add a node to the default node pool
    node_count = 1
    machine_type = "e2-medium"
  }

  // Add a node to the default node pool
  node_config {
    machine_type = "e2-medium"
    image_type = "COS"

    // Add a node to the default node pool
    node_count = 1
    machine_type = "e2-medium"
  }

  // Add a node to the default node pool
  node_config {
    machine_type = "e2-medium"
    image_type = "COS"

    // Add a node to the default node pool
    node_count = 1
    machine_type = "e2-medium"
  }

  // Add a node to the default node pool
  node_config {
    machine_type = "e2-medium"
    image_type = "COS"

    // Add a node to the default node pool
    node_count = 1
    machine_type = "e2-medium"
  }

  // Add a node to the default node pool
  node_config {
    machine_type = "e2-medium"
    image_type = "COS"

    // Add a node to the default node pool
    node_count = 1
    machine_type = "e2-medium"
  }

  // Add a node to the default node pool
  node_config {
    machine_type = "e2-medium"
    image_type = "COS"

    // Add a node to the default node pool
    node_count = 1
    machine_type = "e2-medium"
  }

  // Add a node to the default node pool
  node_config {
    machine_type = "e2-medium"
    image_type = "COS"

    // Add a node to the default
}

