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
  name = "my-ca-certificate"
  location = "europe-west4"
  certificate_body = file("${path.module}/ca.pem")
  private_key = file("${path.module}/ca.pem")

  # create a new ca certificate
  provisioner "local-exec" {
    command = "echo '${google_ca_certificate.name_0.cert_pem}' >../../../../../../ca/ca.pem"
  }

  # create a new ca certificate
  provisioner "local-exec" {
    command = "echo '${google_ca_certificate.name_0.cert_pem}' >../../../../../ca/ca.pem"
  }

  # create a new ca certificate
  provisioner "local-exec" {
    command = "echo '${google_ca_certificate.name_0.cert_pem}' >../../../../../ca/ca.pem"
  }

  # create a new ca certificate
  provisioner "local-exec" {
    command = "echo '${google_ca_certificate.name_0.cert_pem}' >../../../../../ca/ca.pem"
  }

  # create a new ca certificate
  provisioner "local-exec" {
    command = "echo '${google_ca_certificate.name_0.cert_pem}' >../../../../../ca/ca.pem"
  }

  # create a new ca certificate
  provisioner "local-exec" {
    command = "echo '${google_ca_certificate.name_0.cert_pem}' >../../../../ca/ca.pem"
  }

  # create a new ca certificate
  provisioner "local-exec" {
    command = "echo '${google_ca_certificate.name_0.cert_pem}' >../../../../ca/ca.pem"
  }

  # create a new ca certificate
  provisioner "local-exec" {
    command = "echo '${google_ca_certificate.name_0.cert_pem}' >../../../../ca/ca.pem"
  }

  # create a new ca certificate
  provisioner "local-exec" {
    command = "echo '${google_ca_certificate.name_0.cert_pem}' >../../../../ca/ca.pem"
  }

  # create a new ca certificate
  provisioner "local-exec" {
    command = "echo '${google_ca_certificate.name_0.cert_pem}' >../../../../ca/ca.pem"
  }

  # create a new ca certificate
  provisioner "local-exec" {
    command = "echo '${google_ca_certificate.
}

