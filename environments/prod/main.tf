module "dynamo-db" {
  source = "../../module/dynamo-db"
  table-name = var.table-name
  billing-mode = var.billing-mode
  hash-key = var.hash-key
  range-key = var.range-key
  attribute-type = var.attribute-type
  point-in-time-recovery = var.point-in-time-recovery
  server-side-encryption = var.server-side-encryption
  tags = var.tags
}