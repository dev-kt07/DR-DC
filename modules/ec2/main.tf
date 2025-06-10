resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name
  vpc_security_group_ids      = var.security_group_ids
  associate_public_ip_address = true
  tags = {
    Name = var.name
  }
}

output "public_ip" {
  value = aws_instance.this.public_ip
}
