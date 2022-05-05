terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = var.project
  region      = var.region
}

# create a CaPool resource
resource "google_compute_region_autoscaler" "name_0" {
  name                    = "my-autoscaler"
  region                  = var.region
  target                  = google_compute_instance_group_manager.default.self_link
  autoscaling_policy_name = "my-autoscaling-policy"
  autoscaling_policy_config {
    max_replicas = var.max_replicas
    min_replicas = var.min_replicas
    cpu_utilization {
      target = var.cpu_utilization
    }
  }
}

