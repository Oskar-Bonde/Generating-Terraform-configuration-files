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
  name     = "composer-env-${random_suffix}"
  region   = "us-central1"

  config {
    node_config {
      machine_type = "e2-micro"

      // Add a local SSD for the instance.
      scratch_disk {
        interface = "SCSI"
        scratch = true
      }
    }
  }

  # Add a local SSD for the instance.
  scratch_disk {
    interface = "SCSI"

    # Add a local SSD for the instance.
    scratch = true

    # Add a local SSD for the instance.
    scratch_disk {
      interface = "SCSI"
      scratch = true
    }
  }

  # Add a local SSD for the instance.
  scratch_disk {
    interface = "SCSI"

    # Add a local SSD for the instance.
    scratch = true

    # Add a local SSD for the instance.
    scratch_disk {
      interface = "SCSI"
      scratch = true
    }
  }

  # Add a local SSD for the instance.
  scratch_disk {
    interface = "SCSI"

    # Add a local SSD for the instance.
    scratch = true

    # Add a local SSD for the instance.
    scratch_disk {
      interface = "SCSI"
      scratch = true
    }
  }

  # Add a local SSD for the instance.
  scratch_disk {
    interface = "SCSI"

    # Add a local SSD for the instance.
    scratch = true

    # Add a local SSD for the instance.
    scratch_disk {
      interface = "SCSI"
      scratch = true
    }
  }

  # Add a local SSD for the instance.
  scratch_disk {
    interface = "SCSI"

    # Add a local SSD for the instance.
    scratch = true

    # Add a local SSD for the instance.
    scratch_disk {
      interface = "SCSI"
      scratch = true
    }
  }

  # Add a local SSD for the instance.
  scratch_disk {
    interface = "SCSI"

    # Add a local SSD for the instance.
    scratch = true

    # Add a local SSD for the instance.
    scratch_disk {
      interface = "SCSI"
      scratch = true
    }
  }

  # Add a local SSD for the instance.
  scratch_disk {
    interface = "SCSI"

    # Add a local SSD for the instance.
    scratch = true

    # Add a local SSD for the instance.
    scratch_disk {
      interface = "SCSI"
      scratch = true
    }
  }

  # Add a local SSD for the instance.
  scratch_disk {
    interface = "SCSI"

    # Add a local SSD for the instance.
    scratch = true

    # Add a local SSD for the instance.
    scratch_disk {
      interface = "SCSI"
      scratch = true
    }
  }

  # Add a local SSD for the instance.
  scratch_disk {
    interface = "SCSI"

    # Add a local SSD for the instance.
    scratch = true

    # Add a local SSD for the instance.
    scratch_disk {
      interface = "SCSI"
      scratch = true
    }
  }

  # Add a local SSD for the instance.
  scratch_disk {
    interface = "SCSI"

    # Add a local SSD for the instance.
    scratch = true

    # Add a local
}

