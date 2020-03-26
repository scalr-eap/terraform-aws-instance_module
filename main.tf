resource "aws_instance" "scalr" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet
  vpc_security_group_ids = var.sg
  key_name               = var.key
  count                  = var.instance_count
}

variable "region" {
  description = "Region"
}

variable "instance_type" {
  description = "Instance Type"
}

variable "instance_count" {
  description = "Number of instances to deploy"
  default = "1"
}

variable "subnet" {
  description = "Subnet ID"
}

variable "sg" {
  description = "AWS Secruity Group"
  type        = list(string)
}

variable "key" {
  description = "AWS Key"
}

variable "vpc_id" {
  description = "VPC"
}

variable "ami" {
  description = "AMI"
}
