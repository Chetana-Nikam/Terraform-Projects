#backend variables
variable "state-table-name" {
  default = "my-demo-app-state-table"
}
variable "state-bucket-name" {
  default = "my-demo-app-state-bucket"
}

#backend resources
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

resource "aws_s3_bucket" "my-state-bucket" {
  bucket = var.state-bucket-name
  tags = {
    Name        = var.state-bucket-name
  }
}