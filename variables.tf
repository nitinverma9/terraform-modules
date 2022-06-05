variable "name" {
  default = "default_table"
}

variable "gsi_name" {
  default = "default_gsi"
}

variable "billing_mode" {
  default = "PROVISIONED"
}

variable "read_capacity" {
  default = 2
}

variable "write_capacity" {
  default = 1
}

variable "primary_key" {
  default = ""
}

variable "sort_key" {
  default = ""
}

variable "attributes" {
  default = []
}

variable "gsi_attributes" {
  default = []
}

variable "lsi_attributes" {
  default = []
}

variable "gsi_hash_key" {
  default = ""
}

variable "gsi_range_key" {
  default = ""
}

variable "gsi_write_capacity" {
  default = 1
}

variable "gsi_read_capacity" {
  default = 2
}

variable "server_side_encryption_enabled" {
  default = [false, ""]
}

variable "extra_tags" {
  default = {}
}
