resource "aws_elasticache_cluster" "main" {
  cluster_id           = var.cluster_id
  engine               = var.engine
  engine_version       = var.engine_version
  node_type            = var.node_type
  num_cache_nodes      = var.num_cache_nodes
  parameter_group_name = aws_elasticache_parameter_group.main.id
  port                 = 11211
  az_mode              = var.az_mode
  maintenance_window   = var.maintenance_window
  security_group_ids   = [aws_security_group.main.id]
  subnet_group_name    = aws_elasticache_subnet_group.main.name
  tags = merge({
    managedby = "terraform"
  }, var.extra_tags)
}

resource "aws_elasticache_parameter_group" "main" {
  name   = "memcached-parameter-group"
  family = var.parameter_group_family

  dynamic "parameter" {
    for_each = length(var.custom_parameter_group_values) > 0 ? var.custom_parameter_group_values : []
    content {
      name  = parameter.value.name
      value = parameter.value.value
    }
  }
}

resource "aws_elasticache_subnet_group" "main" {
  name       = var.subnet_group_name
  subnet_ids = var.vpc_subnet_ids
}

resource "aws_security_group" "main" {
  name = "memcached_security_group"
  ingress {
    from_port   = 11211
    to_port     = 11211
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    "Name" = "memcached_security_group"
  }
}

# resource "aws_elasticache_security_group" "bar" {
#   name                 = "elasticache-security-group"
#   security_group_names = [aws_security_group.main.name]
# }
