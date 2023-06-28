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
| [aws_dynamodb_table.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attributes"></a> [attributes](#input\_attributes) | n/a | `list` | `[]` | no |
| <a name="input_billing_mode"></a> [billing\_mode](#input\_billing\_mode) | n/a | `string` | `"PROVISIONED"` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | n/a | `map` | `{}` | no |
| <a name="input_gsi_attributes"></a> [gsi\_attributes](#input\_gsi\_attributes) | n/a | `list` | `[]` | no |
| <a name="input_gsi_hash_key"></a> [gsi\_hash\_key](#input\_gsi\_hash\_key) | n/a | `string` | `""` | no |
| <a name="input_gsi_name"></a> [gsi\_name](#input\_gsi\_name) | n/a | `string` | `"default_gsi"` | no |
| <a name="input_gsi_range_key"></a> [gsi\_range\_key](#input\_gsi\_range\_key) | n/a | `string` | `""` | no |
| <a name="input_gsi_read_capacity"></a> [gsi\_read\_capacity](#input\_gsi\_read\_capacity) | n/a | `number` | `2` | no |
| <a name="input_gsi_write_capacity"></a> [gsi\_write\_capacity](#input\_gsi\_write\_capacity) | n/a | `number` | `1` | no |
| <a name="input_lsi_attributes"></a> [lsi\_attributes](#input\_lsi\_attributes) | n/a | `list` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | `"default_table"` | no |
| <a name="input_primary_key"></a> [primary\_key](#input\_primary\_key) | n/a | `string` | `""` | no |
| <a name="input_read_capacity"></a> [read\_capacity](#input\_read\_capacity) | n/a | `number` | `2` | no |
| <a name="input_server_side_encryption_enabled"></a> [server\_side\_encryption\_enabled](#input\_server\_side\_encryption\_enabled) | n/a | `list` | <pre>[<br>  false,<br>  ""<br>]</pre> | no |
| <a name="input_sort_key"></a> [sort\_key](#input\_sort\_key) | n/a | `string` | `""` | no |
| <a name="input_write_capacity"></a> [write\_capacity](#input\_write\_capacity) | n/a | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_table_arn"></a> [table\_arn](#output\_table\_arn) | n/a |
