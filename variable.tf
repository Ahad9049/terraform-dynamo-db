variable "table-name" {
  type    = string
  default = "order-table"
}
variable "billing-mode" {
  type    = string
  default = "PAY_PER_REQUEST"
}
variable "hash-key" {
  type    = string
  default = "user_id"
}
variable "range-key" {
  type    = string
  default = "order_id"
}
variable "attribute-type" {
  type    = string
  default = "S"
}
variable "point-in-time-recovery" {
  type    = bool
  default = true
}
variable "server-side-encryption" {
  type    = bool
  default = true

}
variable "tags" {
  type = map(string)
  default = {
    Name        = "order-table"
    Environment = "dev"
    project     = "dynamodb-automation"
  }
}