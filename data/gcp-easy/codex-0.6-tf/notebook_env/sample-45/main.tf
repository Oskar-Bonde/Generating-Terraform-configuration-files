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
  project = "${var.project}"
  region = "${var.region}"
  config {
    image_version = "1.0.0"
    machine_type = "n1-standard-4"
    network = "default"
    proxy_uri = "http://www.example.com/proxy.pac"
    service_account = "default"
    subnet = "default"
    use_ip_aliases = true
  }
}

