provider "aws" {
  region = "us-east-1"
}

# VPC
resource "aws_vpc" "devops_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "devops-vpc"
  }
}

# Subnet
resource "aws_subnet" "devops_subnet" {
  vpc_id            = aws_vpc.devops_vpc.id
  cidr_block        = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "devops-subnet"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "devops_igw" {
  vpc_id = aws_vpc.devops_vpc.id
  tags = {
    Name = "devops-igw"
  }
}

# Security Group
resource "aws_security_group" "devops_sg" {
  name        = "devops-sg"
  description = "Permite SSH e HTTP"
  vpc_id      = aws_vpc.devops_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "devops_ec2" {
  ami           = "ami-0c02fb55956c7d316" # Ubuntu 22.04 LTS em us-east-1
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.devops_subnet.id
  security_groups = [aws_security_group.devops_sg.name]

  tags = {
    Name = "devops-ec2"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "devops_bucket" {
  bucket = "devops-projeto-bucket-fran"
  acl    = "private"
}