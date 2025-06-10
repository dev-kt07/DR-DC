variable "region" {
    type = string
    description = "value"
    default = "us-east-2"
}
variable "ami_id" {
    type = string
   description="value"
   default = "ami-0f20bc7a567cdb626"
}
variable "instance_type" {
    type = string
   description="value"
   default = "t2.micro"
}
variable "key_name" {
    type = string
   description="value"
   default = "cross-region"
}
variable "security_group_ids" {
  type = list(string)
  description = "value"
  default = [ "sg-0064cdd2e7d634c92" ]
}
variable "ec2_subnet_id" {
    type = string
   description="value"
   default = "subnet-0e81c788ca51a99ab"
}

variable "snapshot_identifier" {
    type = string
   description="value"
   default = "arn:aws:rds:us-east-2:145309346044:cluster-snapshot:copy-rds-snapshot"
}
variable "db_instance_class" {
    type = string
   description="value"
   default = "db.t3.medium"
}
variable "rds_subnet_ids" {
  type = list(string)
  description = "value"
  default = [ "subnet-04752146d268cd8e6", "subnet-0e81c788ca51a99ab" ]
}
variable "rds_security_group_ids" {
  type = list(string)
  description = "value"
  default = [ "sg-0064cdd2e7d634c92" ]
}
variable "db_name" {
    type = string
   description="value"
   default =  "flask-app-rds"
}
variable "db_username" {
    type = string
   description="value"
   default = "admin"
}
variable "db_password" {
    type = string
   description="value"
   default = "krishna123456"
   sensitive = true
}