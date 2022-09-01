
data "aws_subnet" "public-subnet" {
  filter {
    name   = "tag:Name"
    values = [var.subnet_name]
  }
}


