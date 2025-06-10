
resource "aws_db_subnet_group" "this" {
  name       = "db-subnet-group"
  subnet_ids = var.db_subnet_ids

  tags = {
    Name = "${var.name}-subnet-group"
  }
}

resource "aws_rds_cluster" "this" {
  cluster_identifier     = "database-1"
  snapshot_identifier    = var.snapshot_identifier
  engine                 = "aurora-mysql"
  db_subnet_group_name   = aws_db_subnet_group.this.name
  vpc_security_group_ids = var.vpc_security_group_ids
  skip_final_snapshot    = true
}

resource "aws_rds_cluster_instance" "this" {
  identifier              = "database-1"
  cluster_identifier      = aws_rds_cluster.this.id
  instance_class          = var.db_instance_class
  engine                  = "aurora-mysql"
  db_subnet_group_name    = aws_db_subnet_group.this.name
  publicly_accessible     = true
}

