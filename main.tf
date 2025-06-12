provider "aws" {
  region = var.aws_region 
  access_key=var.AWS_ACCESS_KEY
  secret_key=var.AWS_CLIENT_SECRET
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-12345678" # Replace with a valid AMI ID
  instance_type = var.instance_type # Uses the variable from variables.tf

  tags = {
    Name = "MyTerraformInstance"
  }
}
