[![Pre-Commit](https://github.com/satheeshchalla/terraform-aws-ec2-instance/actions/workflows/pre-commit.yml/badge.svg)](https://github.com/satheeshchalla/terraform-aws-ec2-instance/actions/workflows/pre-commit.yml)


## Prerequisites

Install the following dependencies

python \
python-pip 

Install terraform-docs to update the documentation

Refer to https://terraform-docs.io/user-guide/installation/

Install tfsec to run the secrurity testing

Refer to https://aquasecurity.github.io/tfsec/v1.16.3/guides/installation/


pip install pre-commit 

## Testing

Run test cases usig pre-commit framework

pre-commit run --all-files


<!--

https://github.com/pre-commit/pre-commit-hooks

https://github.com/antonbabenko/pre-commit-terraform

https://github.com/clowdhaus/terraform-composite-actions

-->


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.23.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.ec2_instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.ec2_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.attach_base_ec2_policies](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_instance.ec2_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_network_interface.eni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface) | resource |
| [aws_security_group.security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.allow_ssh](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_system_patches"></a> [enable\_system\_patches](#input\_enable\_system\_patches) | (optional) Allow SSM to apply patches to this instance. | `bool` | `false` | no |
| <a name="input_iam_instance_profile"></a> [iam\_instance\_profile](#input\_iam\_instance\_profile) | (optional) IAM instance profile to be attached to the instance | `string` | `""` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | ami id to launch instance | `string` | `""` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | (optional) The instance type to launch instance. Defaults to t3.micro | `string` | `"t3.micro"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | (optional) The Key pair to be used to launch instance. | `string` | `""` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | name prefix for all the resources including ec2 instance. | `string` | `""` | no |
| <a name="input_network_interface_id"></a> [network\_interface\_id](#input\_network\_interface\_id) | (optional) network interface id for instances if required | `string` | `""` | no |
| <a name="input_root_block_device"></a> [root\_block\_device](#input\_root\_block\_device) | (optional) The root block device configuration object | <pre>object({<br>    type                  = string<br>    size                  = number<br>    iops                  = string<br>    delete_on_termination = bool<br>    encrypted             = bool<br>  })</pre> | <pre>{<br>  "delete_on_termination": true,<br>  "encrypted": false,<br>  "iops": 100,<br>  "size": 20,<br>  "type": "gp3"<br>}</pre> | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | (optional) list of security group ids to be attached to this instance. | `list(string)` | `[]` | no |
| <a name="input_source_ip_addrs"></a> [source\_ip\_addrs](#input\_source\_ip\_addrs) | (optional) List of Source IP addresses to allow SSH to this instance. | `list(any)` | `[]` | no |
| <a name="input_static_ip"></a> [static\_ip](#input\_static\_ip) | (optional) static describe your variable | `string` | `""` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | subnet\_id | `string` | `""` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | (optional) The user data to be passed to the instance. | `string` | `null` | no |
| <a name="input_user_data_base64"></a> [user\_data\_base64](#input\_user\_data\_base64) | (optional) user data in base64 format including gzip encoded data. | `string` | `null` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | vpc\_id | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_instance"></a> [ec2\_instance](#output\_ec2\_instance) | Returns the ec2 instance attributes |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
