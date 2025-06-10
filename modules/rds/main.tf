resource "aws_rds_cluster" "this" {
  cluster_identifier     = "my-aurora-cluster"
  snapshot_identifier    = "arn:aws:rds:us-east-2:xxxx:cluster-snapshot:copy-rds-snapshot"
  engine                 = "aurora-mysql"
  db_subnet_group_name   = aws_db_subnet_group.this.name
  vpc_security_group_ids = var.vpc_security_group_ids
  skip_final_snapshot    = true
}

resource "aws_rds_cluster_instance" "this" {
  identifier              = "my-aurora-instance"
  cluster_identifier      = aws_rds_cluster.this.id
  instance_class          = "db.t3.medium"
  engine                  = "aurora-mysql"
  db_subnet_group_name    = aws_db_subnet_group.this.name
  publicly_accessible     = true
}
