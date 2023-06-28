## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_organization.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organization) | resource |
| [aws_organizations_organizational_unit.toplevel_ou_names](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organizational_unit) | resource |
| [aws_organizations_policy.org_policies](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy) | resource |
| [aws_organizations_policy_attachment.awsfullaccess](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy_attachment) | resource |
| [aws_organizations_policy_attachment.root](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_service_access_principals"></a> [aws\_service\_access\_principals](#input\_aws\_service\_access\_principals) | List of AWS service principal names for which you want to enable integration with your organization. | `list` | <pre>[<br>  "cloudtrail.amazonaws.com",<br>  "config.amazonaws.com"<br>]</pre> | no |
| <a name="input_enabled_policy_types"></a> [enabled\_policy\_types](#input\_enabled\_policy\_types) | List of Organizations policy types to enable in the Organization Root | `list` | <pre>[<br>  "BACKUP_POLICY",<br>  "SERVICE_CONTROL_POLICY",<br>  "TAG_POLICY"<br>]</pre> | no |
| <a name="input_feature_set"></a> [feature\_set](#input\_feature\_set) | (Optional) Specify ALL (default) or CONSOLIDATED\_BILLING | `string` | `"ALL"` | no |
| <a name="input_policy_names"></a> [policy\_names](#input\_policy\_names) | Names of the OUs to create | `list` | `[]` | no |
| <a name="input_toplevel_ou_names"></a> [toplevel\_ou\_names](#input\_toplevel\_ou\_names) | Names of the Top level OUs to create | `list` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn_organisaton"></a> [arn\_organisaton](#output\_arn\_organisaton) | n/a |
| <a name="output_id_organisaton"></a> [id\_organisaton](#output\_id\_organisaton) | n/a |
