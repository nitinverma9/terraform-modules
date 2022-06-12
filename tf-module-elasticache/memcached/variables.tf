variable "cluster_id" {
  default = "default-memcached-cluster"
}

variable "engine_version" {
  default = "1.6.12"
  type    = string
}
variable "node_type" {
  default = "cache.t2.micro"
  type    = string
}

variable "num_cache_nodes" {
  default     = 3
  type        = number
  description = "Number of elasticache memcache nodes"
}

variable "parameter_group_family" {
  default = "memcached1.6"
  type    = string
}

variable "subnet_group_name" {
  default = "default-memcached-cluster-subnet-group"
  type    = string
}

variable "custom_parameter_group_values" {
  default = []
}

variable "subnet_group" {
  default = "memcached-default-subnet-group"
  type    = string
}

variable "vpc_subnet_ids" {
  default = []
  type    = list(string)
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
  type    = list(string)
}

variable "az_mode" {
  default = "single-az"
  type    = string
}

variable "maintenance_window" {
  default = "sun:00:00-sun:01:00"
  type    = string
}

variable "extra_tags" {
  default = {}
}
