resource "aws_dynamodb_table" "my-app-table" {
  name = "${var.my-env}-demo-app-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "userID"
  attribute {
    name = "userID"
    type = "S"
  }
  tags = {
    Name = "${var.my-env}-demo-app-table"
  }
}