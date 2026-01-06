terraform {
  backend "s3" {
    bucket         = "fiap-terraform-state-bucket-fiap-fase4" 
    key            = "networking/terraform.tfstate" # Novo caminho para o state
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-fiap"
    encrypt        = true
  }
}