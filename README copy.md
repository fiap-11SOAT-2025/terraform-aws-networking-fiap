# Repositório de Rede (terraform-aws-networking)

Este repositório contém a configuração do Terraform para provisionar a camada de rede fundamental na AWS. É a base sobre a qual todos os outros serviços da aplicação serão construídos.

## 🏗️ Recursos Criados

Este módulo do Terraform provisiona os seguintes recursos:

- **VPC (Virtual Private Cloud):** Uma rede virtual isolada para hospedar todos os recursos da aplicação.
- **Subnets Públicas:** Três subnets distribuídas em diferentes Zonas de Disponibilidade, com acesso direto à internet. São usadas para recursos como o Application Load Balancer.
- **Subnets Privadas:** Três subnets também distribuídas em diferentes Zonas de Disponibilidade. Recursos críticos como o cluster EKS e o banco de dados RDS são implantados aqui para garantir que não sejam expostos diretamente à internet.
- **Internet Gateway:** Permite a comunicação entre a VPC e a internet.
- **NAT Gateway:** Permite que recursos nas subnets privadas (como os nós do EKS) iniciem conexões com a internet (ex: para baixar atualizações ou imagens de contêiner) sem permitir que a internet inicie conexões com eles.
- **Tabelas de Rotas:** Gerenciam o tráfego entre as subnets e a internet.

## 🚀 Como Usar

1.  Configure os `secrets` da AWS no repositório do GitHub (`AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, etc.).
2.  Faça um `push` para a branch `main`.
3.  O pipeline do GitHub Actions (`provision.yml`) será acionado automaticamente, executando `terraform apply` para criar ou atualizar a infraestrutura de rede.

## 📤 Outputs

Este repositório exporta saídas essenciais que são consumidas por outras camadas, como:
- `vpc_id`
- `private_subnets`
- `vpc_cidr_block`