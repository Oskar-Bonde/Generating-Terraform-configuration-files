terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Create a container image for running the composer.
  # Note that the container image must be built with the following command:
  # gcloud container images list --project YOUR_PROJECT_ID
  # See https://cloud.google.com/composer/docs/images
  # NOTE: the container image's name is constructed from the image tag name:
  # gcloud image list --project YOUR_PROJECT_ID --format="value(name)"
  # See https://cloud.google.com/composer/docs/images
  composer_env {
    image = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/composer:initial"
    env = [
      "GITHUB_TOKEN=${var.github_token}",
      "GITHUB_REPO=${var.github_repo}",
      "GITHUB_BRANCH=${var.github_branch}",
      "GITHUB_BROWSER_PR=${var.github_browser_pull_request_branch}",
      "GITHUB_USER=${var.github_user}",
      "GITHUB_PASSWORD=${var.github_password}",
      "GITHUB_USER_EMAIL=${var.github_user_email}",
      "GITHUB_ORG_NAME=${var.github_org_name}",
      "GITHUB_ORG_ADMIN=${var.github_org_admin}",
      "GITHUB_ORG_AUTH_ADMIN=${var.github_org_auth_admin}",
      "GITHUB_ORG_ORG_ADMIN=${var.github_org_org_admin}",
      "GITHUB_ORG_USER_ORG_ADMIN=${var.github_org_user_org_admin}",
      "GITHUB_ORG_USER_ORG_ADMIN=${var.github_org_user_org_admin}",
      "GITHUB_ORG_TAG_NAME=${var.github_org_tag_name}",
      "GITHUB_ORG_TAG_VALUE=${var.github_org_tag_value}",
      "GITHUB_ORG_TAG_VALUE_ADMIN=${var.github_org_tag_value_admin}",
      "GITHUB_ORG_TAG_VALUE_ORG_ADMIN=${var.github_org_tag_value_org_admin}",
      "GITHUB_ORG_TAG_VALUE_USER_ADMIN=${var.github_org_tag_value_user_admin}",
      "GITHUB_ORG_TAG_VALUE_USER_ORG_ADMIN=${var.github_org_tag_value_user_org_admin}",
      "GITHUB_ORG_TAG_VALUE_USER_ORG_ADMIN=${var.github_org_tag_value_user_org_admin}",
      "GITHUB_ORG_ADMIN=${var.github_org_admin}",
      "GITHUB_ORG_ADMIN=${var.github_org_admin}",
      "GITHUB_ORG_READ_ONLY=${var.github_org_read_only}",
      "GITHUB_ORG_READ_ONLY_ADMIN
}

