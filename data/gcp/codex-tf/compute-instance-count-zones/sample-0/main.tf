terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with default settings
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# data block with google compute zones in europe west4. The status must be UP and project is terraform-338909
data "google_compute_zones" "name_0" {
  name = "europe-west4"
  status = "UP"
  project = "terraform-338909"
}

# compute instance. There should be one count of the compute instance in each available zone. Type f1 micro, debian 9 image and default network interface. Assign a name
resource "google_compute_instance" "name_1" {
  name         = "terraform-%{random_suffix}"
  machine_type = "f1-micro"
  zone         = "${data.google_compute_zones.name_0.names[0]}"
  image_project = "debian-cloud"
  image_family = "debian-9"
  network_interface {
    network = "default"
  }
}

