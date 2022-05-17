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

# ml engine model resource
resource "google_sql_database_instance" "name_0" {
  name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  zone = "us-central1-a"
  database_version = "POSTGRES_13"
  instance_class = "db.t2.micro"
  name = "my-sql-instance-%{random_suffix}"
  username = "root"
  password = "root"
  deletion_protection = "true"
  settings {
    tier = "db-server-2.8.8-db-server-2.8.8-gce-1"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-2.8.8-db-server-2.8.8-gce-2"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-2.8.8-db-server-2.8.8-gce-3"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-2.8.8-db-server-2.8.8-gce-4"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-2.8.8-db-server-2.8.8-gce-5"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-2.8.8-db-server-2.8.8-gce-6"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-2.8.8-db-server-2.8.8-gce-7"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-2.8.8-db-server-2.8.8-gce-8"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-2.8.8-db-server-2.8.8-gce-9"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-2.8.8-db-server-2.8.8-gce-10"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-2.8.8-db-server-2.8.8-gce-11"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-2.8.8-db-server-2.8.8-gce-12"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-2.8.8-db-server-2.8.8-gce
}

