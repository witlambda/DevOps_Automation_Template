module "vpc" {
  source = "./modules/vpc"
}

module "instances" {
  source  = "./modules/instances"
  vpc_id  = module.vpc.vpc_id
  key_name = var.key_name
}

