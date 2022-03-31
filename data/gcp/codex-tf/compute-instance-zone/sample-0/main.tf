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

# data block with google compute zones in europe west4. The status must be UP and set project to terraform-338909
data "google_compute_zones" "name_0" {
  name = "europe-west4"
  status = "UP"
  project = "${var.project}"
}

# compute instance.Use the first available compute zone. Type f1 micro, debian 9 image, default network interface and give name
resource "google_compute_instance" "name_1" {
  name         = "terraform-338909"
  machine_type = "f1-micro"
  zone         = "${data.google_compute_zones.name_0.names[0]}"
  image_project = "debian-cloud"
  image        = "debian-9-stretch-v20190213"
  network_interface {
    network = "default"
  }
}

