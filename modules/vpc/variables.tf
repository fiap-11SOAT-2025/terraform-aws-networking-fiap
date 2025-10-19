# Local: modules/vpc/variables.tf

variable "vpc_name" {
  description = "Um nome descritivo para a VPC."
  type        = string
}

variable "vpc_cidr" {
  description = "O bloco de endereçamento IPv4 para a VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "Uma lista de Zonas de Disponibilidade a serem usadas."
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnets" {
  description = "Uma lista de blocos CIDR para as subnets privadas."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  description = "Uma lista de blocos CIDR para as subnets públicas."
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "enable_nat_gateway" {
  description = "Define se os NAT Gateways devem ser criados."
  type        = bool
  default     = true
}