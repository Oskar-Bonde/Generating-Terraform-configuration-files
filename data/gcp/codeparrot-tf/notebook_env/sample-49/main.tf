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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 asia-east1 to use the latest official release image
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance-${random_suffix}"
  machine_type = "europe-west4-a"
  location = "europe-west4-a"
  machine_image {
    repository = "gcr.io/deeplearning-platform-release/base-cpu"
  }
  machine_image {
    repository = "gcr.io/gcr.io/deeplearning-platform-release/base-cpu"
  }
  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
  depends_on = [google_project_service.compute]
}
