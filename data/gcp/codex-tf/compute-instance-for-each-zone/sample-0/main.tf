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

# data block with available google compute zones in europe west4. The status must be UP and project is terraform-338909
data "google_compute_zones" "name_0" {
  name = "europe-west4"
  status = "UP"
  project = "terraform-338909"
}

# compute instance. Create an instance for each available compute zone. One zone for each value. Type f1 micro, debian 9 image, default network interface and giva a name
resource "google_compute_instance" "name_1" {
  name         = "terraform-%{count.index}"
  machine_type = "f1-micro"
  zone         = "${data.google_compute_zones.name_0.names[count.index]}"
  image_project = "debian-cloud"
  image        = "debian-9-stretch-v20190213"
  network_interface {
    network = "default"
  }
}

