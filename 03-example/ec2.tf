# Block to create EC2
resource "aws_instance" "web" {
  ami                       = "ami-0ca993affa3ce34e9"
  instance_type             = "t3.nano"
  vpc_security_group_ids    = [aws_security_group.allow_ssh_sg.id]

  tags = {
    Name        = "Terraform-Instance-Server-Name"
  }
}

# Block to print the attribute 
output "private_dns_of_server" {
    value       = aws_instance.web.private_dns
}



