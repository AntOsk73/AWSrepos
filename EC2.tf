resource "aws_instance" "ec2_instances" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.generated.key_name

  tags = {
    Name = "Terraform-Instance-${count.index}"
  }
}
