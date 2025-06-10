resource "aws_db_instance" "this" {
  identifier              = "my-rds-database"
  snapshot_identifier     = var.snapshot_identifier
  instance_class          = var.db_instance_class
  db_subnet_group_name    = aws_db_subnet_group.this.name
  vpc_security_group_ids  = var.vpc_security_group_ids
  publicly_accessible     = true
  skip_final_snapshot     = true
  apply_immediately       = true
}

resource "aws_db_subnet_group" "this" {
  name       = "db-subnet-group"
  subnet_ids = var.db_subnet_ids

  tags = {
    Name = "my-rds-subnet-group"
  }
}

output "rds_endpoint" {
  value = aws_db_instance.this.endpoint
}
