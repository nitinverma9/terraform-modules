output "memcached_cluster_arn" {
  value = aws_elasticache_cluster.main.arn
}

output "memcached_cluster_address" {
  value = aws_elasticache_cluster.main.cluster_address
}

output "memcached_cluster_cachenodes" {
  value = aws_elasticache_cluster.main.cache_nodes
}
