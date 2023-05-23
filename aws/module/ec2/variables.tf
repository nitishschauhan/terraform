variable "instance_name" {
  type        = string
  description = "Name of ec2 instance"
  default     = "test-vm"
}
variable "ami_id" {
  type        = string
  description = "ID of AMI to use for the instance"
}

variable "associate_public_ip_address" {
  type        = bool
  description = "Whether to associate a public IP address with an instance in a VPC"
  default     = true
}


variable "private_subnets" {
  type        = list(string)
  description = "A list of private subnets inside the VPC"
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "create_spot_instance" {
  type        = bool
  description = "Depicts if the instance is a spot instance"
}


variable "instance_type" {
  type        = string
  description = "The type of instance to start"
}
variable "size" {
  type        = number
  description = "Disk size in GiB for vm"
  default     = "50"
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
}
variable "security_group_id" {
  description = "A list of security group IDs to associate with"
}
