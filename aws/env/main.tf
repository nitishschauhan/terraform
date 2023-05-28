#############################
# vpc creation
#############################

module "create_vpc" {
  source                 = "../module/network/vpc"
  region                 = var.region
  vpc_name               = var.vpc_name
  network_cidr           = var.network_cidr
  private_subnets        = var.private_subnets
  public_subnets         = var.public_subnets
  enable_nat_gateway     = var.enable_nat_gateway
  single_nat_gateway     = var.single_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az
}
#############################
# security_group setup
#############################
module "security_group" {
  source  = "../module/network/security-group"
  region  = var.region
  sg_name = var.sg_name
  vpc_id  = module.create_vpc.vpc_id
}
#############################
# VM creation
#############################

module "ec2_instance" {
  source               = "../module/ec2"
  region               = var.region
  instance_name        = var.instance_name
  ami_id               = var.ami_id
  private_subnets      = module.create_vpc.private_subnets
  instance_type        = var.instance_type
  size                 = var.size
  create_spot_instance = var.create_spot_instance
  subnet_id            = element(module.create_vpc.public_subnets, 0)
  security_group_id    = [module.security_group.security_group_id]
}

#############################
# Docker Setup using ansible
#############################

# resource "null_resource" "exec" {

#   provisioner "local-exec" {
#     command = "ansible-playbook -u ubuntu -i ${module.ec2_instance.public_ip}, --private-key 'deployer-key.pem' ../../ansible/roles.yaml"
#   }
#   depends_on = [module.create_vpc, module.security_group, module.ec2_instance]
# }
