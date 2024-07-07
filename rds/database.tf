data "aws_secretsmanager_secret" "db_password" {
 name = "sam/mysql/password"
}

data "aws_secretsmanager_secret_version" "db_password_version" {
 secret_id = data.aws_secretsmanager_secret.db_password.id
}

// Example RDS instance using the secrets
resource "aws_db_instance" "default" {
  allocated_storage = 20
  db_name = "mydb"
  engine = "mysql"
  engine_version = "8.0.35"
  instance_class = "db.t3.micro"
  username = var.db_username
  password = data.aws_secretsmanager_secret_version.db_password_version.secret_string
  skip_final_snapshot = true
  publicly_accessible = true
}
