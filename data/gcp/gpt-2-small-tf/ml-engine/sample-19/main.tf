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

# ml engine model resource. With default name and in europe west 4 regions
resource "google_sql_database" "name_0" {
  name = "ml-database"
  region = "europe-west4"
  database_version = "POSTGRES_13"
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["mysql"]
  }
  settings {
    tier_name = "db-f1-micro"
    tier_name_servers = ["
}

