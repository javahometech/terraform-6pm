# Variables for our infrastructure

variable "region" {
  default = "us-east-2"
}

variable "ami" {
  type = "map"

  default = {
    "us-west-2" = "ami-32d8124a"
    "us-east-2" = "ami-aa1b34cf"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

variable "azs" {
  type        = "list"
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
  description = "List of availability zones"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_count" {
  default = 3
}

variable "subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
