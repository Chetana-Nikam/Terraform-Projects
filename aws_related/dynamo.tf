resource "aws_dynamodb_table" "my-state-table" {
  name = var.state-table-name
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = "dynamodb-remote-backend-table"
  }
}