terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name = "node-template"
  machine_type = "n1-standard-1"
  can_ip_forward = false
  tags = ["node"]

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete = true
    boot = true
  }

  network_interface {
    network = "default"
  }

  metadata {
    ssh-keys = "user:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0g+Zux9dwI8xkHJG7db9zjdZK6I/tM4R6pOe7ejOgCqnYJY7zBwc4g/Ldpln2Tm7bPVhah3B8SjzGNpFjz4YrMdO/0C2BuSX+O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4QJ+mW4pT/O4Q
}

