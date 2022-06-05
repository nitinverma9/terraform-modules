resource "aws_dynamodb_table" "main" {
  name           = var.name
  billing_mode   = var.billing_mode
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.primary_key
  range_key      = var.sort_key


  dynamic "attribute" {
    for_each = var.attributes
    content {
      name = attribute.value.name
      type = attribute.value.type
    }
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  dynamic "global_secondary_index" {
    for_each = length(var.gsi_attributes) > 0 ? var.gsi_attributes : []
    content {
      name            = global_secondary_index.value.name
      hash_key        = global_secondary_index.value.hash_key
      range_key       = global_secondary_index.value.range_key
      write_capacity  = global_secondary_index.value.write_capacity
      read_capacity   = global_secondary_index.value.read_capacity
      projection_type = "ALL"
    }
  }

  dynamic "local_secondary_index" {
    for_each = length(var.lsi_attributes) > 0 ? var.lsi_attributes : []
    content {
      name            = local_secondary_index.value.name
      range_key       = local_secondary_index.value.range_key
      projection_type = "ALL"
    }
  }

  server_side_encryption {
    enabled     = var.server_side_encryption_enabled[0]
    kms_key_arn = var.server_side_encryption_enabled[1]
  }

  tags = merge({
    managedby = "terraform"
  }, var.extra_tags)
}
