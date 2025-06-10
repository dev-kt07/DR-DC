region              = "us-east-2"
ami_id              = "ami-0f20bc7a567cdb626"
instance_type       = "t2.micro"
key_name            = "cross-region"
security_group_ids  = ["sg-0064cdd2e7d634c92"]

ec2_subnet_id       = "subnet-0e81c788ca51a99ab"
snapshot_identifier      = "arn:aws:rds:us-east-2:145309346044:cluster-snapshot:copy-rds-snapshot"
db_instance_class        = "db.t3.medium"
rds_subnet_ids           = ["subnet-04752146d268cd8e6", "subnet-0e81c788ca51a99ab"]
rds_security_group_ids   = ["sg-0064cdd2e7d634c92"]

db_name                  = "flaskdb"
db_username              = "admin"
db_password              = "admin1234"
