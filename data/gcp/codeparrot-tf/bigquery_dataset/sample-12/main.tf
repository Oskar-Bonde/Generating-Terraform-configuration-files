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

# bigquery dataset resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain.
resource "google_bigquery_dataset" "name_0" {
  dataset_id = "example_dataset"
  location = "EU"
  default_table_expiration_ms = "9999-12-31T23:59:59.999999Z"
  labels = {
    "de-identification": "de-identification",
    "de-identification-date": "de-identification-date",
    "de-identification-time": "de-identification-time",
    "de-identification-location": "de-identification-location",
    "de-identification-organization": "de-identification-organization",
    "de-identification-project": "de-identification-project",
    "de-identification-environment-code": "de-identification-environment-code",
    "de-identification-display-order": "de-identification-display-order",
    "de-identification-label": "de-identification-label",
    "de-identification-time-created": "de-identification-time-created",
    "de-identification-time-updated": "de-identification-time-updated",
    "de-identification-version": "de-identification-version"
  }
}

