module "vpc" {
#source                = "../tf-aws-vpc"
   source = "git::https://github.com/Kishore-89-kis/tf-aws-vpc.git?ref=main"
  project_name          = var.project_name
  environment           = var.environment
  vpc_cidr              = var.vpc_cidr
  common_tags           = var.common_tags
  vpc_tags              = var.vpc_tags
  public_subnet_cidrs   = var.public_subnet_cidrs
  privite_subnet_cidrs  = var.privite_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs
  is_peering_requried   = true
}

