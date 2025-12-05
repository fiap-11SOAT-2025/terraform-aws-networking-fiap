# Local do arquivo: modules/vpc/outputs.tf

output "vpc_id" {
  description = "O ID da VPC."
  value       = aws_vpc.main.id 
}


output "private_subnets" {
  description = "Uma lista dos IDs das subnets privadas."
  value       = aws_subnet.private.*.id 
}

output "vpc_cidr_block" {
  description = "O bloco CIDR da VPC."
  value       = aws_vpc.main.cidr_block 
}

output "public_subnets" {
  description = "IDs das subnets públicas para uso externo"
  # Mude de aws_subnet.public[*].id PARA:
  value       = module.vpc.public_subnets
}

