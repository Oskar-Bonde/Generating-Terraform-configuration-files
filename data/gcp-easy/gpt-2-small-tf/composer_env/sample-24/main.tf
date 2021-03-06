terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create composer environment in region us-central1
resource "google_compute_environment" "name_0" {
  name = "my-env-production"
  region = "us-central1"
  zone = "us-central1-a"
  name = "production"
  network = "default"
  source_tags = ["production"]

  # The default security group for the instances
  security_groups = ["default"]

  # The following two tags are required to run the configuration
  # environment:
  # - security group for the instances
  # - name of the environment
  # - description of the environment
  # - permissions to grant to the instances
  # - permissions to grant to the instances
  # - source_tags = ["production"]

  # The following two tags are required to run the configuration
  # environment:
  # - security group for the instances
  # - name of the environment
  # - permissions to grant to the instances
  # - permissions to grant to the instances
  # - source_tags = ["production"]

  # The following two tags are required to run the configuration
  # environment:
  # - security group for the instances
  # - name of the environment
  # - permissions to grant to the instances
  # - permissions to grant to the instances
  # - source_tags = ["production"]

  # The following two tags are required to run the configuration
  # environment:
  # - security group for the instances
  # - name of the environment
  # - permissions to grant to the instances
  # - source_tags = ["production"]

  # The following two tags are required to run the configuration
  # environment:
  # - security group for the instances
  # - name of the environment
  # - permissions to grant to the instances
  # - source_tags = ["production"]

  # The following two tags are required to run the configuration
  # environment:
  # - security group for the instances
  # - name of the environment
  # - permissions to grant to the instances
  # - source_tags = ["production"]

  # The following two tags are required to run the configuration
  # environment:
  # - security group for the instances
  # - name of the environment
  # - permissions to grant to the instances
  # - source_tags = ["production"]

  # The following two tags are required to run the configuration
  # environment:
  # - security group for the instances
  # - name of the environment
  # - permissions to grant to the instances
  # - source_tags = ["production"]

  # The following two tags are required to run the configuration
  # environment:
  # - security group for the instances
  # - name of the environment
  # - permissions to grant to the instances
  # - source_tags = ["production"]

  # The following two tags are required to run the configuration
  # environment:
  # - security group for the instances
  # - name of the environment
  # - permissions to grant to the instances
  # - source_tags = ["production"]

  # The following two tags are required to run the configuration
  # environment:
  # - security group for the instances
  # - name of the environment
  # - permissions to grant to the instances
  #
}

