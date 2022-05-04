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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 aresource.yaml"
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe"
  machine_type = "europe-west4"
  machine_image = "gcr.io/deeplearning-platform-release/base-cpu:latest"

  install_gpu_driver = true
  # Notebooks can be deployed in public subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-gpu-driver
  # Notebooks must be deployed in private subnet
  # https://cloud.google.com/kubernetes-engine/
}

