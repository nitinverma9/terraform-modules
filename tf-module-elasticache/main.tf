resource "aws_elasticache_cluster" "main" {
  count                = var.elasticache_node_type = 'memcached' ? 1 : 0
  cluster_id           = var.cluster_id_or_name
  engine               = var.elasticache_engine
  node_type            = var.elasticache_node_type
  num_cache_nodes      = var.number_of_nodes
  parameter_group_name = aws_elasticache_parameter_group.main.id
  port                 = 11211
}

resource "aws_elasticache_parameter_group" "main" {
  count = var.elasticache_node_type = 'memcached' ? 1 : 0
  name   = "memcached-parameter-group"
  family = var.parameter_group_family

 dynamic "parameter" {
   for_each = length(var.custome_parameter_group_values) > 0 ? var.custome_parameter_group_values : []
   content {
     name  = parameter.value.name
     value = parameter.value.value
   }
  }
}
