resource "aws_s3_bucket" "my-app-bucket" {
  bucket = "${var.my-env}-demo-app-bucket"
  tags = {
    Name        = "${var.my-env}-demo-app-bucket"
  }
}