/*provider "aws" {
  region = var.aws_region 
  access_key=var.AWS_ACCESS_KEY
  secret_key=var.AWS_CLIENT_SECRET
}

# Create Security Group for SSH
resource "aws_security_group" "my_sg" {
  name        = var.security_group_name
  description = "Allow SSH access"

  # Allow SSH (Port 22) from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Open to the world (not always recommended!)
  }

  # Allow outgoing traffic (default rule)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
*/

/*Launch EC2 Instance with Key Pair & Security Group
resource "aws_instance" "my_ec2" {
  ami             = "ami-12345678"  # Replace with a valid AMI ID
  instance_type   = var.instance_type # Uses the variable from variables.tf
  
  security_groups = [aws_security_group.my_sg.name]  # Assign security group

  tags = {
    Name = "MyTerraformInstance"
  }
}*/

/*# Launch Multiple EC2 Instances Using `for_each` (Without SSH Key)
resource "aws_instance" "my_ec2" {
  for_each       = var.instance_names
  ami            = "ami-12345678"
  instance_type  = each.value
  security_groups = [aws_security_group.my_sg.name]

  tags = {
    Name = each.key
  }
}*/


