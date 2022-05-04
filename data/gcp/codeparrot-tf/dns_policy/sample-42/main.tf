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

# create dns policy, enable inbound forwarding and enable logging
resource "google_dns_policy" "name_0" {
  name = "dns-policy-${random_suffix}"
  zone = "europe-west1-b"

  # DNS zone where to create the record
  zone_update_policy {
    update_policy = "REPLACE"

    # Reject all other records.
    # Rejecting an entry that does not match any records will be deleted.
    delete_rule = "ALL_RECORDS"
  }

  # DNS zone where to create the record
  zone_update_policy {
    update_policy = "REPLACE"

    # Reject all other records.
    # Rejecting an entry that does not match any records will be deleted.
    delete_rule = "ALL_RECORDS"
  }

  # DNS zone where to create the record
  zone_update_policy {
    update_policy = "REPLACE"

    # Reject all other records.
    # Rejecting an entry that does not match any records will be deleted.
    delete_rule = "ALL_RECORDS"
  }
}
