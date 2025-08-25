# Projeto DevOps PUCRS

## 1. Planejamento do Projeto

**Descrição do projeto:**  
Este projeto tem como objetivo criar uma **infraestrutura automatizada na AWS** e configurar um **pipeline de integração contínua (CI)** para uma aplicação Node.js. O foco é praticar os conceitos de DevOps, incluindo **Integração Contínua (CI)** e **Infraestrutura como Código (IaC)**.

**Objetivos:**  
- Configurar um pipeline de CI utilizando GitHub Actions.  
- Automatizar testes unitários da aplicação Node.js.  
- Provisionar infraestrutura na AWS de forma automatizada usando Terraform.  
- Garantir que todos os recursos estejam versionados no GitHub.

**Requisitos:**  
- Git e GitHub configurados. 
- Node.js e npm instalados.  
- Terraform instalado.  
- Conta na AWS. 


## 2. Plano de Integração Contínua (CI)

O pipeline de integração contínua será organizado da seguinte forma:

- Sempre que houver **push ou pull request** para a branch principal, o GitHub Actions executará automaticamente:  
  - Instalação das dependências do Node.js (`npm install`).  
  - Execução dos testes unitários com Jest (`npm test`).  
  - Relatórios de sucesso ou falha dos testes.

**Workflow do CI (GitHub Actions):**  
- Arquivo: `.github/workflows/ci.yml`  
- Repositório: [https://github.com/francielleabreu/devops-projeto.git](https://github.com/francielleabreu/devops-projeto.git)


## 3. Especificações da Infraestrutura (AWS)

**Provedor de Nuvem:**

- AWS (Amazon Web Services)

**Recursos necessários:**

- EC2: Máquina virtual Linux (Ubuntu 22.04) com 1 vCPU, 1 GB de RAM (t2.micro), security group com SSH e HTTP;
- S3: Bucket para armazenamento de artefatos e arquivos de build;
- VPC: Sub-rede pública, internet gateway para acesso externo.

**Infraestrutura como Código (IaC):**

- Ferramenta: Terraform;
- Todos os recursos serão provisionados via Terraform e versionados no repositório GitHub;
- Código dos scripts de IaC: pasta infrastructure/ no repositório.


## 4. Links do Projeto

**Repositório principal:** https://github.com/francielleabreu/devops-projeto.git

**Pipeline CI:** .github/workflows/ci.yml dentro do mesmo repositório.

**Scripts IaC (Terraform):** pasta infrastructure/ dentro do mesmo repositório.