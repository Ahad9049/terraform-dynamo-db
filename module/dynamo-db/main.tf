

resource "aws_dynamodb_table" "order_table" {
  name         = var.table-name
  billing_mode = var.billing-mode
  hash_key     = var.hash-key
  range_key    = var.range-key

  attribute {
    name = var.range-key
    type = var.attribute-type
  }
  attribute {
    name = var.hash-key
    type = var.attribute-type
  }
  attribute {
    name = "order_status"
    type = "S"
  }

  global_secondary_index {
    name            = "order_status_index"
    hash_key        = "order_status"
    projection_type = "ALL"
  }
  ttl {
    attribute_name = "ttl"
    enabled        = true
  }
  point_in_time_recovery {
    enabled = var.point-in-time-recovery
  }
  server_side_encryption {
    enabled = var.server-side-encryption
  }

  tags = var.tags
}
resource "aws_dynamodb_table_item" "order_table_item" {
  table_name = aws_dynamodb_table.order_table.name
  hash_key   = var.hash-key
  range_key  = var.range-key

  item = jsonencode({
    user_id      = { "S" : "user123" }
    order_id     = { "S" : "order456" }
    order_status = { "S" : "pending" }
    ttl          = { "N" : "1700000000" }

  })
}