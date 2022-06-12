variable "cluster_id_or_name" {
  default = "default-memcached-cluster"
}

variable "elasticache_engine" {
  default = "memcached"
  type    = string
}

variable "cluster_id_or_name" {
  default = "default-memcached-cluster"
}

variable "elasticache_node_type" {
  default = ""
  type    = string
}

variable "number_of_nodes" {
  default = 3
  type    = number
}

variable "cluster_id_or_name" {
  default = "default-memcached-cluster"
}

variable "parameter_group_family" {
  default = "memcached"
  type    = string
}
