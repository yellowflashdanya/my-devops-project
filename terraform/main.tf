terraform {
  backend "s3" {
    bucket = "danya-s3-state-2412"
    key    = "terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "dynamodb-state-locking-2412"
    encrypt = true
  }
}

module "vpc" {
  source = "./modules/vpc"
  name = var.vpc_name
  cidr_block = var.vpc_cidr
  availability_zones = var.availability_zones
}

module "eks" {
  source        = "./modules/eks"
  cluster_name  = var.cluster_name
  cluster_role_name = "${var.cluster_name}-role"
  subnet_ids = module.vpc.private_subnet_ids
}