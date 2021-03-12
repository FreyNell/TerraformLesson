# Configure your provider

provider "aws" {
    region = var.region
}

terraform {
  backend "s3" {}
}


# In this file you will put your modules, and you are going to name it

module "ec2_instances" {
    source = "./modules/aws_ec2_instances"
    count  = var.another_variable # It works like a for, so there will be 3 instances created
    name   = var.global_variable[count.index] # Acces a list with the index of the count (starts in 0).
}
