resource "aws_s3_bucket" "demo-example-bucket" {
  bucket = "demo-example-bucket-11"
  tags = {
    Name        = "demo-example-bucket-11"
  }
}

resource "aws_s3_bucket" "my-state-bucket" {
  bucket = var.state-bucket-name
  tags = {
    Name        = var.state-bucket-name
  }
}