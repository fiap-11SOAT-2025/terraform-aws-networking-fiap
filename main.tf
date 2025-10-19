

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source   = "./modules/vpc" 
  vpc_name = "${var.project_name}-vpc"
}