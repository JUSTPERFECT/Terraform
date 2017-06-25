variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
default="us-east-1"
}

variable "AMIS" {
type ="map"
default = {
eu-east-1="ami-123"
eu-west-1="ami-987"
}
}
