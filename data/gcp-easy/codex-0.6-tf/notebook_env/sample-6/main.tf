terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name = "my-notebook-env"
  zone = "us-central1-a"
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 100
  network = "default"
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu"
  container_image_version = "latest"
  install_gpu_driver = false
  accelerator_count = 0
  accelerator_type = "nvidia-tesla-k80"
  post_startup_script = "apt-get update && apt-get install -y python-pip"
  proxy_uri = "http://proxy.example.com:8080"
  service_account = "my-service-account@my-project.iam.gserviceaccount.com"
  service_account_scopes = [
    "https://www.googleapis.com/auth/cloud-platform",
  ]
}

