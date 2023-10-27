resource "aws_db_instance" "golfzon-aws-rds" {
  identifier             = "${var.db_name}-444"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "15.4"
  username               = var.db_username
  password               = var.db_password
  publicly_accessible    = true
  skip_final_snapshot    = true
  multi_az               = var.multi_az
  apply_immediately       = var.apply_immediately
}
