table-name = "order-table-prod"
hash-key = "order_id"
range-key = "user_id"
attribute-type = "S"
billing-mode = "PAY_PER_REQUEST"
point-in-time-recovery = true
tags = {
  "env" = "prod"
  "project" = "dynamodb-automation"
  
}