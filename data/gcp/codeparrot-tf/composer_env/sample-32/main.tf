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

  # Set machine type, and enable all the fields
  metadata_startup_script = "echo \"${file("scripts/set_up_composer_environment_variables.sh")}\" > /tmp/set_up_composer_environment_variables.sh"

  # Set machine type, and enable all the fields
  metadata_startup_script = <<EOF
sudo apt-get update
sudo apt-get install -y python3 -o Dpkg::Options::="--force-confnew" -y install Dpkg::Options::="--force-confdef"
sudo apt-get install -y python3 -o Dpkg::Options::="--force-confold" install Dpkg::Options::="--force-confdef"
EOF

  # Create a new instance
  depends_on = [google_composer_environment.name_0]
}

