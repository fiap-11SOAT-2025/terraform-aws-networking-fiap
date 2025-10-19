# variables.tf
variable "project_name" {
  description = "O nome do projeto, usado para nomear recursos."
  type        = string
  default     = "fiap-networking"
}