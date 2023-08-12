variable "aws_region" {
    type        = string
}

variable "environment" {
    type        = string
}

variable "instance_type" {
  type        = string
  description = "the type of the ec2 instance"
}

variable "private_subnet" {
    type        = string
}

variable "public_subnet" {
    type        = string
}

variable "vpc_name" {
    type        = string
}