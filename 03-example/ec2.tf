# always start with declarringg provider information first

provider "aws" {
    region = "us-east-1"
}
    
resource "aws_instance" "web" {
    ami       = ami-0ca993affa3ce34e9
    instance_type = "t3.micro"

    tags = {
        Name = "Terraform-Instance"
    }
}
