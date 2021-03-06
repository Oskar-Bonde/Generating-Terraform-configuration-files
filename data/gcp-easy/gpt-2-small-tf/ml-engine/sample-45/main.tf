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

# ml engine model resource
resource "google_sql_database_instance" "name_0" {
  name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  region = "us-central1"
  database_version = "POSTGRES_9_6"
  instance_class = "db.t2.micro"
  zone = "us-central1-a"
  database_version = "POSTGRES_9_6"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-b"
  database_version = "POSTGRES_9_6"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-c"
  database_version = "POSTGRES_9_6"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-d"
  database_version = "POSTGRES_9_6"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-e"
  database_version = "POSTGRES_9_6"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-f"
  database_version = "POSTGRES_9_6"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-f"
  database_version = "POSTGRES_9_6"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-f"
  database_version = "POSTGRES_9_6"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-f"
  database_version = "POSTGRES_9_6"
  username = "my-sql-user"
  password =
}

