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
  machine_type = "europe-west4"
  zone = "europe-west4-a"
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
  # Set default pool of worker nodes
  node_config {
    machine_type = "europe-west4"
    # Set default node pool of worker nodes
  }
  # Set default node pool of worker nodes
  node_count = 3
  # Set default node pool of worker nodes
  node_config {
    machine_type = "europe-west4"
    # Set default node pool of worker nodes
  }
  # Set default node pool of worker nodes
  node_count = 3
  # Set default node pool of worker nodes
  node_config {
    machine_type = "europe-west4"
    # Set default node pool of worker nodes
  }
  # Set default node pool of worker nodes
  node_count = 3
  # Set default node pool of worker nodes
  node_config {
    machine_type = "europe-west4"
    # Set default node pool of worker nodes
  }
  # Set default node pool of worker nodes
  node_count = 3
  # Set default node pool of worker nodes
  node_config {
    machine_type = "europe-west4"
    # Set default node pool of worker nodes
  }
  # Set default node pool of worker nodes
  node_count = 3
  # Set default node pool of worker nodes
  node_config {
    machine_type = "europe-west4"
    # Set default node pool of worker nodes
  }
  # Set default node pool of worker nodes
  node_count = 3
  # Set default node pool of worker nodes
  node_config {
    machine_type = "europe-west4"
    # Set default node pool of worker nodes
  }
  # Set default node pool of worker nodes
  node_count = 3
  # Set default node pool of worker nodes
  node_config {
    machine_type = "europe-west4"
    # Set default node pool of worker nodes
  }
  # Set default node pool of worker nodes
  node_count = 3
  # Set default node pool of worker nodes
  node_config {
    machine_type = "europe-west4"
    # Set default node pool of worker nodes
  }
  # Set default node pool of worker nodes
  node_count = 3
  # Set default node pool of worker nodes
  node_config {
    machine_type = "europe-west4"
    # Set default node pool of worker nodes
  }
  # Set default node pool of worker nodes
  node_count = 3
  # Set default node pool of worker nodes
  node_config {
    machine_type = "europe-west4"
    # Set default node pool of worker nodes
  }
  # Set default node pool of worker nodes
  node_count = 3
  # Set default node pool of worker nodes
  node_config {
    machine_type = "europe-west4"
    # Set default node pool of worker nodes
  }
  # Set default node pool of worker nodes
  node_count = 3
  # Set default node pool of worker nodes
  node_config {
}

