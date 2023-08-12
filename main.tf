terraform {
  backend "remote" {
    name = "just getting started"
    organisation = "eclair_consulting"

    workspace {
      name = "terraform_tutorial"
    }
  }
  
}

resource "aws_instance" "eclair_ec2_instance" {
  ami           = "ami-0f3d9639a5674d559"
  instance_type = var.instance_type
 
  tags = {
    Name = "eclair_ec2_instance"
  }
}

# vpc creation using vpc module
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = "10.0.0.0/16"

  azs             = [var.aws_region]
  private_subnets = [var.private_subnet]
  public_subnets  = [var.public_subnet]

  enable_nat_gateway = true

  tags = {
    Terraform = "Managed by terraform"
    Environment = var.environment
  }
}