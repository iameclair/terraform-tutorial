variable "aws_access_key_id" {
    type        = string
}

variable "aws_secret_access_key" {
    type        = string
}

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

variable "profile" {
    type        = string
}

variable "public_subnet" {
    type        = string
}

variable "vpc_name" {
    type        = string
}