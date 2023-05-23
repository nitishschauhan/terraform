
variable "region" {
  type        = string
  description = "AWS region"
}


variable "vpc_name" {
  type        = string
  description = "Name of VPC"
}

variable "network_cidr" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "private_subnets" {
  type        = list(string)
  description = "A list of private subnets inside the VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "A list of public subnets inside the VPC"
}
variable "enable_nat_gateway" {
  type        = bool
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
}
variable "single_nat_gateway" {
  type        = bool
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
}
variable "one_nat_gateway_per_az" {
  type        = bool
  description = "Should be true if you want only one NAT Gateway per availability zone."
}
