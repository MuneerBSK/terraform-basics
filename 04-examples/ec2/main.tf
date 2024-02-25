# Block to create EC2
resource "aws_instance" "web" {
  ami                       = "ami-0ca993affa3ce34e9"
  instance_type             = "t3.nano"
  vpc_security_group_ids    = [var.sg]

  tags = {
    Name        = "Terraform-Instance-Server-Name"
  }

}

variable "sg" {}

output "private_dns" {
    value = aws_instance.web.private_dns
}

