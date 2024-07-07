variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "db_password" {
  description = "Database administarator password"
  type        = string
  sensitive   = true
}

variable "db_username" {
  description = "Database user name"
  type        = string
}