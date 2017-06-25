Terraform {
  backend "s3" {
    bucket = "newbucket"
    key= "Terraform/demo"
  }
}
