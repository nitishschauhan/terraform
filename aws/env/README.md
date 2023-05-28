#### Table of Contents
1. [Usage](#usage)
2. [Requirements](#requirements)
3. [Providers](#Providers)
4. [Inputs](#inputs)
5. [Outputs](#outputs)
## Usage
*various commands
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_create_vpc"></a> [create\_vpc](#module\_create\_vpc) | ../module/network/vpc | n/a |
| <a name="module_ec2_instance"></a> [ec2\_instance](#module\_ec2\_instance) | ../module/ec2 | n/a |
| <a name="module_security_group"></a> [security\_group](#module\_security\_group) | ../module/network/security-group | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | ID of AMI to use for the instance | `string` | `"ami-085284d24fe829cd0"` | no |
| <a name="input_create_spot_instance"></a> [create\_spot\_instance](#input\_create\_spot\_instance) | Depicts if the instance is a spot instance | `bool` | `"true"` | no |
| <a name="input_enable_nat_gateway"></a> [enable\_nat\_gateway](#input\_enable\_nat\_gateway) | Should be true if you want to provision a single shared NAT Gateway across all of your private networks | `bool` | `true` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Name of ec2 instance | `string` | `"assignment-vm-1234"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The type of instance to start | `string` | `"t3.medium"` | no |
| <a name="input_network_cidr"></a> [network\_cidr](#input\_network\_cidr) | VPC cidr | `string` | `"10.0.0.0/16"` | no |
| <a name="input_one_nat_gateway_per_az"></a> [one\_nat\_gateway\_per\_az](#input\_one\_nat\_gateway\_per\_az) | Should be true if you want only one NAT Gateway per availability zone. | `bool` | `false` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | A list of private subnets inside the VPC | `list(string)` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24"<br>]</pre> | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | A list of public subnets inside the VPC | `list(string)` | <pre>[<br>  "10.0.4.0/24",<br>  "10.0.5.0/24"<br>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | `"us-west-1"` | no |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | Name of security group | `string` | `"ec2_s1234"` | no |
| <a name="input_single_nat_gateway"></a> [single\_nat\_gateway](#input\_single\_nat\_gateway) | Should be true if you want to provision a single shared NAT Gateway across all of your private networks | `bool` | `true` | no |
| <a name="input_size"></a> [size](#input\_size) | Disk size in GiB for vm | `number` | `"50"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of VPC | `string` | `"ec2_vpc1234"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | n/a |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | The public DNS name assigned to the instance. |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | n/a |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
