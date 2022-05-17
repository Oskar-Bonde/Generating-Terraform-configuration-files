terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# resource block, sql database instance
resource "google_sql_database" "name_0" {
  name = "my-sql-database-%{random_suffix}"
  instance = google_sql_database_instance.vm_instance.name
  region = "us-central1"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--enable-db-flags=%{random_suffix}" -ne 0 ]
  }
  deletion_protection = false
  deletion_protection = false
  deletion_protection = false
  name = "my-sql-database-%{random_suffix}"
  region = "us-central1"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--enable-db-flags=%{random_suffix}" -ne 0 ]
  }
  deletion_protection = false
  deletion_protection = false
  name = "my-sql-database-%{random_suffix}"
  region = "us-central1"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--enable-db-flags=%{random_suffix}" -ne 0 ]
  }
  deletion_protection = false
  deletion_protection = false
  name = "my-sql-database-%{random_suffix}"
  region = "us-central1"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--enable-db-flags=%{random_suffix}" -ne 0 ]
  }
  deletion_protection = false
  name = "my-sql-database-%{random_suffix}"
  region = "us-central1"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--enable-db-flags=%{random_suffix}" -ne 0 ]
  }
  deletion_protection = false
  name = "my-sql-database-%{random_suffix}"
  region = "us-central1"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--enable-db-flags=%{random_suffix}" -ne 0 ]
 
}

# create a sql database
}

