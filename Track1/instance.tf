resource "aws_key_pair" "mykey" {
  key_name="mykey"
  public_key="${file("${var.PUBLIC_PATH}")}"
}

resource "instance" "example" {
ami="${lookup(var.AMIS,var.AWS_REGION)}"
instance_type = "t2.micro"
key_name= "${aws_key_pair.mykey.key_name}"

provisioner "file" {
source="install.sh"
destination="/opt/install.sh"
}
provisioner "remote-exec" {
  inline=[
  "chmod +x /opt/install.sh",
  "sudo /opt/install.sh"
  ]
}
connection {
  user = "${var.AWS_USERNAME}"
  private_key="${file("${var.PRIVATE_PATH}")}"
}

}
