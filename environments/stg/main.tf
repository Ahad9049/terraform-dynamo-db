module "dynamo-db" {
  source = "../../module/dynamo-db"
  table-name = var.table-name
  hash-key = var.hash-key
  range-key = var.range-key
  attribute-type = var.attribute-type
  billing-mode = var.billing-mode
  point-in-time-recovery = var.point-in-time-recovery
  tags = var.tags
}