variable "region" {
  description = "Região AWS"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI Ubuntu 22.04"
  default     = "ami-0c02fb55956c7d316"
}