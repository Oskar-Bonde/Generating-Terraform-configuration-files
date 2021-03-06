terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  project = "my-project"
  region  = "us-central1"
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
    ssh-keys = "user:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0g+Zux9XcJYkP2uk4L4rK6nwxRMMqyGqhPZ9vYaw2y3dAqQ/dQP3O8Jq+6wOej1K7hjVwugJ9L4QnWv8O9WjK7MhQVJ0NcPMflr7Jjb5YX7l9GqrVzKbYXuU6h/V4I7hK0L8a7nZp0j/g9BjB4ZH4fL0QW1W0qhLJt8yS4saDzP9Rr2QI+CZ8ybM9OmV3oX8tEjFZjwOZd8pYgH7l7c8yvzwPQIjXWuPtW1KdgT9mRnTzgC1cYrR0YGzP6JkD4p4p1F7jSv4uCjXz/3Vp0UiYHnI1ZHnUzCiJ5PHhR4Ji+gjyZD3uF7j0E4rYH+cN4r6qF0Et8u+hO9JfJvMfJ user@example.com\n"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

