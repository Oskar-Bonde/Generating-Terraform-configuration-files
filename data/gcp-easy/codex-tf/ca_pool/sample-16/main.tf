terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a CaPool resource
resource "google_compute_region_autoscaler" "name_0" {
  name               = "my-autoscaler"
  region             = "us-central1"
  target             = "my-target"
  autoscaling_policy = {
    max_replicas = 5
    min_replicas = 1
    cooldown_period_sec = 60
    cpu_utilization = {
      target = 0.5
    }
  }
}

