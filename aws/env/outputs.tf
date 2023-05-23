output "security_group_id" {
  value = module.security_group.security_group_id
}
output "vpc_id" {
  value = module.create_vpc.vpc_id
}

output "public_subnets" {
  value = module.create_vpc.public_subnets
}

output "private_subnets" {
  value = module.create_vpc.private_subnets
}

output "public_ip" {
  description = "The public DNS name assigned to the instance."
  value       = module.ec2_instance.public_ip
}
