# provider "aws" {
#   region = "us-east-1"

# }

# variable "dpp-ec2-instance" {
#   description = "dpp-ec2-instance"
#   type        = string
#   default     = "dpp"
# }

# resource "aws_instance" "demo-server" {
#   ami           = "ami-022e1a32d3f742bd8"
#   instance_type = "t2.micro"
#   key_name      = "dpp"
#   tags = {
#     Name = var.dpp-ec2-instance
#   }
# }