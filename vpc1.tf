data "aws_availability_zones" "avail_zone"{}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"
  name = "my-vpc"
  cidr = var.vpc-cidr

  azs             = data.aws_availability_zones.avail_zone.names
  private_subnets = var.public-subnet-cidr
  public_subnets  = var.private-subnet-cidr

  enable_nat_gateway = true

  tags = {
    Environment = "dev"
  }

public_subnet_tags={
    Environment = "dev"
}
private_subnet_tags={
    Environment = "dev"
}
}
