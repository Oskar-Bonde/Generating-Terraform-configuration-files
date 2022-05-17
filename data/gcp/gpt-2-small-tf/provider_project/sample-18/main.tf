terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block. Use project terraform-338909 and zone europe west4
# for the zone europe-west4
resource "google_project_iam_member" "name_0" {
  project = var.project_id
  role    = "roles/compute.networkUser"
  member  = "serviceAccount:${google_service_account.compute_instance.email}"
}

