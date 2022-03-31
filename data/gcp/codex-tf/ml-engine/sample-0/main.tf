terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# ml engine model resource. With default name and in europe west 4 regions
resource "google_ml_engine_model" "name_0" {
  name = "tf-test-%s"
  description = "test description"
  regions = ["europe-west4"]
}
