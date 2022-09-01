resource "aws_instance" "ec2-server" {
  ami           = var.ec2_ami_id
  instance_type = var.instance_type
  subnet_id     = data.aws_subnet.public-subnet.id
  key_name      = var.key_pair
  tags = {
    Name  = var.ec2-server-name
    Env   = var.ec2-server-environment
    owner = var.ec2-service-owner
  }
}


