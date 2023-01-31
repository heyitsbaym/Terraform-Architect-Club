provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  instance_type = var.instance_type
  ami           = var.ami_id
  # vpc_security_group_ids = [aws_security_group.web-sg.id]
  tags = {
    Name = "${var.environment}-instance"
  }
}

# resource "aws_security_group" "web-sg" {
#   name = "${var.environment}-sg"
#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

