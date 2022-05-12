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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 apex.
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance-${random_suffix}"
  machine_type = "europe-west4-a"
  location = "europe-west4-a"
  machine_image {
    source = "gcr.io/deeplearning-platform-release/base-cpu"
  }
  machine_image {
    source = "gcr.io/gcr/deeplearning-platform-release/base-cpu"
  }
  service_account {
    scopes = ["cloud-platform"]
  }
  depends_on = [google_project_service.enabled_services]
}

