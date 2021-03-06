terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name = "node-template"
  machine_type = "n1-standard-1"
  can_ip_forward = false
  tags = ["http-server"]

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete = true
    boot = true
  }

  network_interface {
    network = "default"
  }

  metadata {
    ssh-keys = "ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0g+Zux9rnJ8boej4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVOj3F3Xu4j4lVO
}

