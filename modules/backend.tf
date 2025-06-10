terraform {
  backend "s3" {
    bucket         = "terraform-state-infra123"
    key            = "cross-region/terraform.tfstate"
    region         = "us-east-1"                      
    dynamodb_table = "terraform-locks"                  
    encrypt        = true
  }
}