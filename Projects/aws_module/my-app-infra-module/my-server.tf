resource "aws_instance" "my_app_instance" {
    ami = var.ami
    instance_type = var.instance-type
    tags = {
      Name = "${var.my-env}-demo-app-server"
    }
}