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
  project  = var.project_id
  composer = google_composer_environment.name_0.id
  version {
    instance_template = google_compute_instance_template.vm_instance.id
  }
  # set machine type to f1-micro
  #machine_type = "f1-micro"
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
  #    image = "debian-cloud/debian-9"
  #  }
  #}
  #boot_disk {
  #  initialize_params {
}

