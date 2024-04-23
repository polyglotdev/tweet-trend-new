provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami             = "ami-022e1a32d3f742bd8"
  instance_type   = "t2.micro"
  key_name        = "dpp"
  security_groups = [aws_security_group.ssh_access.name]

  tags = {
    Name = "ExampleInstance"
  }
}

resource "aws_security_group" "ssh_access" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SSH Access"
  }
}
