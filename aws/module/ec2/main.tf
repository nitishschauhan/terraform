resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "generated_key" {
  key_name   = "deployer-key"
  public_key = tls_private_key.example.public_key_openssh
  provisioner "local-exec" {
    command = "echo '${tls_private_key.example.private_key_pem}' > deployer-key.pem && chmod 400 deployer-key.pem"
  }
}
module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = var.instance_name

  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.generated_key.key_name
  monitoring                  = true
  vpc_security_group_ids      = var.security_group_id
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

resource "aws_eip" "ip-test-env" {
  instance = module.ec2_instance.id
  vpc      = true
}
