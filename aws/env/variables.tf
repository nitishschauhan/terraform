#############################
# Global
#############################

variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-west-1"
}
#
#############################
# VPC
#############################

variable "vpc_name" {
  type        = string
  description = "Name of VPC"
  default     = "ec2_vpc1234"

}
#
variable "network_cidr" {
  type        = string
  description = "VPC cidr"
  default     = "10.0.0.0/16"
}

variable "private_subnets" {
  type        = list(string)
  description = "A list of private subnets inside the VPC"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnets" {
  type        = list(string)
  description = "A list of public subnets inside the VPC"
  default     = ["10.0.4.0/24", "10.0.5.0/24"]
}
variable "enable_nat_gateway" {
  type        = bool
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  default     = true
}
variable "single_nat_gateway" {
  type        = bool
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  default     = true
}
variable "one_nat_gateway_per_az" {
  type        = bool
  description = "Should be true if you want only one NAT Gateway per availability zone."
  default     = false
}

# #############################
# # Security Group
# #############################
#
variable "sg_name" {
  type        = string
  description = "Name of security group"
  default     = "ec2_s1234"
}

#
# #############################
# # EC2
# #############################
#
variable "instance_name" {
  type        = string
  description = "Name of ec2 instance"
  default     = "assignment-vm-1234"
}
variable "instance_type" {
  type        = string
  description = "The type of instance to start"
  default     = "t3.medium"
}
variable "create_spot_instance" {
  type        = bool
  description = "Depicts if the instance is a spot instance"
  default     = "true"
}

variable "size" {
  type        = number
  description = "Disk size in GiB for vm"
  default     = "50"
}

variable "ami_id" {
  type        = string
  description = "ID of AMI to use for the instance"
  default     = "ami-085284d24fe829cd0"
}
