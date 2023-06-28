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
| [aws_elasticache_cluster.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_cluster) | resource |
| [aws_elasticache_parameter_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_parameter_group) | resource |
| [aws_elasticache_subnet_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_subnet_group) | resource |
| [aws_security_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_az_mode"></a> [az\_mode](#input\_az\_mode) | n/a | `string` | `"single-az"` | no |
| <a name="input_cidr_blocks"></a> [cidr\_blocks](#input\_cidr\_blocks) | n/a | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_cluster_id"></a> [cluster\_id](#input\_cluster\_id) | n/a | `string` | `"default-memcached-cluster"` | no |
| <a name="input_custom_parameter_group_values"></a> [custom\_parameter\_group\_values](#input\_custom\_parameter\_group\_values) | n/a | `list` | `[]` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | n/a | `string` | `"1.6.12"` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | n/a | `map` | `{}` | no |
| <a name="input_maintenance_window"></a> [maintenance\_window](#input\_maintenance\_window) | n/a | `string` | `"sun:00:00-sun:01:00"` | no |
| <a name="input_node_type"></a> [node\_type](#input\_node\_type) | n/a | `string` | `"cache.t2.micro"` | no |
| <a name="input_num_cache_nodes"></a> [num\_cache\_nodes](#input\_num\_cache\_nodes) | Number of elasticache memcache nodes | `number` | `3` | no |
| <a name="input_parameter_group_family"></a> [parameter\_group\_family](#input\_parameter\_group\_family) | n/a | `string` | `"memcached1.6"` | no |
| <a name="input_subnet_group"></a> [subnet\_group](#input\_subnet\_group) | n/a | `string` | `"memcached-default-subnet-group"` | no |
| <a name="input_subnet_group_name"></a> [subnet\_group\_name](#input\_subnet\_group\_name) | n/a | `string` | `"default-memcached-cluster-subnet-group"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | n/a | `string` | `""` | no |
| <a name="input_vpc_subnet_ids"></a> [vpc\_subnet\_ids](#input\_vpc\_subnet\_ids) | n/a | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_memcached_cluster_address"></a> [memcached\_cluster\_address](#output\_memcached\_cluster\_address) | n/a |
| <a name="output_memcached_cluster_arn"></a> [memcached\_cluster\_arn](#output\_memcached\_cluster\_arn) | n/a |
| <a name="output_memcached_cluster_cachenodes"></a> [memcached\_cluster\_cachenodes](#output\_memcached\_cluster\_cachenodes) | n/a |
