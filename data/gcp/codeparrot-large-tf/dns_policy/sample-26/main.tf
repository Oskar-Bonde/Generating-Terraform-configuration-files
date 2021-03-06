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
  name = "dns-policy"
  zone = "europe-west1-b"

  # DNS zone where the instance is created
  zone_update_policy {
    managed_zone = "${google_dns_managed_zone.env_dns_zone.name}"
  }

  # DNS record
  record {
    name = "tf-example-com"
    type = "A"

    alias {
      name = "${google_dns_managed_zone.env_dns_zone.dns_name}"
      zone_id = "${google_dns_managed_zone.env_dns_zone.zone_id}"
      evaluate_target_health = false
    }
  }

  # Cloud DNS record
  record {
    name = "tf-example-com"
    type = "A"

    alias {
      name = "${google_dns_managed_zone.env_dns_zone.dns_name}"
      zone_id = "${google_dns_managed_zone.env_dns_zone.zone_id}"
      evaluate_target_health = false
    }
  }

  # Cloud DNS record
  record {
    name = "tf-example-com"
    type = "A"

    alias {
      name = "${google_dns_managed_zone.env_dns_zone.dns_name}"
      zone_id = "${google_dns_managed_zone.env_dns_zone.zone_id}"
      evaluate_target_health = false
    }
  }

  # Cloud DNS record
  record {
    name = "tf-example-com"
    type = "A"

    alias {
      name = "${google_dns_managed_zone.env_dns_zone.dns_name}"
      zone_id = "${google_dns_managed_zone.env_dns_zone.zone_id}"
      evaluate_target_health = false
    }
  }

  # Cloud DNS record
  record {
    name = "tf-example-com"
    type = "A"

    alias {
      name = "${google_dns_managed_zone.env_dns_zone.dns_name}"
      zone_id = "${google_dns_managed_zone.env_dns_zone.zone_id}"
      evaluate_target_health = false
    }
  }

  # Cloud DNS record
  record {
    name = "tf-example-com"
    type = "A"

    alias {
      name = "${google_dns_managed_zone.env_dns_zone.dns_name}"
      zone_id = "${google_dns_managed_zone.env_dns_zone.zone_id}"
      evaluate_target_health = false
    }
  }
}

