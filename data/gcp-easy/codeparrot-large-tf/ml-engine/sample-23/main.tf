terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# ml engine model resource
resource "google_ml_engine_model" "name_0" {
  name = "my_model"
  region = "us-central1"
  description = "my model"
  training_budget = "2000"
  # disable_dependent_services = false
  # disable_dependent_instances = false
  # disable_on_destroy         = false
  # disable_on_create         = false
  # auto_pause          = true
  # auto_resume          = true
  # disable_dependent_services = false
  # disable_on_destroy         = false
  # license_model       = "LICENSE_INCLUDED"
  # time_partitioning     = "DAY"
  # labels = {
  #   foo = "bar"
  # }
}

