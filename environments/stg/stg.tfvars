table-name = "order-table-stg"
hash-key = "order_id"
range-key = "user_id"
attribute-type = "S"
billing-mode = "PAY_PER_REQUEST"
point-in-time-recovery = true
tags = {
  "env" = "stg"
  "project" = "dynamodb-automation"
  
}