
variable "region" {
  type        = string
  description = "AWS region"
}

variable "sg_name" {
  # default = "sg-hem"
}

variable "description" {
  default = null
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC where to create security group"
}
