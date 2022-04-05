terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment location europe west 4
resource "google_notebooks_environment" "name_0" {
  name = "notebooks-environment"
  description = "notebooks-environment"
  location = "europe-west4"
  container_image = "gcr.io/deeplearning-platform-release/base-cpu"
  container_command = ["/bin/bash"]
  container_arguments = ["-c", "echo 'Hello, world!'"]
  machine_type = "n1-standard-1"
  boot_disk_size_gb = 20
  is_tpu_enabled = false
  is_gpu_enabled = false
  gpu_type = "None"
  tpu_type = "None"
  service_account_email = "service-account@example.com"
  metadata = {
    foo = "bar"
  }
  tags = ["foo", "bar"]
  depends_on = ["google_project_iam_member.service-account"]
}

