module "memcached_main" {
  source                        = "./terraform-modules/tf-module-elasticache/memcached"
  cluster_id                    = "first-memcached-cluster"
  engine                        = "memcached"
  node_type                     = "cache.t2.micro"
  num_cache_nodes               = 3
  az_mode                       = "cross-az"
  extra_tags                    = { "purpose" = "test" }
  vpc_subnet_ids                = ["subnet-05ae24caaec952af9", "subnet-0316cd8a2564490de", "subnet-0ed13c5605a40b309"]
  cidr_blocks                   = ["172.31.0.0/16"]
  custom_parameter_group_values = [{ "name" : "chunk_size", "value" : "512" }, { "name" : "error_on_memory_exhausted", "value" : "1" }]
}
