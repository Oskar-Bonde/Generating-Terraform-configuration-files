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
  project     = var.project
  region      = var.region
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name         = var.name
  project      = var.project
  region       = var.region
  machine_type = var.machine_type
  disk_size_gb = var.disk_size_gb
  image_version = var.image_version
  network = var.network
  subnetwork = var.subnetwork
  service_account = var.service_account
  container_image = var.container_image
  container_image_project = var.container_image_project
  container_image_family = var.container_image_family
  container_image_version = var.container_image_version
  container_image_repository = var.container_image_repository
  container_image_repository_url = var.container_image_repository_url
  container_image_tag = var.container_image_tag
  container_image_digest = var.container_image_digest
  container_image_credentials = var.container_image_credentials
  container_image_credentials_path = var.container_image_credentials_path
  container_image_credentials_json = var.container_image_credentials_json
  container_image_credentials_json_path = var.container_image_credentials_json_path
  container_image_credentials_username = var.container_image_credentials_username
  container_image_credentials_password = var.container_image_credentials_password
  container_image_credentials_email = var.container_image_credentials_email
  container_image_credentials_server = var.container_image_credentials_server
  container_image_credentials_auth_provider = var.container_image_credentials_auth_provider
  container_image_credentials_auth_provider_x509_cert_url = var.container_image_credentials_auth_provider_x509_cert_url
  container_image_credentials_auth_provider_x509_cert_url_path = var.container_image_credentials_auth_provider_x509_cert_url_path
  container_image_credentials_auth_provider_x509_cert_url_json = var.container_image_credentials_auth_provider_x509_cert_url_json
  container_image_credentials_auth_provider_x509_cert_url_json_path = var.container_image_credentials_auth_provider_x509_cert_url_json_path
  container_image_credentials_auth_provider_x509_cert_url_username = var.container_image_credentials_auth_provider_x509_cert_url_username
  container_image_credentials_auth_provider_x509_cert_url_password = var.container_image_credentials_auth_provider_x509_cert_url_password
  container_image_credentials_auth_provider_x509_cert_url_email = var.container_image_credentials_auth_provider_x509_cert_url_email
  container_image_credentials_auth_provider_x509_cert_url_server = var.container_image_credentials_auth_provider_x509_cert_url_server
  container_image_credentials_auth_provider_x509_cert_url_auth_provider = var.container_image_credentials_auth_provider_x509_cert_url_auth_provider
  container_image_credentials_auth_provider_x509_cert_url_auth_provider_x509_cert_url = var.container_image_credentials_auth_provider_x509_cert_url_auth_provider_x509_cert_url
  container_image_credentials_auth_provider_x509_cert_url_auth_provider_x509_cert_url_path = var.container_image_credentials_auth_provider_x509_cert_url_auth_provider_x509_cert_url_path
  container_image_credentials_auth_
}

