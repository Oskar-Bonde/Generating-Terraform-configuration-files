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
    ssh-keys = "user:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0g+Zux9XcJpkxsuR+ntaJrR2Pw8kH03y3XcKDdVhSpqdWp8tXe6Dvj2w1R2O8W4VEwLpLnQbqyE3pe9eQb2QJmQvbN5S3/f9x8k/g7swU0F3X9xYjF5uW1DVwqwT/Oo+h7JfVvFZLxzRXcQV9A4C5B3p3qZn2uXmXzP9Tj+2Gt8i7F2rI1d7jmQv7uSQhC4mQJf7BmK+zF2k0Gt8i7F2rI1d7jmQv7uSQhC4mQJf7BmK+zF2k0Gt8i7F2rI1d7jmQv7uSQhC4mQJf7BmK+zF2k0Gt8i7F2rI1d7jmQv7uSQhC4mQJf7BmK+zF2k0Gt8i7F2rI1d7jmQv7uSQhC4mQJf7BmK+zF2k0Gt8i7F2rI1d7jmQv7uSQhC4mQJf
}

