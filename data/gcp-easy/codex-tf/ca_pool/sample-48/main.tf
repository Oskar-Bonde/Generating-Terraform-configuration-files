terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("credentials.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a CaPool resource
resource "google_compute_region_autoscaler" "name_0" {
  name               = "my-autoscaler"
  region             = "us-central1"
  target             = "my-target"
  autoscaling_policy = {
    max_replicas = 10
    min_replicas = 1
    cpu_utilization = {
      target = 0.5
    }
  }
}

