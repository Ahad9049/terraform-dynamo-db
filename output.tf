output "table-arn" {
  value = aws_dynamodb_table.order_table.arn
}
output "table-name" {
  value = aws_dynamodb_table.order_table.name

}