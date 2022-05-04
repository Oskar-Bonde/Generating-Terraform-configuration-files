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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 avariable.yaml
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe"
  machine_type = "europe-west4"
  machine_image = "gcr.io/deeplearning-platform-release/base-cpu:latest"
  #machine_image = "gcr.io/deeplearning-platform-release/base-cpu:latest"
  #machine_name = "my-instance-${random_suffix}"
  #machine_network = "default"
  #machine_tags = ["lab-vm"]
  #machine_tags = ["lab-vm"]
  #machine_startup_script = "gs://cloud-samples/deeplearning-platform-release/latest/install-notebook.sh"
  #machine_type = "e2-micro"
  #machine_tags = ["lab-vm"]
  #machine_startup_script = "gs://cloud-samples/deeplearning-platform-release/latest/install-notebook.sh"
  #machine_type = "e2-micro"
  #machine_tags = ["lab-vm"]
  #machine_startup_script = "gs://cloud-samples/deeplearning-platform-release/latest/install-notebook.sh"
  #machine_type = "e2-micro"
  #machine_tags = ["lab-vm"]
  #machine_startup_script = "gs://cloud-samples/deeplearning-platform-release/latest/install-notebook.sh"
  #machine_type = "e2-micro"
  #machine_tags = ["lab-vm"]
  #machine_startup_script = "gs://cloud-samples/deeplearning-platform-release/latest/install-notebook.sh"
  #machine_type = "e2-micro"
  #machine_tags = ["lab-vm"]
  #machine_startup_script = "gs://cloud-samples/deeplearning-platform-release/latest/install-notebook.sh"
  #machine_type = "e2-micro"
  #machine_tags = ["lab-vm"]
  #machine_startup_script = "gs://cloud-samples/deeplearning-platform-release/latest/install-notebook.sh"
  #machine_type = "e2-micro"
  #machine_tags = ["lab-vm"]
  #machine_startup_script = "gs://cloud-samples/deeplearning-platform-release/latest/install-notebook.sh"
  #machine_type = "e2-micro"
  #machine_tags = ["lab-vm"]
  #machine_startup_script = "gs://cloud-samples/deeplearning-platform-release/latest/install-notebook.sh"
  #machine_type = "e2-micro"
  #machine_tags = ["lab-vm"]
  #machine_startup_script = "gs://cloud-samples/deeplearning-platform-release/latest/install-notebook.sh"
  #machine_type = "e2-micro"
  #machine_tags = ["lab-vm"]
  #machine_startup_script = "gs://cloud-samples/deeplearning-platform-release/latest/install-notebook.sh"
  #machine_type = "e2-micro"
 
}

