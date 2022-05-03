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

# create a node template. Assign a name, set node type to n1-node-96-624
resource "google_compute_node_template" "name_0" {
  name_prefix = "node-template-"
  region = "europe-west1"
  node_type = "n1-node-96-624"

  node_affinity_labels = {
    node_affinity = "my-node-affinity"
  }

  # Set maintenance time
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_policy {
    daily_maintenance_window {
      start_time = "09:00"
    }
  }

  # Set create maintenance window
  maintenance_
}

# create a compute node group resource. Set size to 1 and use the node template resource id
}

