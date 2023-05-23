output "private_key" {
  value = tls_private_key.example.private_key_pem
}

output "public_dns" {
  description = "The public DNS name assigned to the instance."
  value       = module.ec2_instance.public_dns
}
output "public_ip" {
  description = "The public ip name assigned to the instance."
  value       = module.ec2_instance.public_ip
}
