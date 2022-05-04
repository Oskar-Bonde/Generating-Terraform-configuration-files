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

# ml engine model resource. With default name and in europe west 4 regionsvariable, terraform will create
# the default model.
resource "google_ml_engine_model" "name_0" {
  name = "ml-engine-model"
  location = "europe-west4"
  description = "a description"
  default_version = "latest"
  region = "europe-west4"

  labels = {
    my_label = "my_value"
  }

  online_prediction_logging = true

  online_prediction_logging_config {
    enable_logging = true
    enable_integrity_monitoring = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  online_prediction_logging_config {
    enable_integrity_monitoring = true
    enable_secure_boot = true
  }

  # Enable the google-beta provider
  google_beta {
    project = var.project_id
    region = var.region
  }
}

