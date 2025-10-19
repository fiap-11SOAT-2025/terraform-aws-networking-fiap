output "vpc_id" {
  description = "O ID da VPC criada."
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "Lista dos IDs das subnets privadas."
  value       = module.vpc.private_subnets
}

output "vpc_cidr_block" {
  description = "O bloco CIDR da VPC."
  value       = module.vpc.vpc_cidr_block
}