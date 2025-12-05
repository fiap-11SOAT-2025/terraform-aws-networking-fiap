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

output "public_subnets" {
  description = "Lista de IDs das subnets públicas"
  # O valor depende de como você criou. Se usou 'count' no recurso aws_subnet.public:
  value       = aws_subnet.public[*].id
  
  # OU, se você usou um módulo pronto (ex: module.vpc), seria algo como:
  # value = module.vpc.public_subnets
}