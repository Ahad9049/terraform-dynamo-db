provider "aws" {
  region = "us-east-1"
}

resource "aws_dynamodb_table" "order_table" {
  name           = "order-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "user_id"
  range_key = "order_id"

  attribute {
    name = "order_id"
    type = "S"
  }
  attribute {
    name = "user_id"
    type = "S"
  }
  attribute {
    name = "order_status"
    type = "S"
  }

  global_secondary_index {
    name = "order_status_index"
    hash_key = "order_status"
    projection_type = "ALL"
  }
  point_in_time_recovery {
    enabled = true
  }
  server_side_encryption {
    enabled = true
  }

  tags = {
  Name        = "order-table"
  Environment = "dev"
  project     = "dynamodb-automation"
}
}
