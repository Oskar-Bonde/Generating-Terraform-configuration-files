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
  name = "my-sql-database-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  region = "us-central1"
  database_version = "POSTGRES_13"
  instance_class = "db.t2.micro"
  name = "my-sql-database-instance-%{random_suffix}"
  region = "us-central1"
  database_version = "POSTGRES_13"
  instance_class = "db.t2.micro"
  name = "my-sql-database-instance-%{random_suffix}"
  password = "my-password"
  db_subnet_group_name = "my-db-subnet-group"
  db_subnet_group_name = "my-db-subnet-group-%{random_suffix}"
  db_subnet_group_name = "my-db-subnet-group-%{random_suffix}"
  username = "my-user"
  password = "my-password"
  db_version = "POSTGRES_13"
  instance_class = "db.t2.micro"
  name = "my-sql-database-instance-%{random_suffix}"
  db_subnet_group_name = "my-db-subnet-group-%{random_suffix}"
  db_subnet_group_name = "my-db-subnet-group-%{random_suffix}"
  username = "my-user"
  password = "my-password"
  db_version = "POSTGRES_13"
  instance_class = "db.t2.micro"
  name = "my-sql-database-instance-%{random_suffix}"
  db_subnet_group_name = "my-db-subnet-group-%{random_suffix}"
  db_subnet_group_name = "my-db-subnet-group-%{random_suffix}"
  username = "my-user"
  password = "my-password"
  db_version = "POSTGRES_13"
  instance_class = "db.t2.micro"
  name = "my-sql-database-instance-%{random_suffix}"
  db_subnet_group_name = "my-db-subnet-group-%{random_suffix}"
  db_subnet_group_name = "my-db-subnet-group-%{random_suffix}"
  username = "my-user"
  password = "my-password"
  db_version = "POSTGRES_13"
  instance_class = "db.t2.micro"
  name = "my-sql-database-instance-%{random_suffix}"
  db_subnet_group_name = "my-db-subnet-group-%{random_suffix}"
  db_subnet_group_name = "my-db-subnet-group-%{random_suffix}"
  username
}

