variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "eu-west-1"
}
variable "AMIS" {
  type = "map"
  default = {
    us-east-1 ="ami-123"
    us-east-2 = "ami-987"
  }
}
variable "PRIVATE_PATH" {
  default = "mykey"
}
variable "PUBLIC_PATH" {
  default = "mykey.pub"
}
variable "AWS_USERNAME" {
  default = "ec2-user"
}
