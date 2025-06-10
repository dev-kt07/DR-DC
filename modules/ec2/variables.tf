variable "region" {
   type = string
   description="value"
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
variable "subnet_id" {
    type = string
   description="value"
   default = "subnet-0e81c788ca51a99ab"
}
variable "name" {
    type = string
   description="value"
   default = "flask-app-ec2"
}
