variable "ami" {
    default = "ami-0fa1ca9559f1892ec"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "instance_name" {
  default = "batch3-demo-ec2"
}
variable "state-table-name" {
  default = "demo-state-table"
}
variable "state-bucket-name" {
  default = "demo-state-bucket-12"
}