provider "aws" {
region = "us-east-1"
version = "v2.70.0"
}
resource "aws_instance" "myec2" {
ami = "ami-0022f774911c1d690"
instance_type = "t2.micro"
availability_zone = "us-east-1a"
key_name = "tkey"
tags = {
  Name = "myec2"
}
}  
output "publicip" {
  value = "aws_instance.myec2.public_ip"
}
