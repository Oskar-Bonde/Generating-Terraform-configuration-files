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

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true.
resource "google_ca_certificate" "name_0" {
  provider = google-beta
  name    = "my-ca-cert"
  type    = "CNAME"
  certificate = file("${path.module}/ca-cert.pem")
  private_key = file("${path.module}/ca-cert.pem")

  # generate a new ca certificate if the provider changes
  # https://cloud.google.com/kubernetes-engine/docs/resources/certificates#ca_certificate_generate_new_ca
  # generate a new ca certificate if the provider changes
  # https://cloud.google.com/kubernetes-engine/docs/resources/certificates#ca_certificate_generate_new_ca
  # generate a new ca certificate if the provider changes
  # https://cloud.google.com/kubernetes-engine/docs/resources/certificates#ca_certificate_generate_new_ca
  # generate a new ca certificate if the provider changes
  # https://cloud.google.com/kubernetes-engine/docs/resources/certificates#ca_certificate_generate_new_ca
  # generate a new ca certificate if the provider changes
  # https://cloud.google.com/kubernetes-engine/docs/resources/certificates#ca_certificate_generate_new_ca
  # generate a new ca certificate if the provider changes
  # https://cloud.google.com/kubernetes-engine/docs/resources/certificates#ca_certificate_generate_new_ca
  # generate a new ca certificate if the provider changes
  # https://cloud.google.com/kubernetes-engine/docs/resources/certificates#ca_certificate_generate_new_ca
  # generate a new ca certificate if the provider changes
  # https://cloud.google.com/kubernetes-engine/docs/resources/certificates#ca_certificate_generate_new_ca
  # generate a new ca certificate if the provider changes
  # https://cloud.google.com/kubernetes-engine/docs/resources/certificates#ca_certificate_generate_new_ca
  # generate a new ca certificate if the provider changes
  # https://cloud.google.com/kubernetes-engine/docs/resources/certificates#ca_certificate_generate_new_ca
  # generate a new ca certificate if the provider changes
  # https://cloud.google.com/kubernetes-engine/docs/resources/certificates#ca_certificate_generate_new_ca
  # generate a new ca certificate if the provider changes
  # https://cloud.google.com/kubernetes-engine/docs/resources/certificates#ca_certificate_generate_new_ca
  # generate a new ca certificate if the provider changes
  # https://cloud.google.com/kubernetes-engine/docs/resources/certificates
}

