#vpc

resource "aws_vpc" "vamsi" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "vamsi-vpc"
  }
}

