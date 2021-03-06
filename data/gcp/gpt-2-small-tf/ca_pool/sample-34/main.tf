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
  provider_settings {
    ca_certificate_body = "${file("${path.module}/ca-cert.pem")}"
  }
  ca_key_algorithm = "${file("${path.module}/ca-key.pem")}"
  ca_private_key_pem = "${file("${path.module}/ca-key.pem")}"
  ca_certificate_body = "${file("${path.module}/ca-cert.pem")}"
  validity_period_hours = "${var.validity_period}"
  early_renewal_hours = "${var.early_renewal_hours}"
  allowed_uses = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
    "client_auth",
    "client_key_pem",
  ]
}

