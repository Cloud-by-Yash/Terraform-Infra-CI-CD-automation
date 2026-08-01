resource "aws_db_instance" "postgres" {
  identifier     = "jerney-postgresql"
  engine         = "postgres"
  engine_version = "16.3"
  instance_class = "db.t3.micro"

  allocated_storage = 20
  storage_type      = "gp2"

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password
  port     = 5432

  publicly_accessible  = false
  db_subnet_group_name = module.vpc.database_subnet_group_name
  vpc_security_group_ids = [
    aws_security_group.rds_sg.id
  ]

  multi_az            = false
  storage_encrypted   = true
  skip_final_snapshot = true
  deletion_protection = false
}