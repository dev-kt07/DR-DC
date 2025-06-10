module "ec2" {
  source             = "./modules/ec2"
  region             = var.region
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  key_name           = var.key_name
  security_group_ids = var.security_group_ids
  subnet_id          = var.ec2_subnet_id
  name               = "flask-app"
}

module "rds" {
  source               =  "./modules/rds"
  region               = var.region
  snapshot_identifier  = var.snapshot_identifier
  db_instance_class    = var.db_instance_class
  db_subnet_ids        = var.rds_subnet_ids
  vpc_security_group_ids = var.rds_security_group_ids
  db_name              = var.db_name
  username             = var.db_username
  password             = var.db_password
  name                 = "my-rds-database"
}
